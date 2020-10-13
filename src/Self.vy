# @version ^0.2.0

num: public(uint256)
message: public(String[10])
myMap: public(HashMap[address, bool])
myArray: public(uint256[10])

# never use balance for state variable

@external
def __init__():
    # local and state variables #
    # state variables (stored on the blockchain)
    self.num = 1
    self.message = "Hello"
    self.myMap[msg.sender] = True
    self.myMap[self] = True
    self.myArray[5] = 5

    # local variables (accessible while this function is executing)
    tmp: uint256 = 123
    localArray: uint256[3] = [1, 2, 3]
    boo: bool = True

    # shadowing state variable
    # this will not compile
    # num: uint256 = 1
    # message: String[10] = "abc"

    # reserved state variable
    # this will not compile
    # balance: uint256 = self.balance
    bal: uint256 = self.balance
