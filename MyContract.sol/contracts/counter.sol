pragma solidity ^0.8.7;

contract counter{
    uint count;
    
    constructor() public {
        count=0;
    }
    
    function getCount() public view returns(uint) {
        return count;
    }
    
    function incrementCount() public {
        count=count+1;
    }
}


