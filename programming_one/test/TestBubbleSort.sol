pragma solidity >=0.5.0 <=0.8.11; // Do NOT change this line

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Sorter.sol";

// Test Implementations of Bubble Sort
contract TestBubbleSort {
    // Arrays to Sort
    uint[] array1 = [1,3,6]; // Already sorted
    uint[] array2 = [0]; // 1 Element

    // Sorted arrays
    uint[] expected1 = [1,3,6];
    uint[] expected2 = [0];

    // Tests

    function iterativeArraySort(uint[] memory _array, uint[] memory _expected) internal {
        Sorter sorter = Sorter(DeployedAddresses.Sorter());
	Assert.equal(sorter.iterativeBubbleSort(_array), _expected, "Array is not sorted");
    }

    function recursiveArraySort(uint[] memory _array, uint[] memory _expected) internal {
        Sorter sorter = Sorter(DeployedAddresses.Sorter());
	Assert.equal(sorter.recursiveBubbleSort(_array, uint8(_array.length)), _expected, "Array is not sorted");
    }

    // Test Case 1
    function testIterativeArraySortOne() public {
        iterativeArraySort(array1, expected1);
    }

    // Test Case 2
    function testIterativeArraySortTwo() public {
        iterativeArraySort(array2, expected2);
    }

    // Test Case 3 
    function testRecursiveArraySortOne() public {
        recursiveArraySort(array1, expected1);
    }

    // Test Case 4
    function testRecursiveArraySortTwo() public {
        recursiveArraySort(array2, expected2);
    }
}
