// SPDX-License-Identifier: MIT
pragma solidity >=0.4.0;
contract BankAccount{
    uint256 public balance;
    address public owner;

    constructor() {
        owner=msg.sender;
        balance=0;
    }
    // Function to deposit money into the bank account
    function deposit(uint amount)public{
        require(msg.sender==owner,"Only owner can deposit money");
        balance+=amount;
    }

    // Function to withdraw money from the bank account
    function withdraw(uint amount)public {
        require(msg.sender==owner,"Only owner can deposit money");
        require(amount<=balance,"Insufficient balance");
        require(amount>0,"Give valid amount");
        require(balance-amount>=500, "Minimum balance required 500");
        balance-=amount;
    }

    // Function to show balance of the bank account
    function getBalance()public view returns(uint){
        return balance;
    }
}
