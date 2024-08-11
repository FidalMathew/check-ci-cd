// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Test {
    function getName(address name) public pure returns (address) {
        return name;
    }

    function setName(string memory newName) public {
        // Do something
    }

    function anotherFunction(uint256 value) private pure returns (uint256) {
        return value * 2;
    }
}
