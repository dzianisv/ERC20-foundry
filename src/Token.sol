// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Import the OpenZeppelin ERC20 and Ownable contracts
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

// Define the contract
contract MintableToken is ERC20, Ownable {
    // Constructor to initialize the token with a name and symbol
    constructor(
        string memory name,
        string memory symbol
    ) ERC20(name, symbol) Ownable(msg.sender) {}

    // Mint function that allows the owner to mint new tokens
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
