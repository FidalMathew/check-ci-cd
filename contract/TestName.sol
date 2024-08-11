// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TestName {

    // State variable to store the name
    string public name;

    // Function to return the input address (this function doesn't interact with the state)
    function getName(address _name) public pure returns (address) {
        return _name;
    }

    // Function to set a new name
    function setName(string memory newName) public {
        name = newName; // Store the new name in the state variable
    }

    // Function to retrieve the current name
    function retrieveName() public view returns (string memory) {
        return name; // Return the stored name
    }
}
