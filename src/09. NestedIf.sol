// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract NestedIf {
    function call(uint256 number) public pure returns (bool) {
        if (number > 0 && number != 50 && number < 100) {
            return true;
        }

        return false;
    }
}

contract NestedIfOptimized {
    function call(uint256 number) external pure returns (bool) {
        unchecked {
            return number > 0 && number < 100 && number != 50;
        }
    }
}
