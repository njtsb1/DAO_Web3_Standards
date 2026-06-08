// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/// @title VilaToken - ERC20 governance token (simple)
contract VilaToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20("VilaToken", "VILA") {
        _mint(msg.sender, initialSupply);
    }

    /// @notice mint function reserved to owner (use only for controlled distributions)
    function mint(address to, uint256 amount) external onlyOwner {
        _mint(to, amount);
    }
}
