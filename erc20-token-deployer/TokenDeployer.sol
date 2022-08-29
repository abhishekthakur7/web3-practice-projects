//SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract TokenDeployer is ERC20 {

    constructor(string memory _tokenName, string memory _tokenSymbol, uint _tokenSupply) ERC20(_tokenName, _tokenSymbol) {
        _mint(msg.sender, _tokenSupply * 10 ** 18);
    }

}