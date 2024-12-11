//
//  day11.swift
//  AoC2024
//
//  Created by a on 11/12/2024.
//

class Day11 {
    
    let input1 = "125 17"
    
    let input2 = "6 11 33023 4134 564 0 8922422 688775"
    
    func dowork() {
        let input = input2.split(separator: " ").map { String($0) }

        var current = input
        for _ in 0 ..< 25 {
//            print(current.joined(separator: " "))

            var newCurrent = [Int]()
            for s in current {
                let i = Int(s)!
                
                if i == 0 {
                    newCurrent.append(1)
                } else if s.count % 2 == 0 {
                    let left = String( s[s.startIndex ..< s.index(s.startIndex, offsetBy: s.count / 2)] )
                    //s.substring(to: s.index(s.startIndex, offsetBy: s.count / 2))
                    let right = String( s[s.index(s.startIndex, offsetBy: s.count / 2) ..< s.endIndex] )
                    //s.substring(from: s.index(s.startIndex, offsetBy: s.count / 2))
                    
                    newCurrent.append(Int(left)!)
                    newCurrent.append(Int(right)!)
                    
                } else {
                    newCurrent.append(i * 2024)
                }
                
            }
            
            current = newCurrent.map { "\($0)" }
        }

        print(current.count)
    }
}
