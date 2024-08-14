long __ashrdi3(long a, long b) {
    long result = a;

    result /= (1 << b);
    if (a < 0 && a % (1 << b) != 0) {
        result -= 1;
    }

    return result;
}
