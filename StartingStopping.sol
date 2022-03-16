// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract StartStopUpdateExample {
    address public owner;
    bool public state; 
    constructor(){
        owner=msg.sender;
    }
    function sendMoney() public payable {
    }
    function setState(bool _state) public{
        require(msg.sender == owner , "You are not the owner. You cannot pause.");
        state=_state;
    }
    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == owner , "You are not the owner. You cannot withdraw.");
        require(!state , "Contract is paused. You cannot do any transaction.");
        _to.transfer(address(this).balance);
    }

     function destroySmartContract(address payable _to) public {
        require(msg.sender == owner, "You are not the owner");
        selfdestruct(_to);
    }
}