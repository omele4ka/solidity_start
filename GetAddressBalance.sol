//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract GetAddressBalance {
    function getAddressBalance(address x) public view returns (uint) {
        return address(x).balance;
    }
}

function add(uint a, uint b) public returns(uint) {
    uint result = a + b;
    return result;
}

function getBalance() public view returns (uint) {
    return address(this).balance;
}