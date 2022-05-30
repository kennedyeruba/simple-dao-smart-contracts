// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/access/Ownable.sol";

contract HepierBox is Ownable{
    uint256 private value;

    event ValueChanged(uint256 newValue);

    function store(uint256 newValue) 
        public 
        onlyOwner 
    {
        value = newValue;
        emit ValueChanged(newValue);
    }

    function retrieve() 
        public 
        view 
        returns(uint256) 
    {
        return value;
    }
}