// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bank{
    mapping(address => uint256) balances;

    function depositMoney(uint256 amount) public {
        require(amount >= 0, "Amount must be greater than zero");
        balances[msg.sender] = balances[msg.sender]+amount;
    } 
    function withdrawMoney(uint256 amount) public {
        require(amount <= balances[msg.sender], "insufficient balance");
        balances[msg.sender] = balances[msg.sender]-amount;
    }
    function Showbalance() public view returns (uint256){
        return balances[msg.sender];
    }
}
// 
