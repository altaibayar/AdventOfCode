//
//  day21.swift
//  AoC2024
//
//  Created by a on 30/12/2024.
//

class Day21 {

    typealias Pos = (x: Int, y: Int)
    
    let input1 = [
        "029A",
        "980A",
        "179A",
        "456A",
        "379A",
    ]
    
    let input2 = [
        "129A",
        "176A",
        "985A",
        "170A",
        "528A",
    ]
    
    /*
     +---+---+---+
     | 7 | 8 | 9 |
     +---+---+---+
     | 4 | 5 | 6 |
     +---+---+---+
     | 1 | 2 | 3 |
     +---+---+---+
         | 0 | A |
         +---+---+
     
         +---+---+
         | ^ | A |
     +---+---+---+
     | < | v | > |
     +---+---+---+
     */
    
    let NUMERIC_PAD: [Character: Pos] = [
        "7": (x: 0, y: 0),
        "8": (x: 1, y: 0),
        "9": (x: 2, y: 0),
        
        "4": (x: 0, y: 1),
        "5": (x: 1, y: 1),
        "6": (x: 2, y: 1),
        
        "1": (x: 0, y: 2),
        "2": (x: 1, y: 2),
        "3": (x: 2, y: 2),

        "0": (x: 1, y: 3),
        "A": (x: 2, y: 3),
    ]
    
    let DIRECTIONAL_PAD: [Character: Pos] = [
        "^": (x: 1, y: 0),
        "A": (x: 2, y: 0),

        "<": (x: 0, y: 1),
        "v": (x: 1, y: 1),
        ">": (x: 2, y: 1),
    ]

    func distance(in pad: [Character: Pos], from: Pos, target: String) -> String {
        
        
        return ""
    }
    
    func dowork() {
        let input = input1

        var result = 0
        for line in  input {
            let s1 = distance(in: NUMERIC_PAD, from: NUMERIC_PAD["A"]!, target: line)
            let s2 = distance(in: DIRECTIONAL_PAD, from: DIRECTIONAL_PAD["A"]!, target: s1)
            let s3 = distance(in: DIRECTIONAL_PAD, from: DIRECTIONAL_PAD["A"]!, target: s2)

            let numPart = line[line.startIndex ..< line.index(before: line.endIndex)]
            
            let val = Int(String(numPart))!
            let seqLength = s3.count
            
            print("\(line): length: \(seqLength), val: \(val)")
            result += (seqLength * val)
        }
        
        print("Result: \(result)")
    }
}

