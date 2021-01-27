# @version ^0.2.0

# Re-entrancy lock
# hand craft a re-entrancy lock
# examples of built in @nonreentrant

event Log:
    message: String[100]

# hand crafted nonreentrant lock
locked: bool

@external
def func():
    assert not self.locked, "locked"
    self.locked = True
    # do stuff here
    # call external contract, for example do raw_call
    raw_call(msg.sender, b"", value=0)
    self.locked = False

# nonreentrant
@external
@nonreentrant("lock")
def callMe():
    log Log("HERE")
    # call back msg.sender
    raw_call(msg.sender, b"", value=0)

@external
@nonreentrant("lock-2")
def callMe2():
    log Log("HERE HERE")
    # call back msg.sender
    raw_call(msg.sender, b"", value=0)