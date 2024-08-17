test() {
    gcc -Wall -Wextra -Werror -pedantic -g -llibrelib test.c -o test
}

test2() {
    gcc -fno-stack-protector -ffreestanding -nostdlib -g -llibrelib test2.c -o test2
}

"$@"
