pragma solidity ^0.4.24;

import "./ReentrancyGuard.sol";

contract Cashback is ReentrancyGuard{

    function() public payable nonReentrant{
        msg.sender.call.value(msg.value/2)();
    }

    function getBalance() public view returns(uint256){
        return address(this).balance;
    }

}