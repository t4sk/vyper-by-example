# @version 0.2

owner: public(address)
name: public(String[100])

# __init__ is not called when deployed from create_forwarder_to
@external
def __init__():
  self.owner = msg.sender
  self.name = "Foo bar"

# call once after create_forwarder_to
@external
def setup(_name: String[100]):
  assert self.owner == ZERO_ADDRESS, "owner != zero address"
  self.owner = msg.sender
  self.name = _name

# DANGER: never have selfdestruct in original contract used by create_forwarder_to
@external
def kill():
  selfdestruct(msg.sender)