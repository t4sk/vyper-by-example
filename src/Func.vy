# @version ^0.2.0

# visibility (internal or external)
# mutability (pure, view, nonpayable, payable)
# multipe outputs
# __init__

num: public(uint256)
message: public(String[10])
value: public(uint256)
owner: public(address)

@external
@payable
def __init__():
    self.owner = msg.sender
    self.value = msg.value
    self.message = "Hello"

# visibility (internal or external)
@internal
@pure
def _intFunc(x: uint256, y: uint256) -> (uint256, bool):
    # cannot call external function inside an internal function
    # extFunc(1)
    return (x + y, True)

@external
@view
def extFunc(x: uint256) -> uint256:
    i: uint256 = 1
    b: bool = False

    # calling internal func
    # capturing outputs with tupple assignments
    (i, b) = self._intFunc(1, 2)

    return x * x

# mutability (pure, view, nonpayable, payable)
@external
@pure
def pureFunc(x: uint256) -> bool:
    return x > 2

@external
@view
def viewFunc(x: uint256) -> uint256:
    return x + self.num

@external
def writeSomething(_message: String[10]):
    self.message = _message

@external
@payable
def receiveEther():
    self.value = msg.value

