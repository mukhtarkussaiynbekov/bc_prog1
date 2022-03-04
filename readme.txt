Please follow the instructions to install Truffle: https://www.trufflesuite.com/docs/truffle/getting-started/installation 

Once you have installed Truffle, Create your project:

mkdir programming_one && cd programming_one
truffle init

Copy the provided file Sorter.sol to the contracts folder: 
'cd contracts && cp ../path_to_the_file_we_gave_you/Sorter.sol .'

Copy the provided test file TestBubbleSort.sol to the test folder: 
'cd ../test && cp ../path_to_the_file_we_gave_you/TestBubbleSort.sol .'

Copy the provided migrations file 2_deploy_contracts.js to the migrations folder: 
'cd ../migrations && cp ../path_to_the_file_we_gave_you/2_deploy_contracts.js .'

Open the Sorter.sol file with your favorite editor. Your job is to implement the two functions in the Sorter contract. 

Your assignment is to implement in the contract Sorter:
a. Implement Bubble Sort Iteratively 
b. Implement Bubble Sort Recursively 

This file contains instructions and hints on how to complete the assignment. Do NOT change any type signatures.

This is the ONLY file for the programming part that you will submit to us. The file clearly states where you should add your code.

You can run the test cases in the TestBubbleSort.sol file with 'truffle test'. We strongly recommend that you add your own test cases. The test cases we gave you are by no means exhaustive.

Below are sample inputs/outputs that should work with both the iterative and recursive bubble sort:

Unsorted:
    uint[] array1 = [3,2];
    uint[] array2 = [1,6,3,6,6,3,3,4,0]; // Duplicates
Sorted:
    uint[] expected1 = [2,3];
    uint[] expected2 = [0,1,3,3,3,4,6,6,6];

Hence, the sorted array is from smallest to largest integer. We are considering uint only for sorting the arrays.

Do NOT import any contracts from an external package. All your code must be in Sorter.sol

Grading: 10 test cases, each is worth 8 points (5 test cases for iterative bubble sort, 5 for recursive)

Tests:
 * We will test your code with our test cases by calling 'truffle test'
 * We are using truffle's automated testing framework
 * We wrote the tests in Solidity but it is also possible to use JavaScript's Mocha framework
 * Learn how to test: https://www.trufflesuite.com/docs/truffle/testing/writing-tests-in-solidity
 * 10 test cases, each is worth 8 points (5 test cases for iterative bubble sort, 5 for recursive)
 * You are encouraged to write your own test cases but do not submit them (we give you a small subset of the test cases)
