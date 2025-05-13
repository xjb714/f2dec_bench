all:
	icpx -O3 main.cpp -o main

g:
	g++ -O3 main.cpp -o main_gcc

i:
	icpx -O3 main.cpp -o main_icpx

c:
	clang++ -O3 main.cpp -o main_clang

a:
	g++ -O3 main.cpp -o main_gcc
	icpx -O3 main.cpp -o main_icpx
	clang++ -O3 main.cpp -o main_clang