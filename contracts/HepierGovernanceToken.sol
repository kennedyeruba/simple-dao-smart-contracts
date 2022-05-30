// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Votes.sol";

contract HepierGovernanceToken is ERC20Votes {

    uint256 public s_maxSupply = 1000000000000000000000000; // 1 million tokens to 18 decimal places

    constructor()
    ERC20("HepierGovernanceToken", "HGT")
    ERC20Permit("HepierGovernanceToken") {
        _mint(msg.sender, s_maxSupply);
    }

    function _afterTokenTransfer(address from, address to, uint256 amount) internal override(ERC20Votes) {
        super._afterTokenTransfer(from, to, amount);
    }

    function _mint(address to, uint256 amount) internal override(ERC20Votes) {
        super._mint(to, amount);
    }

    function _burn(address from, uint256 amount) internal override(ERC20Votes) {
        super._burn(from, amount);
    }
}