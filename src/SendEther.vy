# @version ^0.2.0

"""
- send Ether from contract to another address
- send
- call (another video)
- @payable
- send (2300 gas limit)
"""
# Ether is transfered from EOA -> this contract -> to address
@external
@payable
def sendEther(to: address, amount: uint256):
    assert self.balance >= amount, "balance < amount"
    # TODO what happens if you send to non-payable __default__?
    # send to EOA
    # send to contract
    send(to, amount)

@external
@view
def getBalance() -> uint256:
    return self.balance

