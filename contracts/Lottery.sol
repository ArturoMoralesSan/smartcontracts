// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

contract Lottery {
     address[] public players;

    function enter() public payable {
        players.push(msg.sender);
    }

    function pickWinner(uint256 random) public payable {
        uint256 index = uint256(keccak256(abi.encodePacked(random)));
        address winner = payable(players[index % players.length]);
        winner.call{value : msg.value}("");
    }
}
