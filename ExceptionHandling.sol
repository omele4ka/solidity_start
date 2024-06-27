/* реализовать функцию с блоками `try-catch`, которая попытается
выполнить операцию, потенциально вызывающую ошибку, и корректно обработает
возникшее исключение.*/

//SPDX-License: MIT

pragma solidity ^0.8.0;


contract ExceptionHandling {
    function callExceptionTHrowFunction() public returns (string memory) {
        try this.exceptionThrowFunction() {
            return "Function executed successfully";
        } catch {
            return "An error occurred";
        }
    }

    function exceptionThrowFunction() public pure {
        // сюда написать код, который может вызвать ошибку
        revert "An error is thrown intentionally";
    }
}