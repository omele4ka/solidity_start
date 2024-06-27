/* создать контракт, в котором будут объявлены переменные типов `uint`,
`int`, `bool`, и `address`. Реализовать функции для изменения и чтения значений
этих переменных, демонстрируя основные операции над данными. */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract VariableContract {
    uint public uintVariable;
    int public intVariable;
    bool public boolVariable;
    address public addressVariable;

    constructor() {
        uintVariable = 10;
        intVariable = -5;
        boolVariable = true;
        addressVariable  = msg.sender;
    }

    function setUintVariable(uint newValue) public {
        uintVariable = newValue;
    }

    function getIntVariable() public view returns (int) {
        return intVariable;
    }

    function toggleBoolVariable() public {
        boolVariable = !boolVariable;
    }

    function setAddressVariable(address newAddress) public {
        addressVariable = newAddress;
    }
}

/* В этом контракте объявлены переменные типов uint, int, bool и address, а также
реализованы функции для изменения и чтения значений этих переменных.
Конструктор устанавливает начальные значения переменных. Функция
setUintVariable изменяет значение переменной типа uint, функция getIntVariable
возвращает значение переменной типа int, функция toggleBoolVariable инвертирует
значение переменной типа bool, а функция setAddressVariable устанавливает новое
значение переменной типа address.
Таким образом, вы сможете управлять переменными различных типов в контракте
и выполнять основные операции над данными с их помощью. */