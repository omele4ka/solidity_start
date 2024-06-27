/* разработать функции, использующие `if-else` и `switch` для выполнения
различных операций в зависимости от заданных условий */

//SPDX-License: MIT

pragma solidity ^0.8.0;


contract FlowControlExample {
    function checkNumber(uint num) public pure returns (string memory) {
        if (num > 0) {
            return "A number is positive";
        }
        else {
            return "A number is not positive";
        }
    }

    function getDay(uint day) public pure returns (string memory) {
        string memory result;
        if (day == 1) {
            result = "Sunday";
        } else if (day == 2) {
            result = "Monday";
        } else if (day == 3) {
            result = "Tuesday";
        } else if (day == 4) {
            result = "Wednesday";
        } else if (day == 5) {
            result = "Thursday";
        } else if (day == 6) {
            result = "Friday";
        } else if (day == 7) {
            result = "Saturday";
        } else {
            result = "There's no such day of a week";
        }
        return result;
    }
}

/*Этот контракт содержит две функции: checkNumber, которая использует оператор
if-else для проверки числа на положительность, и getDay, которая использует
оператор switch для возвращения дня недели по номеру.
Такой контракт поможет вам понять и применить условные операторы в Solidity для
управления потоком выполнения программы. */