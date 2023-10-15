//
//  ViewController.swift
//  homework5
//
//  Created by Алексей Козел on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let a = 10
        let b = 11
        let c = 11.2
        let d = 2.2
        
        //fist task
        
        let summary = sum(first: a, second: b)
        print ("Sum Int:", summary)
        let summaryDouble = sum(first: c, second: d)
        print("Sum Double:", summaryDouble)
        let minusInt = minus(first: a, second: b)
        print ("Minus Int:", minusInt)
        let minusDouble = minus(first: c, second: d)
        print("Minus Double:", minusDouble)
        let multiplyInt = multiply(first: a, second: b)
        print ("Multiply Int:", multiplyInt)
        let multiplyDouble = multiply(first: c, second: d)
        print("Multiply Double:", multiplyDouble)
        let splitInt = split(first: a, second: b)
        print ("Split Int:", splitInt)
        let splitDouble = split(first: c, second: d)
        print("Split double:", splitDouble)
        
        //second task 1st version
        
        let fourDigit = 2244
        let sumDigit = String(fourDigit).compactMap{Int(String($0))}.reduce(0, +)
        print("First version digit sum:", sumDigit)
        
        //second task 2nd version
        
        let sumDigitSec = sumDigitSecond(to: fourDigit)
        print("Second version digit sum:", sumDigitSec)
        
        //third task
        let firstString = "авб"
        let secondString = "ввш"
        let comparingResult = comparing(to: firstString, to: secondString)
        print("Comparing result = \(comparingResult)")
    
        //fourth task, задание закомментил, бесконечная рекурсия
//        var count = 0
//        recursion(number: count)
        
        //fifth task
        let expNumber = 4
        let expResult = exponentiation(first: expNumber)
        print(expResult)
        
    }
    
    func exponentiation(first num: Int, second: Int = 3) -> Int{
        let result = pow(Double(num), Double(second))
        return Int(result)
    }
    
//    func recursion(number: Int){
//        var number = number
//        print(number)
//        recursion(number: number + 1)
//    }

    func comparing(to s: String, to t: String) -> Bool{
        var result: Bool
        if s > t {
            result = true
        } else {
            result = false
        }
        return result
    }
    
    func sumDigitSecond(to n : Int) -> Int {
        var n = n
        var sum = 0
        while n > 0 {
            sum += n % 10
            n /= 10
        }
        return sum
        }
    }
    
    func sum(first a: Int, second b: Int) -> Int {
        return a + b
    }

    func sum(first a: Double, second b: Double) -> Double{
        return a + b
    }
    
    func minus(first a: Int, second b: Int) -> Int {
        return a - b
    }

    func minus(first a: Double, second b: Double) -> Double{
        return a - b
    }
    
    func multiply(first a: Int, second b: Int) -> Int {
        return a * b
    }

    func multiply(first a: Double, second b: Double) -> Double{
        return a * b
    }
    func split(first a: Int, second b: Int) -> Int {
        return a / b
    }
    
    func split(first a: Double, second b: Double) -> Double{
        return a / b
    }

