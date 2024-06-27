// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract IsEven {
    function isEven(uint number) public pure return (bool) {
        return number % 2 == 0;
    }
}