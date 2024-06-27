/* определить одно или несколько событий в контракте и вызвать их в
различных функциях, демонстрируя, как события могут быть использованы для
отслеживания важных изменений и действий. */

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract EventExample {
    //объявление события для логирования изменений статуса задачи
    event TaskStatusChanged(uint taskId, string newStatus);

    // Структура задачи 
    struct Task {
        string description;
        string status;
    }

    // массив для хранения задач
    Task[] public tasks;

    // функция для добавления задач и вызова события
    function addTask(string memory _description) public {
        tasks.push(Task({description: _description, status: "ToDo"}));
        emit TaskStatusChanged(tasks.length - 1, "ToDo");
    }

    // функция для изменения статуса задач и вызова события
    function updateTaskStatus(uint _taskId, string memory _newStatus) public {
        tasks[_taskId] = _newStatus;
        emit TaskStatusChanged(_taskId, _newStatus);
    }
}

/* События могут быть отслежены внешними слушателями, что позволяет клиентским
приложениям реагировать на изменения в контракте. Это делает события мощным
инструментом для создания интерактивных и реактивных децентрализованных
приложений. Используйте этот код как основу для включения событий в ваши
смарт-контракты. */