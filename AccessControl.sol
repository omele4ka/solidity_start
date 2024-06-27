/* создать контракт с функциями, имеющими различные модификаторы
доступа (`public`, `private`, `internal`, `external`). Продемонстрировать, как
каждый модификатор влияет на доступность функций в разных контекстах */

//SPDX-License: MIT

pragma solidity ^0.8.0;


contract AccessControlExample {
    uint private privateValue;
    uint internal internalValue;
    uint public publicValue;

    constructor(uint _initialValue) {
        privateValue = _initialValue;
        internalValue = _initialValue;
        publicValue = _initialValue;
    }

    function getPrivateValue() private view returns (uint) {
        return privateValue;
    }

    function getInternalValue() internal view returns (uint) {
        return internalValue;
    }

    function getPublicValue() public view returns (uint) {
        return publicValue;
    }

    function setPrivateValue(uint _newValue) private {
        privateValue = _newValue;
    } 

    function setInternalValue(uint _newValue) internal {
        internalValue = _newValue;
    }

    function setPublicValue(uint _newValue) public {
        publicValue = _newValue;
    }
}

/* В данном контракте AccessControlExample у нас есть три переменные privateValue,
internalValue и publicValue, каждая из которых сопровождается функцией чтения и
функцией записи. Модификаторы доступа private, internal, public определяют, кто и
как может вызывать эти функции.
Модификатор private обеспечивает доступ только внутри контракта, internal
позволяет доступ из дочерних контрактов и из контрактов, находящихся в одном
файле, а модификатор public делает функции доступными для всех. */