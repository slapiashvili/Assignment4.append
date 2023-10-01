import UIKit

//EXERCISE #1

func returnFactorial(_ n: Int) -> Int {
    if n < 0 {
        return 0
    } else if n == 0 || n == 1 {
        return 1
    } else {
        var result = 1
        for i in 2...n {
            result *= i
        }
        return result
    }
}

let number = 5
let result = returnFactorial(number)
print(result)

//we defined a function that would give us a factorial, we used If-else commands to make sure that it would cover negative, 0, 1 and all numbers. We tested the function on the number 5.

//EXERCISE #2

func returnFibonacci(count: Int) -> [Int] {
    var fibonacciNumbers: [Int] = []
    
    if count <= 0 {
        return fibonacciNumbers
    }
    
    var a = 0
    var b = 1
    
    fibonacciNumbers.append(a)
    
    if count > 1 {
        fibonacciNumbers.append(b)
    }
    
    for _ in 2..<count {
        let next = a + b
        fibonacciNumbers.append(next)
        a = b
        b = next
    }
    
    return fibonacciNumbers
}

print(returnFibonacci(count: 20))

// what we did was calculate the fibonacci numbers witha function in which we use an array where we add the numbers one by one.

//EXERCISE #3

func squareArray(_ numbers:[Int]) -> [Int] {
    return numbers.map {$0 * $0}
}

let initialNum = [1, 2, 3, 4, 5, 6, 7]
print(squareArray(initialNum))

//we mapped the array and squared each int, giving us a chance to print the array squarred.

//EXERCISE #4

func isItPalindrome(_ input: String) -> Bool {
    let lowercaseInput = input.lowercased()
    
    var characters: [Character] = []
    for char in lowercaseInput {
        if char.isLetter || char.isNumber {
            characters.append(char)
        }
    }
    var left = 0
    var right = characters.count - 1
        
    while left < right {
        if characters[left] != characters[right] {
            return false
               }
            left += 1
            right -= 1
        }
    
        return true
}

var result1 = isItPalindrome("Ai ra mzis sizmaria")
print(result1)

//this function first puts the string into lowercase letters and then checks if it is a palindrome or not. returns true/false

//EXERCISE #5

func wordCounter(_ input: String) -> [String: Int] {
    var wordCounts = [String: Int]()
    let words = input.lowercased().components(separatedBy: CharacterSet.alphanumerics.inverted)
    
    for word in words {
        if !word.isEmpty {
            wordCounts[word, default: 0] += 1
        }
    }
            
  return wordCounts
            
}

let inputstring = "I am having a great day today. I hope you are having a great day too!"
print(wordCounter(inputstring))

//we started with an empty list , if the word is not empty, we check and increase by 1 if specific things are correct. at the end we are left with a dictionary that counts the amount of words.

//EXERCISE #6

let binaryGenerator: (Int) -> String = { decimalNumber in
    var binaryString = ""
    var ourNumber = decimalNumber
    
    while ourNumber > 0 {
        let remainder = ourNumber % 2
        binaryString = String(remainder) + binaryString
        ourNumber /= 2
    }
    
    if binaryString.isEmpty {
        binaryString = "0"
    }
    
    return binaryString
}

let ourNumber = 13
let binaryString = binaryGenerator(ourNumber)
print (binaryString)

// this closure takes in a decimal and finds the remainder after dividing it by 2 and writes the string of binary version of it.


//EXERCISE #7

let oddKiller: ([Int]) -> [Int] = {
    numbers in return numbers.filter { $0 % 2 == 0 }
}

let amountOfPeople = [1, 982, 23, 2, 4, 5, 22, 5, 19, 28, 9982, 235, 67, 87, 84, 1891]
let eliminated = oddKiller(amountOfPeople)
print(eliminated)

//we took amount of people in each group and got rid of odd ones to see who already has a pair in each group.


//EXERCISE #8

let promotionBonus: ([Int]) -> [Int] = {
    numbers in return numbers.map { $0 * 10}
}

let customerPoints = [23, 21, 6, 8, 42, 98, 4, 1, 9, 54, 877]
print(promotionBonus(customerPoints))

//we mapped the array containing customer points and applied a promotion bonus of multiplying their scores by 10 for Christmas.

//EXERCISE #9

func printSum(_ numbers: [Int], completion: @escaping(Int) -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 3) {
        let sum = numbers.reduce(0, +)
        completion(sum)
    }
}

let numbers = [5,2,4,1,4,5,7,123,34]
printSum(numbers) { sum in
    print("Sum after 3 seconds: \(sum)")
}

//this function prints the sum from the array after 3 seconds of completion.

//9
func filterEvens(_ numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 == 0}
}

let groupsIDs = [2345, 3423, 634252, 145345, 143534, 86732, 25467, 2457, 463111, 75723]
print(filterEvens(groupsIDs))

//in this function we used the high rang function .filter to filter out the odds.
