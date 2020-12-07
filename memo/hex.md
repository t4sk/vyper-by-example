# 0x0400 = 1024

# bytes32 = uint256

# 1 bit = 0 or 1

how many numbers can 1 `bit` represent?

2 (0 or 1)

# 1 byte = 8 bits

```
00000000
10000110
11111111
```

how many numbers can 1 `byte` represent?

- how many numbers can 2 `bits` represent?

```
00
01
10
11

4
```

- how many numbers can 3 `bits` represent?

```
0xx
1xx

  number of 2 bit representations with leading 0
+ number of 2 bit representations with leading 1
_-----------------------------------------------
= 2 * number of 2 bit representations
= 2 * 4
= 8
```

- how many numbers can 4 `bits` represent?

```
0xxx
1xxx

= 2 * number of 3 bit representations
= 2 * 8
= 16
```

- how many numbers can 8 `bits` represent?

```
= 2 ** 8
= 256
```

1 `byte` can represent 2 ** 8 numbers [0, ..., 2 ** 8 - 1]

- how to convert 8 bits to numbers?

```
10011101
= 2 ** 7 + 2 ** 4 + 2 ** 3 + 2 ** 2 + 2 ** 0
= 157
```

# hex

0 -> 0
1 -> 1
...
9 -> 9
10 -> A
11 -> B
...
15 -> F

```
0xFFF = 15 * 16 ** 2 + 15 * 16 ** 1 + 15 * 16 ** 0
      = 4095

0x3E04 = 3 * 16 ** 3 + 14 * 16 ** 2 + 4 * 16 ** 0
       = 15876
```

# hex = 4 bits

- why?

```
hex = [0 ... 15]
    = 16 numbers
    = 2 ** 4 numbers
    = can be represented by 4 bits

0xC = 12 = 1100
```

# 1 byte = 2 hex

```
1 byte = 8 bits
       = 2 * (4 bits)
       = 2 hex

11101001 = (2 ** 7 + 2 ** 6 + 2 ** 5) + (2 ** 3 + 2 ** 0)
         = (2 ** 3 + 2 ** 2 + 2 ** 1) * 2 ** 4 + (2 ** 3 + 2 ** 0)
         = (2 ** 3 + 2 ** 2 + 2 ** 1) * 16 ** 1 + (2 ** 3 + 2 ** 0) * 16 ** 0
         = (          14            ) * 16 ** 1 + (       9       ) * 16 ** 0
         = (          E             ) * 16 ** 1 + (       9       ) * 16 ** 0
         =            E                                   F
         = EF
```

# 0x0400 = 1024

```
0x0400 = 4 * 16  ** 2
       = 1024
```

# bytes32 = uint256

```
bytes32 = 32 bytes
        = 32 * (2 hex)
        = 64 hex
        = 64 * (4 bits)
        = 256 bits
        = uint256
```
