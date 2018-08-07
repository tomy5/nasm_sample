hello.o : hello.asm
	nasm -f elf64 hello.asm -o obj/hello.o
hello : hello.o
	gcc -nostartfiles -no-pie -o bin/hello obj/hello.o
	# ld -s -o hello hello.o
run :
	bin/hello
