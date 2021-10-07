pragma solidity ^0.8.7;

contract hotelroom{
    
    enum Status { Vacant, Occupied }
    Status currentstatus;
    
    address payable public owner;
    
    constructor() public{
        owner = payable(msg.sender);
        currentstatus = Status.Vacant;
    }
    
    modifier onlyWhileVacant{
                require(currentstatus == Status.Vacant, "Currently occupied");
                // load the function body
                _;

    }
        modifier costs(uint amt){
        require(msg.value>=amt, "Not enough ether");
        _;

    }
    
    // both of the modifier checks will run before the function below gets exceuted
    
    function book() payable public onlyWhileVacant costs(2 ether){
        // check price and status
        // require checks if its true and then only goes to the next line.
        // require(msg.value>= 2 ether, "Not enough ether");
        // require(currentstatus == Status.Vacant, "Currently occupied");
        // msg.value == eth
        owner.transfer(msg.value);
        currentstatus = Status.Occupied;
    }
    
    
}