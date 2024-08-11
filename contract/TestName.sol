// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract TestName {
    function getName(address name) public pure returns (address) {
        return name;
    }

    function setName(string memory newName) public {
        // Do something
    }

}
