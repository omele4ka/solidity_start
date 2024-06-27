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

    function getDay(uint day) public pure returns (sting memory) {
        switch (day) {
            case 1:
                result = "Sunday";
                break;
            case 2: 
                result = "Monday";
                break; 
            case 3: 
                result = "Tuesday";
                break;
            case 4: 
                result = "Wednesday";
                break;
            case 5: 
                result = "Thursday";
                break;
            case 6: 
                result = "Friday";
                break;
            case 7: 
                result = "Saturday";
                break;
            default: 
                result = "There's no such day of a week";
                break;
        }
        return result
    }
}

/*Этот контракт содержит две функции: checkNumber, которая использует оператор
if-else для проверки числа на положительность, и getDay, которая использует
оператор switch для возвращения дня недели по номеру.
Такой контракт поможет вам понять и применить условные операторы в Solidity для
управления потоком выполнения программы. */