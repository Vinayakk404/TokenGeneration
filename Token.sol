// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


//Created by Vinayak

contract MyToken {

//Creating public variables
    string public tokenName="META";
    string public tokenAbbrv="MTA";
    uint public totalSupply=0;
    address owner;
   
    //Creating mapping
    mapping(address=>uint) public balances;

    //minting the token
    function mint(address _address,uint _value) public 
    {
        totalSupply+=_value;
        balances[_address]+=_value;
    }

     function burn(address _address,uint _value) public {
        totalSupply-=_value;
        balances[_address]-=_value;
        
    }
}
