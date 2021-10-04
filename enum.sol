// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

contract MyContract {
  enum  bb { a1, a2, a3 } // 0, 1, 2
  
  constructor () public {
    
  }

  function getA() public pure returns (bb) {
    return bb.a1;
  }
}