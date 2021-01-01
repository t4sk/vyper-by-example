pragma solidity ^0.7;

contract RawCallReceiver {
    event Log(uint x, uint y);

    function test(uint x, uint y, uint[] calldata xs) external returns (uint[] memory) {
        require(x == y, "x != y");

        emit Log(x, y);
        emit Log(xs[0], xs[1]);

        uint[] memory ys = new uint[](2);
        ys[0] = 888;
        ys[1] = 999;

        return ys;
    }
}