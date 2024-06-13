solidity
pragma solidity ^0.8.0;

contract TestContract {
    address private owner;
    uint private balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint amount) public {
        require(msg.sender == owner, "Only the owner can deposit funds");
        require(amount > 0, "Invalid amount");
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        require(amount > 0, "Invalid amount");
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }
}solidity
pragma solidity ^0.8.0;

contract TestContract {
    address private owner;
    uint private balance;

    constructor() {
        owner = msg.sender;
        balance = 0;
    }

    function deposit(uint amount) public {
        require(msg.sender == owner, "Only the owner can deposit funds");
        require(amount > 0, "Invalid amount");
        balance += amount;
    }

    function withdraw(uint amount) public {
        require(msg.sender == owner, "Only the owner can withdraw funds");
        require(amount > 0, "Invalid amount");
        require(amount <= balance, "Insufficient balance");
        balance -= amount;
    }

    function getBalance() public view returns (uint) {
        return balance;
    }
