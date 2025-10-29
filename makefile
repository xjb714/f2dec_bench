
BENCH_DOUBLE = 1 # 0 : float, 1 : double 

# all:
# 	icpx -O3 -march=native main.cpp -o main
# 	#icpx -O3 -march=native -S main.cpp -o main.s
# 	./main
#x86-64 compilers
g:
	g++ -O3 -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_gcc
	./main_gcc
i:
	icpx -O3 -march=native main.cpp  -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_icpx
	./main_icpx
c:#clang with all instruction sets,generate AVX512 code on x86-64 AMD zen4
	clang++ -O3  -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_clang
	./main_clang
c1:#clang without AVX512, generate AVX2 code on x86-64 AMD zen4
	clang++ -O3  -march=native main.cpp -mno-avx512f -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_clang
	./main_clang
c2:#clang without AVX512 and AVX2, generate normal code on x86-64 AMD zen4
	clang++ -O3  -march=native main.cpp -mno-avx512f -mno-avx2 -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_clang
	./main_clang

c2s:#clang without AVX512 and AVX2, generate normal code on x86-64 AMD zen4, save assembly
	clang++ -O3  -march=native main.cpp -mno-avx512f -mno-avx2 -DBENCH_DOUBLE=$(BENCH_DOUBLE) -S -o main_clang.s

gs:#gcc without AVX512 and AVX2
	g++ -O3  -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -S -o main_gcc.s

is:#icpx without AVX512 and AVX2
	icpx -O3  -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -S -o main_icpx.s
#apple M1 : please use " make c "

#all compilers
a:
	g++ -O3 -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_gcc
	icpx -O3 -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_icpx
	clang++ -O3 -march=native main.cpp -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_clang

double:
	$(MAKE) clean
	$(MAKE) a BENCH_DOUBLE=1
float:
	$(MAKE) clean
	$(MAKE) a BENCH_DOUBLE=0
clean:
	rm -f main main_gcc main_clang main_icpx *.s