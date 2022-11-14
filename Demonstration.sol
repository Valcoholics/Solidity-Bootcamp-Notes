// SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Demonstration {
    uint public count;

    function increment() external {
        count += 1;
    }
}

interface IDemonstration {
    function count() external view returns (uint);

    function increment() external;
}

contract MyContract {
    function incrementCounter(address _counter) external {
        IDemonstration(_counter).increment();
    }

    function getCount(address _counter) external view returns (uint) {
        return IDemonstration(_counter).count();
    }
}
