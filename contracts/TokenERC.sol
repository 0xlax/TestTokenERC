// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "../node_modules/@openzepelin/contracts/accessOwnable.sol";

import "./Auth.sol";
contract Box is Ownable {
	uint256 private _value;
	event ValueChanges(uint256 value);


	function store(uint256 value) public onlyOwner {
		_value = value;
		emit ValueChanges(value);
	}

	function retrive() public view returns (uint256){
		return _value;
	}
}