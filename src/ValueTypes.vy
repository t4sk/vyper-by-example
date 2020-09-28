# @version ^0.2.0

b: public(bool)
i: public(int128) # -2 ** 127 to (2 ** 127 - 1)
u: public(uint256) # 0 to 2 ** 256 - 1
d: public(decimal) # -2 ** 127 to (2 ** 127 - 1), 10 decimal places
addr: public(address)
b32: public(bytes32)

@external
def __init__():
    self.b = True
    self.i = -1
    self.u = 123
    self.d = 3.14
    self.addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    self.b32 = 0xada1b75f8ae9a65dcc16f95678ac203030505c6b465c8206e26ae84b525cdacb
