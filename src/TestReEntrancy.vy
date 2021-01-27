# @version ^0.2.0

interface ReEntrancyLock:
    def callMe(): nonpayable
    def callMe2(): nonpayable

i: public(uint256)
target: address

@external
def __init__(_target: address):
    self.target = _target

@external
def __default__():
    if self.i < 1:
        self.i += 1
        # ReEntrancyLock(self.target).callMe()
        ReEntrancyLock(self.target).callMe2()

@external
def testReEntranceyLock():
    self.i = 0
    ReEntrancyLock(self.target).callMe()
