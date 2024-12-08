// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MyFirstToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("My First Token", "MFT") {
        _mint(msg.sender, initialSupply * 10e18);
    }
}
