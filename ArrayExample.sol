/* разработать контракт с массивом целых чисел. Написать функции для
добавления элементов в массив и извлечения элемента по индексу, показывая, как
управлять массивами в Solidity. */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


 contract ArrayExample {
    uint[] public integerArray;

    function addElement(uint _element) public {
        integerArray.push(_element);
    }

    function getElement(uint _index) public view returns (uint) {
        require(_index < integerArray.length, "Index out of bounds");
        return integerArray[_index];
    }
 }

 /* В данном примере контракт ArrayExample содержит массив integerArray, в который
мы можем добавлять элементы при помощи функции addElement и извлекать
элемент по индексу с помощью функции getElement. Важно убедиться, что перед
извлечением элемента по индексу мы проверяем, что индекс находится в пределах
массива. */