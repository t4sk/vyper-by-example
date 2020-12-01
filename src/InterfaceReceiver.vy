# @version ^0.2.0

"""
interface
- call other functions (nonpayable and view)
- call other functions and send Ether
"""

event Log:
    sender: indexed(address)
    message: String[10]

event Payment:
    sender: indexed(address)
    amount: uint256

@external
def callMe(message: String[10]) -> uint256:
    log Log(msg.sender, message)
    return 123

@external
@view
def getBalance() -> uint256:
    return self.balance

@external
@payable
def pay():
    log Payment(msg.sender, msg.value)