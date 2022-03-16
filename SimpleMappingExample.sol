//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SimpleMappingExample {

    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;
    mapping(uint => bool) myMap;
    function setValue(uint _index) public {
        myMapping[_index] = true;
    }
    function setMap(uint _index) public {
        myMap[_index] = true;
    }
     function getMap(uint _index) public view returns(bool){
        return myMap[_index];
    }



    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }


}