# @version ^0.2.0

interface Receiver:
    def getBalance() -> uint256: view
    def callMe(message: String[10]) -> uint256: nonpayable
    def pay(): payable
    def doesNotExist(): nonpayable

event Log:
    num: uint256

@external
@view
def getBalanceOfReceiver(receiver: address) -> uint256:
    return Receiver(receiver).getBalance()

@external
def callReceiver(receiver: address, message: String[10]):
    num: uint256 = Receiver(receiver).callMe(message)
    log Log(num)

# transfer ETH from EOA -> this contract -> Receiver contract
@external
@payable
def payReceiver(receiver: address):
    Receiver(receiver).pay(value=msg.value)

@external
def callDoesNotExist(receiver: address):
    # this will call Receiver.__default__
    Receiver(receiver).doesNotExist()
