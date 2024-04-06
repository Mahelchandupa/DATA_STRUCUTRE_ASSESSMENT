const numbers = [];
let randomNumber = null;

let binaryStartTime = null;
let binaryIndex = null;
let binaryEndTime = null;
let binaryTimeTaken = null;

let jumpStartTime = null;
let jumpIndex = null;
let jumpEndTime = null;
let jumpTimeTaken = null;

let exponentialStartTime = null;
let exponentialIndex = null;
let exponentialEndTime = null;
let exponentialTimeTaken = null;

let fibonacciStartTime = null;
let fibonacciIndex = null;
let fibonacciEndTime = null;
let fibonacciTimeTaken = null;

const options_container = document.querySelector(".options-container");
const startContainer = document.querySelector(".start");
const startBtn = document.querySelector(".start-btn");
const mainContainer = document.querySelector(".main-container");
const ranodmNmuContainer = document.querySelector(`#ranodmNmu`)
const restartBtn = document.querySelector(".restart-btn");
const dialogBox = document.querySelector(" #dialog-box");

let username = null
let sortedNumbers;
let randomNumberIndex;


function submitName() {
    username = document.getElementById("username").value;
    if (username.trim() !== "") {
        dialogBox.style.display = "none";

        fetch("http://localhost:3000/save-user", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({ username }),
        })

            .then(response => response.json())
            .then(data => {
                alert("your prediction is correct")
            })

    }
}


const generateRandomNumbers = () => {
    for (let i = 0; i <= 5000; i++) {
        numbers.push(Math.floor(Math.random() * 1000000) + 1);
    }
    return numbers;
};

function mergeSort(arr) {
    if (arr.length < 2) {
        return arr;
    }

    const middle = Math.floor(arr.length / 2);
    const left = arr.slice(0, middle);
    const right = arr.slice(middle);

    return merge(mergeSort(left), mergeSort(right));
}

function merge(left, right) {
    const result = [];

    while (left.length && right.length) {
        if (left[0] < right[0]) {
            result.push(left.shift());
        } else {
            result.push(right.shift());
        }
    }

    return result.concat(left).concat(right);
}


const generateRandomNum = (sortedNumbers) => {
    const min = 0;
    const max = sortedNumbers.length - 1;
    const randomIndex = Math.floor(Math.random() * (max - min + 1)) + min;
    console.log(`sorted numbers: ${sortedNumbers}`)
    return randomIndex;
};

const startGame = () => {

    randomNumber = null;

    binaryStartTime = null;
    binaryIndex = null;
    binaryEndTime = null;
    binaryTimeTaken = null;

    jumpStartTime = null;
    jumpIndex = null;
    jumpEndTime = null;
    jumpTimeTaken = null;

    exponentialStartTime = null;
    exponentialIndex = null;
    exponentialEndTime = null;
    exponentialTimeTaken = null;

    fibonacciStartTime = null;
    fibonacciIndex = null;
    fibonacciEndTime = null;
    fibonacciTimeTaken = null

    if (restartBtn.style.display === "block") {
        restartBtn.style.display = "none";
    }
    if (mainContainer.style.display === "block") {
        mainContainer.style.display = "none";
    }
    if (options_container.style.display === "block") {
        options_container.style.display = "none";
    }
    startContainer.style.display = 'none';

    generateRandomNumbers();
    sortedNumbers = mergeSort(numbers);
    console.log(`sorted numbers: ${sortedNumbers}`)
    randomNumberIndex = generateRandomNum(sortedNumbers);
    console.log(`Generating random numbers ${randomNumberIndex}`)
    randomNumber = sortedNumbers[randomNumberIndex];
    findRandomNumUsingAlgorithm(randomNumber);
    userPredictOptions();

};

const userPredictOptions = () => {

    mainContainer.style.display = 'flex';

    ranodmNmuContainer.textContent = `Random Nmuber: ${randomNumber}`;

    const labels = ["Option 1", "Option 2", "Option 3", "Option 4"];

    // Create an array to store the values of the buttons
    const buttonValues = [];

    // Generate unique random numbers between 1 to 100 for three buttons
    while (buttonValues.length < 3) {
        const randomNumber = Math.floor(Math.random() * 5000) + 1;
        if (randomNumber !== binaryIndex && !buttonValues.includes(randomNumber)) {
            buttonValues.push(randomNumber);
        }
    }

    // Add the binaryIndex value to the array
    buttonValues.push(binaryIndex);

    // Shuffle the button values to randomize their positions
    buttonValues.sort(() => Math.random() - 0.5);

    // Create and append buttons to the grid
    buttonValues.forEach((value, index) => {
        const button = document.createElement("button");
        button.textContent = value;
        button.value = value;
        button.addEventListener('click', () => checkPrediction(value))
        options_container.appendChild(button);
    });
};

const checkPrediction = (value) => {
    if (parseInt(value) === randomNumberIndex) {

        dialogBox.style.display = 'flex';
        submitName()

    } else {
        alert("your prediction is incorrect")
    }

    displayChart()
    displayLineChart()
    compareWithAllDataSet()

    restartBtn.style.display = "block"
}


const compareWithAllDataSet = () => {
    fetch("http://localhost:3000/data", {
        method: "GET",
        headers: {
            "Content-Type": "application/json",
        },
    })
        .then(response => response.json())
        .then(data => {
            // Initialize objects to store total time for each algorithm
            const totalTimeByAlgorithm = {
                binary: 0,
                jump: 0,
                exponential: 0,
                fibonacci: 0
            };

            // Iterate through the data and calculate total time for each algorithm
            data.forEach(item => {
                totalTimeByAlgorithm.binary += item.binary_time_taken;
                totalTimeByAlgorithm.jump += item.jump_time_taken;
                totalTimeByAlgorithm.exponential += item.exponential_time_taken;
                totalTimeByAlgorithm.fibonacci += item.fibonacci_time_taken;
            });

            console.log(totalTimeByAlgorithm.binary)
            console.log(totalTimeByAlgorithm.jump)
            console.log(totalTimeByAlgorithm.exponential)
            console.log(totalTimeByAlgorithm.fibonacci)

            // Get canvas element to render the chart
            const ctx = document.getElementById('algorithmChart').getContext('2d');

            // Create a new chart instance
            const chart = new Chart(ctx, {
                type: 'bar',
                data: {
                    labels: ['Binary Search', 'Jump Search', 'Exponential Search', 'Fibonacci Search'],
                    datasets: [{
                        label: 'Total Time Taken (ms)',
                        data: [
                            totalTimeByAlgorithm.binary,
                            totalTimeByAlgorithm.jump,
                            totalTimeByAlgorithm.exponential,
                            totalTimeByAlgorithm.fibonacci
                        ],
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.5)',
                            'rgba(54, 162, 235, 0.5)',
                            'rgba(255, 206, 86, 0.5)',
                            'rgba(75, 192, 192, 0.5)',
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)',
                            'rgba(255, 206, 86, 1)',
                            'rgba(75, 192, 192, 1)',
                        ],
                        borderWidth: 1
                    }]
                },
                options: {
                    title: {
                        display: true,
                        text: 'Total time taken by algorithm, all Data Sets',
                        fontColor: '#fff'
                    },
                    scales: {
                        yAxes: [{
                            ticks: {
                                beginAtZero: true,
                                fontColor: "#fff",
                                backgroundColor: "#FFF"
                            },
                            gridLines: {
                                color: 'rgba(255, 255, 255, 0.1)'
                            }
                        }],
                        xAxes: [{
                            ticks: {
                                fontColor: "#fff",
                            },
                            gridLines: {
                                color: 'rgba(255, 255, 255, 0.1)'
                            }
                        }]
                    }
                }
            });
        })
        .catch((error) => console.error("Error retrieving data:", error));
}

const findRandomNumUsingAlgorithm = (randomNumber) => {
    console.log(`random number ${randomNumber}`);

    binaryStartTime = performance.now();
    binaryIndex = binarySearch(sortedNumbers, randomNumber);
    binaryEndTime = performance.now();
    binaryTimeTaken = binaryEndTime - binaryStartTime;

    console.log(`binary time Taken : ${binaryTimeTaken}`)
    console.log(`binary index found  : ${binaryIndex}`)



    jumpStartTime = performance.now();
    jumpIndex = jumpSearch(sortedNumbers, randomNumber);
    jumpEndTime = performance.now();
    jumpTimeTaken = jumpEndTime - jumpStartTime;

    console.log(`jump time Taken : ${jumpTimeTaken}`)
    console.log(`jump index found  : ${jumpIndex}`)


    exponentialStartTime = performance.now();
    exponentialIndex = exponentialSearch(sortedNumbers, randomNumber);
    exponentialEndTime = performance.now();
    exponentialTimeTaken = exponentialEndTime - exponentialStartTime;

    console.log(`exponential Time taken : ${exponentialTimeTaken}`)
    console.log(`expon index found  : ${exponentialIndex}`)


    fibonacciStartTime = performance.now();
    fibonacciIndex = fibonacciSearch(sortedNumbers, randomNumber);
    fibonacciEndTime = performance.now();
    fibonacciTimeTaken = fibonacciEndTime - fibonacciStartTime;

    console.log(`fiobonacci time taken : ${fibonacciTimeTaken}`)
    console.log(`fibonacci index found  : ${fibonacciIndex}`)

    insertData(randomNumber)
};

const insertData = (randomNumber) => {
    // Prepare the data array
    const dataArray = {
        binary_name: "Binary Search",
        binary_index_found: binaryIndex,
        binary_time_taken: binaryTimeTaken,
        jump_name: "Jump Search",
        jump_index_found: jumpIndex,
        jump_time_taken: jumpTimeTaken,
        exponential_name: "Exponential Search",
        exponential_index_found: exponentialIndex,
        exponential_time_taken: exponentialTimeTaken,
        fibonacci_name: "Fibonacci Search",
        fibonacci_index_found: fibonacciIndex,
        fibonacci_time_taken: fibonacciTimeTaken,
        value: randomNumber
    };

    // Send the request with the adjusted payload structure
    fetch("http://localhost:3000/save-index-predict-result", {
        method: "POST",
        headers: {
            "Content-Type": "application/json",
        },
        body: JSON.stringify(dataArray),
    })
        .then((response) => {
            if (response.ok) {
                console.log("Search time recorded successfully");
            } else {
                console.error("Failed to record search time");
            }
        })
        .catch((error) => console.error("Error recording search time:", error));
};

const displayChart = () => {
    // Round time values to a reasonable number of decimal places
    const roundToDecimal = (value, decimalPlaces) => {
        const factor = 10 ** decimalPlaces;
        return Math.round(value * factor) / factor;
    };

    // Round time values and ensure they are positive
    const roundedBinaryTimeTaken = roundToDecimal(binaryTimeTaken, 2) || 0;
    const roundedJumpTimeTaken = roundToDecimal(jumpTimeTaken, 2) || 0;
    const roundedExponentialTimeTaken = roundToDecimal(exponentialTimeTaken, 2) || 0;
    const roundedFibonacciTimeTaken = roundToDecimal(fibonacciTimeTaken, 2) || 0;

    // Create x-axis values
    const labels = ['Binary', 'Jump', 'Exponential', 'Fibonacci'];

    // Create the chart
    new Chart("myChart", {
        type: "bar",
        data: {
            labels: labels,
            datasets: [
                {
                    label: "Time Taken",
                    data: [roundedBinaryTimeTaken, roundedJumpTimeTaken, roundedExponentialTimeTaken, roundedFibonacciTimeTaken],
                    backgroundColor: ["red", "green", "blue", "orange"],
                    borderWidth: 1
                }
            ]
        },
        options: {
            title: {
                display: true,
                text: 'Each Algorithm Taken Time for find the Random Number',
                fontColor: '#fff' // Optional: Set the title font color
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontColor: "#fff",
                        backgroundColor: "#FFF"
                    },
                    gridLines: {
                        color: 'rgba(255, 255, 255, 0.1)'
                    }
                }],
                xAxes: [{
                    ticks: {
                        fontColor: "#fff",
                    },
                    gridLines: {
                        color: 'rgba(255, 255, 255, 0.1)'
                    }
                }]
            }
        }
    });

}

const displayLineChart = () => {
    // Round time values to a reasonable number of decimal places
    const roundToDecimal = (value, decimalPlaces) => {
        const factor = 10 ** decimalPlaces;
        return Math.round(value * factor) / factor;
    };

    // Create x-axis values
    const labels = ['Binary', 'Jump', 'Exponential', 'Fibonacci'];

    // Create the chart
    new Chart("myChart1", {
        type: "line",
        data: {
            labels: labels,
            datasets: [
                {
                    label: "Time Taken",
                    data: [
                        roundToDecimal(binaryTimeTaken, 2) || 0,
                        roundToDecimal(jumpTimeTaken, 2) || 0,
                        roundToDecimal(exponentialTimeTaken, 2) || 0,
                        roundToDecimal(fibonacciTimeTaken, 2) || 0
                    ],
                    borderColor: "rgb(255,99,132)",
                    borderWidth: 2,
                    fill: false
                }
            ]
        },
        options: {
            title: {
                display: true,
                text: 'Each Algorithm Taken Time for find the Random Number',
                fontColor: '#eee'
            },
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true,
                        fontColor: "#fff",
                        backgroundColor: "#FFF"
                    },
                    gridLines: {
                        color: 'rgba(255, 255, 255, 0.1)'
                    }
                }],
                xAxes: [{
                    ticks: {
                        fontColor: "#fff",
                    },
                    gridLines: {
                        color: 'rgba(255, 255, 255, 0.1)'
                    }
                }]
            }
        }
    });

}


//Binary Search algorithm
const binarySearch = (arr, value) => {
    const arrayLength = arr.length;
    let low = 0;
    let high = arrayLength - 1;
    while (low <= high) {
        let mid = Math.floor((low + high) / 2);
        if (arr[mid] === value) {
            return mid;
        } else if (arr[mid] < value) {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    return -1;
};

//Jump Search Algorithm
function jumpSearch(arr, x) {
    const n = arr.length;
    let step = Math.floor(Math.sqrt(n));
    let prev = 0;

    while (arr[Math.min(step, n) - 1] < x) {
        prev = step;
        step += Math.floor(Math.sqrt(n));
        if (prev >= n) return -1;
    }

    while (arr[prev] < x) {
        prev++;
        if (prev === Math.min(step, n)) return -1;
    }

    if (arr[prev] === x) return prev;

    return -1;
}

//Exponential Search
function exponentialSearch(arr, x) {
    const n = arr.length;
    if (arr[0] === x) return 0;

    let i = 1;
    while (i < n && arr[i] <= x) {
        i *= 2;
    }

    return arr.slice(i / 2, Math.min(i, arr.length)).indexOf(x) + i / 2;
}

// Fibonacci Search
function fibonacciSearch(arr, x) {
    console.log(arr, x);
    const n = arr.length;
    let fibMMm2 = 0;
    let fibMMm1 = 1;
    let fibM = fibMMm2 + fibMMm1;

    while (fibM < n) {
        fibMMm2 = fibMMm1;
        fibMMm1 = fibM;
        fibM = fibMMm2 + fibMMm1;
    }

    let offset = -1;

    while (fibM > 1) {
        const i = Math.min(offset + fibMMm2, n - 1);

        if (arr[i] < x) {
            fibM = fibMMm1;
            fibMMm1 = fibMMm2;
            fibMMm2 = fibM - fibMMm1;
            offset = i;
        } else if (arr[i] > x) {
            fibM = fibMMm2;
            fibMMm1 = fibMMm1 - fibMMm2;
            fibMMm2 = fibM - fibMMm1;
        } else {
            return i;
        }
    }

    if (fibMMm1 && arr[offset + 1] === x) return offset + 1;

    return -1;
}

// start game
startBtn.addEventListener("click", startGame);
restartBtn.addEventListener("click", () => {
    location.reload();
});
console.log(`Before Sort : ${numbers}`);
console.log(`After Sort : ${sortedNumbers}`);
console.log(`index of the random number : ${binaryIndex}`);
