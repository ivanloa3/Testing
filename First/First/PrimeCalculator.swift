//
//  PrimeCalculator.swift
//  First
//
//  Created by Ivan Erwin Lopez Ansaldo on 8/22/19.
//  Copyright © 2019 Ivan Erwin Lopez Ansaldo. All rights reserved.
//

import Foundation

// MARK: Sieve of Eratosthenes algorithm
struct PrimeCalculator {
    
//    static func calculate(upTo max: Int, completion: @escaping ([Int]) -> Void) {
    static func calculate(upTo max: Int) -> [Int] {
        // push out work straight to a background thread
//        DispatchQueue.global().async {
        
            guard max > 1 else {return []}
            
            // mark all our numbers as prime
            var sieve = [Bool](repeating: true, count: max)
            
            // 0 and 1 are by definition not prime
            sieve[0] = false
            sieve[1] = false
            
            for number in 2 ..< max {
                if sieve[number] == true {
                    for multiple in stride(from: number * number, to: sieve.count, by: number) {
                        sieve[multiple] = false
                    }
                }
            }
        let primes = sieve.enumerated().compactMap { $1 == true ? $0 : nil}
//        }
        return primes
    }
}
