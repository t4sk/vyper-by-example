# @version ^0.2.0

struct Person:
    name: String[100]
    age: uint256

# fixed sized list
nums: public(uint256[10]) # must be bounded
myMap: public(HashMap[address, uint256])
person: public(Person)

@external
def __init__():
    self.nums[5] = 123
    self.myMap[msg.sender] = 456
    self.person.name = "Vyper"

    # Does not modify referenced variable (self.nums)
    arr: uint256[10] = self.nums
    arr[0] = 123

    # Does not compile. Hash map cannot be local variable
    # my: HashMap[address, uint256] = self.myMap

    # Does not modify referenced variable (self.person)
    p: Person = self.person
    p.name = "Solidity"
