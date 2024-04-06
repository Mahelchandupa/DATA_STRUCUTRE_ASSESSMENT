document.getElementById('startGameBtn').addEventListener('click', startGame);


let bubbleSortTime = 0;
let insertionSortTime = 0;
let mergeSortTime = 0;
let radixSortTime = 0;
let shellSortTime = 0;
let timSortTime = 0;
let quickSortTime = 0;

let playerName;

function startGame() {

    // Generate 5000 random numbers
    const numbers = Array.from({ length: 5000 }, () => Math.floor(Math.random() * 1000000) + 1);
    
    // Sort numbers using different algorithms and record time taken
    const startBubbleSort = performance.now();
    const bubbleSorted = bubbleSort([...numbers]);
    const endBubbleSort = performance.now();
    bubbleSortTime = endBubbleSort - startBubbleSort;

    console.log(bubbleSorted)

    const startInsertionSort = performance.now();
    const insertionSorted = insertionSort([...numbers]);
    const endInsertionSort = performance.now();
    insertionSortTime = endInsertionSort - startInsertionSort;
  
    const startMergeSort = performance.now();
    const mergeSorted = mergeSort([...numbers]);
    const endMergeSort = performance.now();
    mergeSortTime = endMergeSort - startMergeSort;

    const startRadixSort = performance.now();
    const radixSorted = radixSort([...numbers]);
    const endRadixSort = performance.now();
    radixSortTime = endRadixSort - startRadixSort ;

    const startShellSort = performance.now();
    const shellSorted = shellSort([...numbers]);
    const endShellSort = performance.now();
    shellSortTime =  endShellSort - startShellSort;

    const startQuickSort = performance.now();
    const quickSorted = quickSort([...numbers]);
    const endQuickSort = performance.now();
    quickSortTime =  endQuickSort - startQuickSort;

    const startTimSort = performance.now();
    const timSorted = timSort([...numbers]);
    const endTimSort = performance.now();
    timSortTime = endTimSort - startTimSort;
    // Implement other sorting algorithms...

    // Display numbers and ask for index every 2 seconds
    const gameOutput = document.getElementById('gameOutput');
    gameOutput.innerHTML = '<h2>Sorted Numbers</h2>';
    displayNumbers(bubbleSorted);

    setTimeout(() => {
        const randomIndex1 = Math.floor(Math.random() * 20);
        const randomIndex2 = Math.floor(Math.random() * 20);
        const num1 = bubbleSorted[randomIndex1];
        const num2 = bubbleSorted[randomIndex2];
        const userIndex1 = prompt(`Enter the index of ${num1}`);
        const userIndex2 = prompt(`Enter the index of ${num2}`);
        
        if (parseInt(userIndex1) === randomIndex1 && parseInt(userIndex2) === randomIndex2) {
            playerName = prompt('Congratulations! You correctly identified both values. Enter your name:');
            saveResponse(playerName, 'correct');
            displayChart()
        } else {
            // const playerName = prompt('Sorry! You did not correctly identify both values. Enter your name:');
            // saveResponse(playerName, 'incorrect');
            alert('Sorry! You did not correctly identify both values. Try again!!');
            displayChart()
        }
    }, 42000); // 20 seconds
}

const displayChart = () => {
    // Round time values to a reasonable number of decimal places
    const roundToDecimal = (value, decimalPlaces) => {
        const factor = 10 ** decimalPlaces;
        return Math.round(value * factor) / factor;
    };

    // Round time values and ensure they are positive
    const roundedBubbleTimeTaken = roundToDecimal(bubbleSortTime, 2) || 0;
    const roundedInsertionTimeTaken = roundToDecimal(insertionSortTime, 2) || 0;
    const roundedMergeTimeTaken = roundToDecimal(mergeSortTime, 2) || 0;
    const roundedRadixTimeTaken = roundToDecimal(radixSortTime, 2) || 0;
    const roundedQuickTimeTaken = roundToDecimal(quickSortTime, 2) || 0;
    const roundedTimTimeTaken = roundToDecimal(timSortTime, 2) || 0;
    const roundedShellTimeTaken = roundToDecimal(shellSortTime, 2) || 0;

    // Create x-axis values
    const labels = ['Bubble', 'Insertion', 'Merge', 'Quick', "Shell", "Tim", "Radix"];

    // Create the chart
    new Chart("myChart", {
        type: "bar",
        data: {
            labels: labels,
            datasets: [
                {
                    label: "Time Taken",
                    data: [roundedBubbleTimeTaken, roundedInsertionTimeTaken, roundedMergeTimeTaken, roundedQuickTimeTaken, roundedShellTimeTaken, roundedTimTimeTaken, roundedRadixTimeTaken],
                    backgroundColor: ["red", "green", "blue", "orange", "purple", "pink", "yellow"],
                    borderWidth: 1
                }
            ]
        },
        options: {
            title: {
                display: true,
                text: 'Each Algorithm Taken Time',
                fontColor: '#fff' // Optional: Set the title font color
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontColor: "#000",
                        backgroundColor: "#FFF"
                    },
                    gridLines: {
                        color: 'rgba(0, 0, 0, 0.1)'
                    }
                }],
                xAxes: [{
                    ticks: {
                        fontColor: "#000",
                    },
                    gridLines: {
                        color: 'rgba(0, 0, 0, 0.1)'
                    }
                }]
            }
        }
    });

}

function displayNumbers(numbers) {
    let i = 0;
    const gameOutput = document.getElementById('gameOutput');
    gameOutput.innerHTML = ''; // Clear previous content

    const interval = setInterval(() => {
        if (i < Math.min(numbers.length, 20)) { // Loop through only the first 20 elements
            gameOutput.innerHTML = numbers[i]
            i++;
        } else {
            clearInterval(interval);
        }
    }, 2000); // 2 seconds
}

function saveResponse(playerName, correctResponse) {
    console.log(
        playerName,
        bubbleSortTime,
        insertionSortTime,
        correctResponse
    )
    fetch('http://localhost:3000/saveGameData', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({ playerName, bubbleSortTime, insertionSortTime, mergeSortTime, radixSortTime, shellSortTime, quickSortTime, timSortTime, correctResponse })
    })
    .then(response => {
        if (response.ok) {
            console.log('Response saved successfully');
        } else {
            console.error('Error saving response:', response.statusText);
        }
    })
    .catch(error => {
        console.error('Error saving response:', error);
    });
}

function bubbleSort(arr) {
    const len = arr.length;
    for (let i = 0; i < len; i++) {
        for (let j = 0; j < len - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                const temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
    return arr;
}

function insertionSort(arr) {
    const len = arr.length;
    for (let i = 1; i < len; i++) {
        let j = i - 1;
        const temp = arr[i];
        while (j >= 0 && arr[j] > temp) {
            arr[j + 1] = arr[j];
            j--;
        }
        arr[j + 1] = temp;
    }
    return arr;
}

function mergeSort(arr) {
    if (arr.length <= 1) {
        return arr;
    }

    const middle = Math.floor(arr.length / 2);
    const left = arr.slice(0, middle);
    const right = arr.slice(middle);

    return merge(mergeSort(left), mergeSort(right));
}

function merge(left, right) {
    let result = [];
    let leftIndex = 0;
    let rightIndex = 0;

    while (leftIndex < left.length && rightIndex < right.length) {
        if (left[leftIndex] < right[rightIndex]) {
            result.push(left[leftIndex]);
            leftIndex++;
        } else {
            result.push(right[rightIndex]);
            rightIndex++;
        }
    }

    return result.concat(left.slice(leftIndex)).concat(right.slice(rightIndex));
}

function radixSort(arr) {
    const getMax = (arr) => Math.max(...arr);

    const countSort = (arr, exp) => {
        const output = Array(arr.length).fill(0);
        const count = Array(10).fill(0);

        for (let i = 0; i < arr.length; i++) {
            count[Math.floor(arr[i] / exp) % 10]++;
        }

        for (let i = 1; i < 10; i++) {
            count[i] += count[i - 1];
        }

        for (let i = arr.length - 1; i >= 0; i--) {
            output[count[Math.floor(arr[i] / exp) % 10] - 1] = arr[i];
            count[Math.floor(arr[i] / exp) % 10]--;
        }

        for (let i = 0; i < arr.length; i++) {
            arr[i] = output[i];
        }
    };

    const max = getMax(arr);

    for (let exp = 1; Math.floor(max / exp) > 0; exp *= 10) {
        countSort(arr, exp);
    }

    return arr;
}

function shellSort(arr) {
    const n = arr.length;
    let gap = Math.floor(n / 2);

    while (gap > 0) {
        for (let i = gap; i < n; i++) {
            const temp = arr[i];
            let j = i;

            while (j >= gap && arr[j - gap] > temp) {
                arr[j] = arr[j - gap];
                j -= gap;
            }

            arr[j] = temp;
        }
        gap = Math.floor(gap / 2);
    }

    return arr;
}

function quickSort(arr) {
    if (arr.length <= 1) {
        return arr;
    }

    const pivot = arr[Math.floor(arr.length / 2)];
    const left = [];
    const right = [];

    for (let i = 0; i < arr.length; i++) {
        if (i === Math.floor(arr.length / 2)) {
            continue;
        }
        if (arr[i] < pivot) {
            left.push(arr[i]);
        } else {
            right.push(arr[i]);
        }
    }

    return quickSort(left).concat(pivot, quickSort(right));
}

function timSort(arr) {
    const MIN_MERGE = 32;

    const insertionSort = (arr, left, right) => {
        for (let i = left + 1; i <= right; i++) {
            let key = arr[i];
            let j = i - 1;
            while (j >= left && arr[j] > key) {
                arr[j + 1] = arr[j];
                j--;
            }
            arr[j + 1] = key;
        }
    };

    const merge = (arr, left, mid, right) => {
        const len1 = mid - left + 1;
        const len2 = right - mid;

        const leftArr = new Array(len1);
        const rightArr = new Array(len2);

        for (let i = 0; i < len1; i++) {
            leftArr[i] = arr[left + i];
        }
        for (let j = 0; j < len2; j++) {
            rightArr[j] = arr[mid + 1 + j];
        }

        let i = 0;
        let j = 0;
        let k = left;

        while (i < len1 && j < len2) {
            if (leftArr[i] <= rightArr[j]) {
                arr[k] = leftArr[i];
                i++;
            } else {
                arr[k] = rightArr[j];
                j++;
            }
            k++;
        }

        while (i < len1) {
            arr[k] = leftArr[i];
            i++;
            k++;
        }

        while (j < len2) {
            arr[k] = rightArr[j];
            j++;
            k++;
        }
    };

    const mergeRuns = (arr, left, mid, right) => {
        const len1 = mid - left + 1;
        const len2 = right - mid;

        if (len1 <= len2) {
            insertionSort(arr, left, mid);
        } else {
            merge(arr, left, mid, right);
        }
    };

    const n = arr.length;
    for (let size = MIN_MERGE; size < n; size *= 2) {
        for (let left = 0; left < n; left += 2 * size) {
            const mid = Math.min(left + size - 1, n - 1);
            const right = Math.min(left + 2 * size - 1, n - 1);
            mergeRuns(arr, left, mid, right);
        }
    }

    return arr;
}

