# 📝 TodoList Smart Contract

This is a simple **Todo List** smart contract written in Solidity, designed to demonstrate the use of enums, structs, mappings, and events in a practical example. It allows users to create, manage, and track the status of todo items on the blockchain.

## 🚀 Features

- Add a new todo with a description
- Track each todo's status (`Pending`, `InProgress`, `Completed`)
- Update the status of any todo
- View details of individual todos by ID
- Emits an event whenever a new todo is added

## 🧱 Smart Contract Structure

### Enum
```solidity
enum Status { Pending, InProgress, Completed }
