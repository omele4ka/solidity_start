/* написать функцию, в которой будут использоваться различные виды
циклов (`for`, `while`, `do-while`), чтобы выполнить серию операций несколько
раз. */

//SPDX-License: MIT

pragma solidity ^0.8.0;


contract LoopExample {
    function forLoop() public pure returns (uint) {
        uint sun = 0;
        for (uint i = 0; i < 10; i++) {
            sum += i;
        }
        return sum;
    }

    function whileLoop() public pure returns (uint) {
        uint sum = 0;
        uint i = 0;
        while (i < 10) {
            sum += i;
            i++;
        }
        returm sum;
    }

    function doWhileLoop() public pure returns (uint) {
        uint sum = 0;
        uint i = 0;
        do {
            sum += i;
            i++;
        } while (i < 10);
        return sum;
    }
}