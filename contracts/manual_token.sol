// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

contract ManualToken {
     mapping(address => uint) balanceOf;

    function _transfer(address from, address to, uint amount) public {
        balanceOf[from] -= amount;
        balanceOf[to] += amount;
    }
}
