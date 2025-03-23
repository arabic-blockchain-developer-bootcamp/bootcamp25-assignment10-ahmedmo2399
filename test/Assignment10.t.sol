// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import {Assignment10} from "../src/Assignment10.sol";

contract Assignment10Test is Test {
    Assignment10 assignment;

    function setUp() public {
        assignment = new Assignment10();
    }

    function testFeeIsConstant() public {
        assertEq(assignment.FEE(), 100, "FEE should be 100");
    }

    function testSetValue() public {
        assignment.setValue(42);
    }
}
