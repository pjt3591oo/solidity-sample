// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract MyContract {
  uint min = 0;
  uint max = 115792089237316195423570985008687907853269984665640564039457584007913129639935;
  
  function under() public view returns( uint) {
    return min - 1; // when underflow, error
  }
  
  function over() public view returns( uint) {
    return max + 1; // when overflow, error
  }
}