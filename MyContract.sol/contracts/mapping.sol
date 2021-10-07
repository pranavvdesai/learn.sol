pragma solidity ^0.8.7;

contract map{
    // mapping(key => value) myMapping;
    
    mapping( uint => string ) public names;
    
    mapping(uint => Book) public books;
    
    struct Book{
        uint title;
        string author;
    }
    
    function addBook(uint _id, uint _title, string memory _author) public {
        books[_id] = Book(_title,_author);
    }
    
    constructor() {
        names[1] = "name1";
        names[2] = "name2";
        names[3] = "name3";

    }
    
    function del() public {
        delete names[2];
    }
    // exotic mapping
    mapping(address => uint[] ) public balances;
    mapping(address => mapping(address => bool)) public approved;
    
    function exotic_mapping(address spender) public {
        approved[msg.sender][spender] = true;
    }
    
    function exotic_array_mapping() public {
        balances[msg.sender].push(1);
        
       
    }
    function access_array_mapping() public view {
         // access
        balances[msg.sender][0];
        
       
    }
    
    mapping(address => mapping(uint => Book)) public myMapping;
    
        function addMyBook(uint _id, uint _title, string memory _author) public {
         myMapping[msg.sender][_id] = Book(_title,_author);
       
    }
    
}