all:
	icpx -O3 -march=native main.cpp -o main
	icpx -O3 -march=native -S main.cpp -o main.s
	./main
g:
	g++ -O3 -march=native main.cpp -o main_gcc
	g++ -O3 -march=native -S main.cpp -o main_gcc.s
	./main_gcc
i:
	icpx -O3 -march=native main.cpp -o main_icpx
	./main_icpx

c:
	clang++ -O3  -march=native main.cpp -o main_clang
	clang++ -O3  -march=native -S main.cpp -o main_clang.s
	./main_clang
a:
	g++ -O3 main.cpp -o main_gcc
	icpx -O3 main.cpp -o main_icpx
	clang++ -O3 main.cpp -o main_clang