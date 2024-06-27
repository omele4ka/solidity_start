/* Объявить контракт с названием AccountManager.
● В контракте объявить переменную owner типа address, которая хранит
адрес владельца контракта.
● Создать mapping для отслеживания балансов пользователей.
● Написать функцию isOwner, которая проверяет, является ли отправитель
транзакции владельцем контракта.*/


//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract AccountManager {
    address public owner;
    mapping(address => uint) public balances;

    constructor() {
        owner = msg.sender;
    }

    function isOwner() public view returns (bool) {
        return msg.sender == owner;
    }
}