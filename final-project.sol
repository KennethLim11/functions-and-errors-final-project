// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;


contract ErrorHandler {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint _newValue) public {
        require(msg.sender == owner, "Only the owner can set the value"); // Use require to check a condition

        value = _newValue;
    }

    function assertExample(uint _x, uint _y) public pure returns (uint) {
        assert(_x + _y >= 15); // Use assert to ensure that the addition doesn't overflow
        return _x + _y;
    }

    function revertExample(uint _x) public pure returns (uint) {
        if (_x < 8) {
            revert("Value must be greater than or equal to 8"); // Use revert to revert and provide an error message
        }
        return _x;
    }
    
}
