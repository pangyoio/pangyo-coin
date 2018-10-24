pragma solidity ^0.4.24;

import 'openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract PangyoCoin is StandardToken {
  string public name = "PangyoCoin";
  string public symbol = "PANG";
  uint public decimals = 8;
  uint public INITIAL_SUPPLY = 100000000 * (10 ** decimals);
  address public owner;

  modifier onlyOwner {
      require(msg.sender == owner);
      _;
  }

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    owner = msg.sender;
    // airdrop(0xe775533aB33511091c5e8B6B58F4547F8E3Bc091, INITIAL_SUPPLY/2);
  }
  function airdrop(address _to, uint256 _value) public payable onlyOwner {
    transfer(_to, _value);
  }
}
