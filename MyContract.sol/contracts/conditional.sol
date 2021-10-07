pragma solidity ^0.8.7;

contract conditional{
    uint[] public arr = [1,2,3,4,5,6,7,8,9];
    address public owner;
    
    constructor() public{
        owner = msg.sender;
    }
    
    function array() public view returns(uint) {
        uint count=0;
    for(uint i=0; i<arr.length; i++){
        if(isEvenNumber(arr[i])){
            count++;
        }
    }        
        return count;

    }
    
    function isEvenNumber(uint _no) public view returns(bool){
        if(_no % 2 == 0){
            return true;
        }
        else{
            return false;
        }
    }
    
    function isOwner() public view returns(bool){
        return(msg.sender == owner);
        
    }
}