# Functions and Errors Final Project
 
This solidity program is about error handling and the different kinds of functions used for it.

## Description
This contract has 3 functions.
1. setValue - this uses the require() function and only the user can set the value.
2. assertExample - this uses the assert() function and it makes sure the addition is equal or more than 15.
3. revertExample - this uses the revert() function and it makes sure the value is not equal to 8 or else it reverts the state of the contract.

This contract also has a constructor that assigns the person who deployed the contract to the owner variable.

## Getting Started

### Executing the program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FuncErrorProject.sol). Copy and paste the following code into the file:

```javascript
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
        if (_x == 8) {
            revert("Value must not be equal to 8"); // Use revert to revert and provide an error message
        }
        return _x;
    }
    
}


```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile final-project.sol" button.

After compilation, the contract can be deployed by clicking the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "ErrorHandler" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, click on the "ErrorHandler" contract first on the left-hand sidebar. You can interact with the program by setting a value as the owner, by passing two numerical arguments to the assertExample() function to see how it works, and by passing a value to the revertExample() function as well.

## Authors

Kenneth Lim
Email : 202010039@fit.edu.ph

## License

This project is licensed under the MIT License - see the LICENSE.md file for details