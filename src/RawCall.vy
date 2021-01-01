# @version ^0.2

"""
basic
error handling
single uint output
dynamic array input
dynamic array output
"""

event Log:
    message: String[100]
    val: uint256

@external
def callTest(test: address, x: uint256, y: uint256) -> Bytes[128]:
    res: Bytes[128] = raw_call(
        test,
        concat(
            method_id("test(uint256,uint256,uint256[])"),
            convert(x, bytes32),
            convert(y, bytes32),
            convert(96, bytes32), # offset, 3 func args * 32 = 96
            convert(2, bytes32),  # length of uint256[]
            convert(88, bytes32), # uint256[0]
            convert(99, bytes32)  # uint256[1]
        ),
        max_outsize=128
    )

    offset: uint256 = extract32(res, 0, output_type=uint256)
    l: uint256 = extract32(res, 32, output_type=uint256)
    y0: uint256 = extract32(res, 64, output_type=uint256)
    y1: uint256 = extract32(res, 96, output_type=uint256)

    log Log("offset", offset)
    log Log("length", l)
    log Log("y0", y0)
    log Log("y1", y1)

    return res