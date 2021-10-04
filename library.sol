// SPDX-License-Identifier: MIT
pragma solidity 0.8.9;

library MyLibrary {
  struct data {
    string name;  
    uint age;
  }
  
  function add(uint a, uint b) external pure returns (uint) {
    return a + b;
  }
}

library Math {
  function add (uint _a, uint _b) external pure returns (uint) {
    return _a + _b;
  }
    
  function sub (uint _a, uint _b) external pure returns (uint) {
    return _a - _b;
  }
}

contract MyContractUsingLibrary {
    
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
