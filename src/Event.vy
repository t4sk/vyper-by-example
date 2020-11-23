# @version ^0.2.2

"""
Events
- examples
    - user interface
    - cheap storage (cannot access inside smart contract)
"""

event Transfer:
    sender: indexed(address)
    receiver: indexed(address)
    value: uint256

# up to 3 indexed arguments
event Foo:
    addr: indexed(address)
    x: indexed(uint256)
    y: indexed(uint256)
    z: uint256

event Authorized:
    addr: indexed(address)
    authorized: bool

authorized: public(HashMap[address, bool])

@external
def __init__():
    self.authorized[msg.sender] = True
    log Authorized(msg.sender, True)

@external
def transfer(to: address, amount: uint256):
    # transfer logic here...
    log Transfer(msg.sender, to, amount)

@external
def foo():
    x: uint256 = 1
    y: uint256 = 2
    z: uint256 = 3
    log Foo(msg.sender, x, y, z)

### example of cheap storage ###
@external
def grantAuthorization(addr: address):
    assert self.authorized[msg.sender], "!authorized"
    self.authorized[addr] = True
    log Authorized(addr, True)

@external
def revokeAuthorization(addr: address):
    assert self.authorized[msg.sender], "!authorized"
    self.authorized[addr] = False
    log Authorized(addr, False)