// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.7;
contract MyContract {
    string public myName='Rahul';
   
    bool public mybool;
    function setMyBool(bool _mybool) public {
        mybool = _mybool;
    }
    
}
