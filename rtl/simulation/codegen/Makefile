main.dmp: tests.elf
	riscv64-unknown-elf-elf2hex --bit-width 32 --input tests.elf --output testshex.txt
	riscv64-unknown-elf-objdump -d tests.elf > tests.dmp
	mv testshex.txt tests.dmp ../
tests.elf: main.c lscript bootstrap.s
	riscv64-unknown-elf-gcc -O0 -Wall -nostdlib -march=rv32imav -mabi=ilp32 -T lscript bootstrap.s main.c -o tests.elf
clean:
	rm tests.elf tests.dmp testshex.txt
	rm ../tests.dmp
	rm ../testshex.txt

