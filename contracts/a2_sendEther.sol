// SPDX-License-Identifier: MIT

pragma solidity >=0.8.2 <0.9.0;

contract SendEther {
    address payable public wallet;

    mapping(address => uint256) public balances;

    constructor(address payable _wallet){
        wallet = _wallet;
    }

    function buyToken() public payable {
        // buy 1 token
        balances[msg.sender] += 1;
        // send token into other wallet
        wallet.transfer(msg.value);
    }
    
}