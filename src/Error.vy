# @version ^0.2.0

# assert and raise
# state changes are reverted
# error bubbles up
# UNREACHABLE

x: public(String[10])
owner: public(address)

@external
def __init__():
    self.owner = msg.sender

# assert and raise
# state changes are reverted
@internal
def _setX(sender: address, _x: String[10]):
    assert sender == self.owner, "not owner"
    # same as assert
    # if sender != self.owner:
    #     raise "not owner"
    self.x = _x

@external
def setX(_x: String[10]):
    self._setX(msg.sender, _x)

# error bubbles up
@external
def setXtoFoo():
    self._setX(msg.sender, "Bar")
    # this code will not be executed if the code above fails
    self.x = "Foo"

# UNREACHABLE uses all gas
@external
def unreachable():
    raise UNREACHABLE
