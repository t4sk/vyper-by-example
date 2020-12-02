# @version ^0.2.0

"""
- send Ether from contract to another address
- send
"""

# Ether is transfered from EOA -> this contract -> to address
@external
@payable
def sendEther(to: address):
    # calls __default__ when Ether sent to contract
    # forwards 2300 gas
    send(to, msg.value)

