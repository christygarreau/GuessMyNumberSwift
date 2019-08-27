//
//  main.swift
//  GuessMyNumber
//
//  Created by Christy Garreau on 8/22/19.
//  Copyright © 2019 Christy. All rights reserved.
//

import Foundation

class GuessMyNumberGame{
    var guesses: Int
    var mysteryNumber: Int
    
    init(){
        self.guesses = 0
        mysteryNumber = Int.random(in: 1...100)
    }
        
    func playOneRound(){
        print("Thinking of number between 1 and 100. Guess pls![\(mysteryNumber)]")
        while let userInput = readLine(){
            if let guess = Int(userInput){
                if (guess != mysteryNumber) {
                    if (guess < mysteryNumber){
                        print("Too low. Try Again.")
                    } else {
                        print("Too high. Try again.")
                    }
                } else {
                    print("You Won")
                    return
                }
            } else {
                print("Not valid. Try again")
            }
        }
    }
    
    func play(){
        print("Welcome")
        var goAgain = "Y"
        while goAgain == "Y"{
            playOneRound()
            mysteryNumber = Int.random(in: 1...100)
            print("Enter Y to play agian")
            goAgain = readLine()!
        }
        print("Bye!")
    }
}

GuessMyNumberGame().play()

/*
print("Welcome to Guess My Number!")
var goAgain = "Y"
var mysteryNumber = Int.random(in:1...100)
while goAgain == "Y" {
    print("Thinking of number between 1 and 100. Guess pls! [\(mysteryNumber)]")
    while let userInput = readLine(){ //add while unguessed or something
        if let guess = Int(userInput){
            
            if (guess != mysteryNumber) {
                if (guess < mysteryNumber){
                    print("Too low. Try Again.")
                } else {
                    print("Too high. Try again.")
                }
            } else {
                print("eyoo u won")
            }
        } else {
            print("Not valid. Try again")
    }
}
print("cya")
}
*/

