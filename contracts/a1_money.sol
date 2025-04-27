// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract sample1 {
    Money[] public money;
    int public balance;
    
    struct Money {
        int amount;
        address owner;
    }

    function addMoney(int _amount, address _owner) public {
        money.push(Money(_amount, _owner));
        balance += _amount;
    }
}