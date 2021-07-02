// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "./Auth.sol";
contract Box {
	uint256 private _value;
	event ValueChanges(uint256 value);

	constructor(Auth auth) {
		_auth = auth;
	}

	function store(uint256 value) public {
		_value = value;
		emit ValueChanges(value);
	}

	function retrive() public view returns (uint256){
		return _value;
	}
}