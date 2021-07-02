// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract Auth {
	address private _administrator;

	constructor() {
		_administrator = msg.sender;
	}

	function isAdministrator(address user) public view returns (bool) {
		return user == _administrator;
	}
}