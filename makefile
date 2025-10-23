
BENCH_DOUBLE = 1 # 0 : float, 1 : double 

# all:
# 	icpx -O3 -march=native main.cpp -o main
# 	#icpx -O3 -march=native -S main.cpp -o main.s
# 	./main

g:
	g++ -O3 -march=native main.cpp -mno-avx512f -mno-avx -mno-avx2 -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_gcc
	./main_gcc
i:
	icpx -O3 -march=native main.cpp -mno-avx512f -mno-avx -mno-avx2 -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_icpx
	./main_icpx
c:
	clang++ -O3  -march=native main.cpp -mno-avx512f -mno-avx -mno-avx2 -DBENCH_DOUBLE=$(BENCH_DOUBLE) -o main_clang
	./main_clang


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