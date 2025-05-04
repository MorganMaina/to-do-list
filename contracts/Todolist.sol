//SPDX-License-Identifier:MIT
pragma solidity ^0.8.17;
contract todoList {
//Define Todo status enum
enum Status {Pending, InProgress, Completed}

//Define the Todo Struct
struct Todo {
    uint id ;
     string content; 
     Status status; 
     }
    //Event Declaration 
    event TodoAdded (uint id ,string content );
     //mapping and array to track todos
    mapping(uint => Todo) public todos;
    uint[] public todoids;
    uint private nextId;

//function to add new to do 
 function addTodo(string memory _content) public {
    todos[nextId] = Todo(nextId,_content,Status.Pending);
    todoids.push(nextId);
    emit TodoAdded(nextId, _content);
    nextId++;
 } 
 //function to Update todo status
 function updateStatus(uint _id, Status _status) public {
        require(_id < nextId, "Todo does not exist");
        todos[_id].status = _status;
    }
//function to get a specific todo
function getTodo(uint _id) public view returns (uint, string memory, Status) {
        require(_id < nextId, "Todo does not exist");
        Todo memory todo = todos[_id];
        return (todo.id, todo.content, todo.status);
    }

}