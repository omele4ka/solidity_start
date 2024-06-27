/* создать два контракта, где один будет вызывать функцию другого. Это
поможет понять, как контракты могут работать вместе в более сложных системах. */

//SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract CalledContract {
    uint public storedData;

    function set(uint x) public {
        storedData = x;
    }
}

contract CallingContract {
    CalledContract public calledContract;

    constructor(address _calledContractAddress) {
        calledContract = CalledContract(_calledContractAddress);
    }

    function callSetFunction(uint _x) public {
        calledContract.set(_x);
    }
}

/*Чтобы использовать CallingContract для вызова функции в CalledContract, вам нужно
сначала задеплоить CalledContract, получить его адрес, а затем использовать этот
адрес при создании CallingContract. Это позволяет CallingContract вызывать
функцию set и изменять состояние CalledContract.
Этот пример иллюстрирует основы взаимодействия контрактов в Ethereum и может
служить отправной точкой для создания более сложных систем, где контракты
взаимодействуют друг с другом.*/