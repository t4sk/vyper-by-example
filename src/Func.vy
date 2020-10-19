# @version ^0.2.0

# basic example
# visibility (who can call this function?)
# mutability (does it write to the blockchain?)

num: public(uint256)
message: public(String[10])
value: public(uint256)
owner: public(address)

# basic example
@external
@pure
def simple(x: uint256, b: bool, s: String[10]) -> (uint256, bool, String[100]):
    return (x + 1, not b, concat(s, "!"))

# visibility - who can call this function?
# internal or external

# can only be called inside this contract
@internal
@pure
def _intFunc(x: uint256, y: uint256) -> (uint256, bool):
    # cannot call external function inside an internal function
    # extFunc(1)
    return (x + y, True)

# can only be called from outside this contract
@external
@view
def extFunc(x: uint256) -> uint256:
    i: uint256 = 1
    b: bool = False

    # calling internal func
    # capturing outputs with tupple assignments
    (i, b) = self._intFunc(1, 2)

    return x * x

# mutability - does it write to the blockchain?
# pure, view, nonpayable, payable

# read only, does not read state and environment variables
@external
@pure
def pureFunc(x: uint256) -> bool:
    return x > 2

# read only, reads from state or environment variables
@external
@view
def viewFunc(x: uint256) -> uint256:
    return x + self.num

# write
@external
def writeSomething(_message: String[10]):
    self.message = _message

# can accept Ether
@external
@payable
def receiveEther():
    self.value = msg.value

