// Importing math operations
import Foundation
import Glibc

// Get user input and set constants.
print("Guess a number from 1-6?")
var counter = 1

// generate random number between 1 and 6.
let randomInt = Int.random(in: 1..<7)

// Try get integer from the user.
if var input = Int(readLine()!) {

    // While loop.
    while (input != randomInt) {

        counter = counter + 1
        // Check to see if the input was valid.
        if (input > 6 || input < 1) {
            // Print if they enter a number out of range.
            print("That is not a valid guess.")
            // get user input again.
            input = Int(readLine()!)!
        } else if (input > randomInt) {
            // Print too high.
            print("Too high.")
            input = Int(readLine()!)!
        } else if (input < randomInt) {
            // Print too low.
            print("Too low.")
            input = Int(readLine()!)!
        } else {
            // Print correct.
            print("Correct!")
        }
    }
    // Print when while loop ends.
    print("You took \(counter) guesses")
} else {
    // Print when user enters string.
    print("This is not a valid input!")
}



