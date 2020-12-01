# @version ^0.2.0

interface Receiver:
    def callMe(message: String[10]) -> uint256: nonpayable
    def getBalance() -> uint256: view
    def pay(): payable

event Log:
    num: uint256

@external
def callReceiver(receiver: address, message: String[10]):
    num: uint256 = Receiver(receiver).callMe(message)
    log Log(num)

@external
@view
def getBalanceOfReceiver(receiver: address) -> uint256:
    return Receiver(receiver).getBalance()

# transfer ETH from EOA -> this contract -> Receiver contract
@external
@payable
def payReceiver(receiver: address):
    Receiver(receiver).pay(value=msg.value)