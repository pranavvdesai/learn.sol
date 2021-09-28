pragma solidity ^0.8.7;

// to import another smart contract
// import

contract Mycontract{
    uint a;
    uint b;
    
    // function add() external {
    //     return a + b;
    // }
    
}

// Variable Types
/*
1. fixed-size Types

bool isReday;  true/false
uint a;  positive integers
address recipient;  for address
// encoded --> bytes32 data; represent strings,know in advance that the sizeof strings wont exceed 32 bytes


2. variable-size Types

string name; string of any length
bytes _data; doesnt have any predefined length
uint[] amounts; arrays of type uint
mapping(uint => string)

3. user-defined data
struct User{
    
}

*/

// variables
/*

1. state variables 
int public myint = 1
unit public myuint = 1
uint = uint256
uint8 a = 1
address public myaddress = 0xbwduiwudbwdbwdwdbwoidw


struct MyStruct{
    uint id;
    string name;
}

MyStruct public mystruct 
mystruct = MyStruct('398644832','pranav')


2. local variables
function getValue() public pure returns(uint){
    string value = "hemlo"
    return value;
}

*/
