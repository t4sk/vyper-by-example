# @version ^0.2.0

"""
- send Ether from EOA to contract
    - __default__
    - @payable
    - msg.sender, msg.value, self.balance, msg.gas
"""

event Payment:
    sender: indexed(address)
    amount: uint256
    bal: uint256
    gasLeft: uint256

# executed when
# - non-existing function is called
# - or if function was not supplied (such as sending Ether)
# no input, no output
@external
@payable
def __default__():
    log Payment(msg.sender, msg.value, self.balance, msg.gas)


@external
@view
def getBalance() -> uint256:
    return self.balance

