//
//  main.swift
//  GuessMyNumber
//
//  Created by Christy Garreau on 8/22/19.
//  Copyright © 2019 Christy. All rights reserved.
//

import Foundation

class RockPaperScissors{
    var randomNumber: Int
    var computerChoice: String
    var userNumber: Int
    
    init(){
        randomNumber = Int.random(in: 1...3)
        self.computerChoice = "Rock"
        userNumber = 1
    }
    
    func playOneRound(){
        print("Rock, Paper, Scissors, Shoot!!!!")
        while let userInput = readLine(){
            
            
            
            if (randomNumber == 1) { computerChoice = "Rock" }
            else if (randomNumber == 2){ computerChoice = "Paper" }
            else { computerChoice = "Scissors" }
            print(computerChoice)
            
            if let userChoice = Int(userInput){
                while () {
                    if (userChoice == "Rock"){ userNumber = 1 }
                    else if (userChoice == "Paper"){ userNumber = 2 }
                    else if (userChoice == "Scissors"){ userNumber = 3 }
                    else { print("Invalid Entry")}
                
                    if (randomNumber == userNumber) { print("Its a tie!") }
                    else if ((randomNumber - userNumber) % 3 == 1) { print("You win") }
                    else { print("You lose") }
                }
            }
        }
    }
    
    func play(){
        print("Welcome")
        var goAgain = "Y"
        while goAgain == "Y"{
            playOneRound()
            randomNumber = Int.random(in: 1...3)
            print("Enter Y to play agian")
            goAgain = readLine()!
        }
        print("Bye!")
    }
}

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

