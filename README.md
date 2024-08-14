# librelib
Freestanding C library

## TODO:
### Left bit shifting
- [x] `__ashlsi3`
- [x] `__ashldi3`
- [x] `__ashlti3`

### Arithmetic right bit shifting
- [x] `__ashrsi3`
- [x] `__ashrdi3`
- [x] `__ashrti3`

### Quotient of the signed division
- [ ] `__divsi3`
- [ ] `__divdi3`
- [ ] `__divti3`

### Logical right bit shifting
- [x] `__lshrsi3`
- [x] `__lshrdi3`
- [x] `__lshrti3`

### Remainder of the signed division
- [ ] `__modsi3`
- [ ] `__moddi3`
- [ ] `__modti3`

### Multiplication
- [ ] `__mulsi3`
- [ ] `__muldi3`
- [ ] `__multi3`

### Negation of *a*
- [ ] `__negdi2`
- [ ] `__negti2`

### Quotient of the unsigned division
- [ ] `__udivsi3`
- [ ] `__udivdi3`
- [ ] `__udivti3`

### Both the quotient and remainder of the unsigned division
- [ ] `__udivmoddi4`
- [ ] `__udivmodti4`

### Remainder of the unsigned division
- [ ] `__umodsi3`
- [ ] `__umoddi3`
- [ ] `__umodti3`

### Other
- [ ] Verify arithmetic and logical right byte shifting functions
- [ ] Verify that functions for multiplication and division are called from freelibc libraries

GCC says that functions are automatically called when needed so guards to check for hardware support are not needed.
