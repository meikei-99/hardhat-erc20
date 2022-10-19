//SPDX-License-Identidier:MIT
pragma solidity ^0.8.7

contract ManualToken{
    mapping (address=>uint256) public balanceOf
    mapping(address=>mapping(address=>uint256)) allowance

    //transfer tokens
    //substract from address amount and add to new address

    function transfer(address from, address to, uint256 value)public{
        balanceOf[from]=balanceOf[from]-value
        balanceOf[to]+=value
    }

    function transferFrom(address _from, _address to,uint256 _value) public returns (bool success){
        require(_value<=allowance[_from][msg.sender])
    }
}