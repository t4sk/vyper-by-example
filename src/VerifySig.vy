# @version ^0.2.0

# Hello Vyper!
# 0x5436c86f18e3d25a10e557ae125450118dd0a481ca22112b1977d55a676e4c91
@external
@pure
def getHash(_str: String[100]) -> bytes32:
    return keccak256(_str)

# 0x045b623a8e8fb7b4fcfbd1ae07e7326d55303d7de4085c69b346bd130c1936da
@external
@pure
def getEthSignedHash(_hash: bytes32) -> bytes32:
    return keccak256(
        concat(
            b'\x19Ethereum Signed Message:\n32',
            _hash
        )
    )

# account = your account
# hash = output of getHash()
# ethereum.request({ method: "personal_sign", params: [account, hash]}).then(console.log)

@external
@pure
def verify(_ethSignedHash: bytes32, _sig: Bytes[65]) -> address:
    r: uint256 = convert(slice(_sig, 0, 32), uint256)
    s: uint256 = convert(slice(_sig, 32, 32), uint256)
    v: uint256 = convert(slice(_sig, 64, 1), uint256)
    return ecrecover(_ethSignedHash, v, r, s)
