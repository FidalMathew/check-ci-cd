// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attack {
    mapping(address => uint256) public balances;

    // Deposit Ether into the contract
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // Withdraw all your Ether
    function withdraw() public {
        uint256 amount = balances[msg.sender];
        
        // Send Ether to the caller (reentrancy vulnerability here)
        (bool success, ) = msg.sender.call{value: amount}("");
        require(success, "Transfer failed.");

        // Update the balance after sending Ether
        balances[msg.sender] = 0;
    }
}
