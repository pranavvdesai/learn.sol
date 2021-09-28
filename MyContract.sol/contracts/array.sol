pragma solidity ^0.8.7;

contract array{
    // array
    uint[] public uintArray = [1,2,3];
    string[] public stringArray = ["apple",'something'];
    string[] public myArray;
    uint[][] public array2D = [[1,2,3],[4,5,6]];
    
    function addValue(string memory val) public {
        myArray.push(val);
    }
    function valueCount() public view returns(uint){
        return myArray.length;
    }
}