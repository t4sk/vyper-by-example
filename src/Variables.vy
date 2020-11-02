# @version ^0.2.0

"""
- state variables
    - public and private
- name shadowing
- constants
    - built in
        - ZERO_ADDRESS
        - MAX_UINT256
    - custom
- environment variables
    - self.balance
    - msg.sender
    - msg.value
    - block.number
    - block.timestamp
    - tx.origin
"""

# state variables are stored on the blockchain
num: public(uint256)
# private variable
# never store sensitive data on blockchain
password: String[20]

MY_CONSTANT: constant(uint256) = 123

@external
def __init__():
    self.num = 1

    # local variables are not stored to the blockchain
    tmp: uint256 = 123

    self.password = "password123"

### name shadowing ###

# this will not compile
# @external
# def setNum(num: uint256):
#     self.num = num

# this will also not compile
# @external
# def setNum(x: uint256):
#     num: uint256 = x + 1
#     self.num = num

# @external
# @view
# def dontDoThis() -> uint256:
#     balance: uint256 = 1
#     return balance


@external
@pure
def getBuiltInConstants() -> (address, uint256):
    # MAX_UINT256 = 2 ** 256 - 1
    return (ZERO_ADDRESS, MAX_UINT256)

## environment variables ##

# msg.sender and tx.origin
# A - calls -> B - calls -> C
#                           |
#                           msg.sender = B
#                           tx.origin = A

@external
@payable
def returnEnvironmentVars() -> (uint256, address, uint256, uint256, uint256, address):
    return (
        self.balance,
        msg.sender,
        msg.value,
        block.number,
        block.timestamp,
        tx.origin
    )
