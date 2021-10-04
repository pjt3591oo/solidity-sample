// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

import './library.sol';

contract MyContract {
  using MyLibrary for MyLibrary.data;
  using Math for *;

  MyLibrary.data charactor;
  
  function getA () public view returns (MyLibrary.data memory) {
    return charactor;
  }
  
  function setA (string memory _name, uint _age) public  {
    charactor = MyLibrary.data(_name, _age);
  }
  
  function mathAdd (uint _a, uint _b) public pure returns (uint) {
    return Math.add(_a, _b);
  }
  
  function mathSub (uint _a, uint _b) public pure returns (uint) {
    return Math.sub(_a, _b);
  }
}
