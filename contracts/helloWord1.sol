// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Hello_World {
    int private secretNumber;
    string public userMessage;
    string public userName;
    constructor (string memory _name) {
        userName=_name;
        secretNumber=16;
    }
    modifier altered(){
        if(secretNumber!=16){
        _;
        }
    }
    function addNumber(int _num) public {
        secretNumber+=_num;
        userMessage= string(abi.encodePacked(userName," has just added ","a number", " to the secret number"));
    }
    function setName(string memory _newName) public{
        userName=_newName;
    }
    function getNumber() public view altered returns(int){
        return secretNumber;
    }
}