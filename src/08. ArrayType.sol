// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract ArrayType {
    uint256[] array;

    function initArray() public {
        for (uint256 i; i < 200; ++i) {
            array.push(i);
        }
    }
}

contract ArrayTypeOptimized {
    mapping(uint256 => uint256) array;

    function initArray() external {
        for (uint256 i; i < 200; ++i) {
            unchecked {
                array[i] = i;
            }
        }
    }
}
