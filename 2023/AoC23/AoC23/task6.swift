//
//  task6.swift
//  AoC23
//
//  Created by a on 16/12/2023.
//

import Foundation

enum Task6 { }

extension Task6 {
    
    static let input1 = [
        "Time:      7  15   30",
        "Distance:  9  40  200",
    ]
    
    static let input2 = [
        "Time:        59     68     82     74",
        "Distance:   543   1020   1664   1022",
    ]
    
    static var INPUT = input2
    static let PART2 = true
    
    static func main() {
        if PART2 {
            INPUT = INPUT.map { $0.replacingOccurrences(of: " ", with: "") }
        }
        
        let times = INPUT[0].matches(of: /\d+/).map { Int($0.output)! }
        let distances = INPUT[1].matches(of: /\d+/).map { Int($0.output)! }
        
        var result = 1
        for (t, d) in zip(times, distances) {
            var tmp = 0
            for i in 0 ... t {
                let speed = i
                let travelledDistance = speed * (t - i)
                if travelledDistance > d {
                    tmp += 1
                }
            }
            
            if tmp > 0 {
                result *= tmp
            }
        }
        
        print("Result1: \(result)")
        
    }
}
