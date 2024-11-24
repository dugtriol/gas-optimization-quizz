// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract Addition {
    uint256 number = 1;

    function addition(uint256 value) public {
        number += value;
    }
}

contract AdditionOptimized {
    uint256 number = 1;

    function addition(uint256 value) public {
        uint256 tmp = number;
        tmp = tmp + value;
        number = tmp;
    }
}

contract Subtraction {
    uint256 number = 100;

    function subtraction(uint256 value) public {
        number -= value;
    }
}

contract SubtractionOptimized {
    uint256 number = 100;

    function subtraction(uint256 value) public payable {
        uint256 tmp = number;
        tmp = tmp + value;
        number = tmp;
    }
}

contract Division {
    function divisionBy2(uint256 number) public pure returns (uint256) {
        return number / 2;
    }

    function divisionBy128(uint256 number) public pure returns (uint256) {
        return number / 128;
    }
}

contract DivisionOptimized {
    function divisionBy2(uint256 number) public pure returns (uint256) {
        return number >> 1;
    }

    function divisionBy128(uint256 number) public pure returns (uint256) {
        return number >> 7;
    }
}
