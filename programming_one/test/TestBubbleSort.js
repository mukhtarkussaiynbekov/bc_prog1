const Sorter = artifacts.require('Sorter');

// Require the built in 'assertion' library
var assert = require('assert');

contract('Sorter', () => {
	let array1 = [8, 5, 2, 9, 5, 6, 3]; // unsorted array
	let array2 = [0]; // 1 element
	let array3 = [1, 3, 6]; // already sorted
	let array4 = [2, 2, 2]; // same element array

	let expected1 = [2, 3, 5, 5, 6, 8, 9];
	let expected2 = [0];
	let expected3 = [1, 3, 6];
	let expected4 = [2, 2, 2];

	async function iterativeArraySort(array, expected) {
		const sorter = await Sorter.deployed();
		let sortedBigArray = await sorter.iterativeBubbleSort.call(array);
		let sortedArray = sortedBigArray.map(x => x.toNumber());
		assert.deepEqual(sortedArray, expected);
	}

	async function recursiveArraySort(array, expected) {
		const sorter = await Sorter.deployed();
		let sortedBigArray = await sorter.recursiveBubbleSort.call(
			array,
			array.length
		);
		let sortedArray = sortedBigArray.map(x => x.toNumber());
		assert.deepEqual(sortedArray, expected);
	}

	// iterative
	it('testIterativeArraySortOne', async () => {
		await iterativeArraySort(array1, expected1);
	});

	it('testIterativeArraySortTwo', async () => {
		await iterativeArraySort(array2, expected2);
	});

	it('testIterativeArraySortThree', async () => {
		await iterativeArraySort(array3, expected3);
	});

	it('testIterativeArraySortFour', async () => {
		await iterativeArraySort(array4, expected4);
	});

	// recursive
	it('testRecursiveArraySortOne', async () => {
		await recursiveArraySort(array1, expected1);
	});

	it('testRecursiveArraySortTwo', async () => {
		await recursiveArraySort(array2, expected2);
	});

	it('testRecursiveArraySortThree', async () => {
		await recursiveArraySort(array3, expected3);
	});

	it('testRecursiveArraySortFour', async () => {
		await recursiveArraySort(array4, expected4);
	});
});
