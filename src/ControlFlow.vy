# @version ^0.2.0

# if else
# for loop
# break, continue, pass

nums: public(uint256[5])

@external
def __init__():
    self.nums[0] = 1
    self.nums[1] = 2
    self.nums[2] = 3

@external
@pure
def ifElse(i: uint256) -> uint256:
    if i < 10:
        return 0
    elif i < 20:
        return 1
    else:
        return 2

# must be bounded at compile time
# loop array literal
# loop state variables
# loop range
@external
@view
def forLoop() -> (uint256, uint256, uint256):
    x: uint256 = 1
    for i in [1,2,3]:
        x += convert(i, uint256)

    for i in self.nums:
        x += i

    y: uint256 = 0
    for i in range(10):
        y += 1

    z: uint256 = 0
    for i in range(1, 10):
        z = convert(i, uint256)

    return (x, y, z)

@external
@pure
def continueAndBreak() -> (uint256):
    x: uint256 = 0
    for i in [1,2,3,4,5]:
        if i < 3:
            continue
        if i == 4:
            break
        x = convert(i, uint256)
    return x

@external
def blank():
    pass