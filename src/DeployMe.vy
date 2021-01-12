# @version 0.2

owner: public(address)
name: public(String[100])

@external
def __init__():
  self.owner = msg.sender
  self.name = "Foo bar"