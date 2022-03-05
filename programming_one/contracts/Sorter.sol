pragma solidity >=0.5.0 <=0.8.11;

/*
 * TESTS
 * We will test your code with our test cases by calling 'truffle test'
 * We are using truffle's automated testing framework
 * We wrote the tests in Solidity but it is also possible to use JavaScript's Mocha framework
 * Learn how to test: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-solidity
 * 10 test cases, each is worth 8 points (5 test cases for iterative bubble sort, 5 for recursive)
 * You are encouraged to write your own test cases
 *
 * ORDER
 * Sort from SMALLEST TO LARGEST uint
 *
 * EXAMPLES
 * Input: uint[] array = [4,3,2,3];
 * Output: uint[] expected = [2,3,3,4];
 *
 * NOTE
 * We WILL VERIFY you wrote an iterative/recursive bubble sort as instructed
 * Writing two iterative or two recursive solutions will result in 0 points for the whole assignment
 */

// Implement Bubble sorts (Do NOT rename the contract)
contract Sorter {
    // swaps array values at indices provided.
    // array is passed by reference to reflect
    // swaps in the original array
    function swap(uint[] memory _data, uint a, uint b) private {
        uint temp = _data[a];
        _data[a] = _data[b];
        _data[b] = temp;
    }

    // 1. Implement Bubble sort iteratively (do NOT modify the type signature)
    function iterativeBubbleSort(uint[] memory _data) public pure returns (uint[] memory) {
        if (_data.length <= 1) {
            return _data;
        }
        uint lastIndex = _data.length - 1;
        bool isSorted = false;
        while (!isSorted) {
            isSorted = true;
            for (uint idx = 0; idx < lastIndex; idx++) {
                if (_data[idx] > _data[idx+1]) {
                    isSorted = false;
                    // calling swap makes this function impure since swap function is impure
                    uint temp = _data[idx];
                    _data[idx] = _data[idx+1];
                    _data[idx+1] = temp;
                }
            }
            lastIndex--;
        }
        return _data;
    }

    // 2. Implement Bubble sort recursively (do NOT modify the type signature)
    // Hint: What happens after 1 pass of bubble sort?
    function recursiveBubbleSort(uint[] memory _data, uint8 _size) public returns (uint[] memory) {
        // TODO Implement Here
        return _data;
    }
}
