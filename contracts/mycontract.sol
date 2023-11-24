// SPDX-License-Identifier: UNLICENSED

// DO NOT MODIFY BELOW THIS
pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Splitwise {
// DO NOT MODIFY ABOVE THIS

// ADD YOUR CONTRACT CODE BELOW
mapping (address => mapping (address => uint32)) public IOUS;

function lookup(address debtor, address creditor) public view returns (uint32 ret) {
    ret = IOUS[debtor][creditor];
    return ret;
}

function add_IOU(address creditor, uint32 amount) public { 
    require (IOUS[msg.sender][creditor] + amount >= IOUS[msg.sender][creditor], "Overflow or Negative Amount");
    IOUS[msg.sender][creditor] += amount;
}

function settle_up(address debter, uint32 amount) public {
    require (IOUS[debter][msg.sender] - amount <= IOUS[debter][msg.sender], "Underflow or Negative Amount");
    IOUS[debter][msg.sender] -= amount;
}

}
