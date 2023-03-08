// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Upload{

  struct Access{
    address user;
    bool access;
  }

  // to store urls
  mapping (address => string[]) value;

  // nested mapping
  mapping(address => mapping(address => bool)) ownership;

  mapping(address => Access[]) accessList;

  mapping(address => mapping(address => bool)) previousData;

  function add(address _user, string memory url) external{
    value[_user].push(url);
  }

  function allow(address user) external{
    ownership[msg.sender][user] = true;
  }
}