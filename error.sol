// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

error WowError(uint x, uint y);

// revert + error 함수
contract MyContractRevert {
  uint public storedData;

  function set(uint x) public {
    if (x == 3){
      revert WowError(1, x);
    }
    storedData = x;
  }
}

// require
contract MyContractRequire {
  uint storedData;

  function set(uint x) public {
    require(x != 3, "x is not 3");
    storedData = x;
  }

  function get() view public returns (uint) {
    return storedData;
  }
}

// assert
contract MyContractAssert {
  uint storedData;

  function set(uint x) public {
    storedData = x;
    assert(storedData != 3);
  }

  function get() view public returns (uint) {
    return storedData;
  }
}