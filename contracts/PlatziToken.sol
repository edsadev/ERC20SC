// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PlatziToken is ERC20 {
  constructor(uint256 initialSupply) ERC20("PlatziToken", "PLZ") public {
    _mint(msg.sender, initialSupply * (10**decimals()));
  }

	// Define how much decimals the token has
  function decimals() public pure override returns (uint8) {
    return 6;
  }
}