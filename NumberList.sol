/* Создать смарт-контракт, который управляет списком целых чисел.
Реализовать функцию, которая использует цикл для подсчёта суммы всех чисел в
списке. */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract NumberList {
    //Объявить динамический массив uint для хранения списка чисел
    uint[] public numbers;

    function addNumber(uint number) public {
        numbers.push(number);
    }

    function sumNumbers() public view returns (uint) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum+=numbers[i];
        }
        return sum;
    }
}


/* В этом контракте объявляется динамический массив numbers, в который можно
добавлять целые числа с помощью функции addNumber. Функция sumNumbers
использует цикл for для перебора элементов массива и подсчёта их суммы. После
прохождения цикла возвращается общая сумма чисел.
Теперь у вас есть контракт, который позволяет управлять списком целых чисел и
выполнять операции агрегации данных, такие как подсчёт суммы */