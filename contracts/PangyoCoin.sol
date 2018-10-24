pragma solidity ^0.4.24;

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract PangyoCoin is StandardToken {
  string public name = "PangyoCoin";
  string public symbol = "PANG";
  uint public decimals = 8;
  uint public INITIAL_SUPPLY = 100000000 * (10 ** decimals);

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}
