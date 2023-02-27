// Importing math operations
import Foundation
import Glibc

// Get user input and set constants.
print("Guess a number from 1-6?")
var counter = 0
let randomInt = Int.random(in: 1..<7)
if let input = Int(readLine()!) {
    while (input != randomInt) {
        counter = counter + 1
        // Check to see if the input was valid.
        if (input > 6 || input < 1) {

            print("That is not a valid guess.")
        } else if (input > randomInt) {
            print("Too high.")
        } else if (input < randomInt) {
            print("Too low.")
        } else {
            print("Correct!")
        }
    }
} else {
    print("This is not a valid input!")
}
print("You took /(counter) guesses")


