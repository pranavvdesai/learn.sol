pragma solidity ^0.8.7;

contract flow{
    
int public myint = 1;
uint public myuint = 1;
uint8 a = 1;
uint256 public uint2 = 1;
address public myaddress = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;


struct MyStruct{
    uint id;
    string name;
}

MyStruct public mystruct = MyStruct(398644832,'hello'); 
// mystruct = MyStruct('398644832','pranav');


function getValue() public pure returns(string memory){
    string memory value = "hemlo";
    return value;
}
    
  
}
