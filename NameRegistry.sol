pragma solidity ^0.8.0;

contract NameRegistry {
    mapping(address => string) public names;

    function register(string memory _name) public {
        names[msg.sender] = _name;
    }

    function retrieve(address _address) public view returns (string memory) {
        return names[_address];
    }
}
