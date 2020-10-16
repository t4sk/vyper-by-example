# @version ^0.2.0

# visibility
# mutability
# multipe outputs
# re-entrancy

@internal
def _intFunc(x: uint256, y: uint256) -> (uint256, bool):
    # cannot call external function inside an internal function
    # extFunc(1)
    return (x + y, True)

@external
def extFunc(x: uint256) -> uint256:
    i: uint256 = 1
    b: bool = False

    # calling internal func
    # capturing outputs with tupple assignments
    (i, b) = self._intFunc(1, 2)

    return x * x
