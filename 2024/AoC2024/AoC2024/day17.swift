//
//  day17.swift
//  AoC2024
//
//  Created by a on 17/12/2024.
//

class Day17 {
    let input1 = [
        "Register A: 729",
        "Register B: 0",
        "Register C: 0",
        "",
        "Program: 0,1,5,4,3,0",
    ]
    
    let input2 = [
        "Register A: 53437164",
        "Register B: 0",
        "Register C: 0",
        "",
        "Program: 2,4,1,7,7,5,4,1,1,4,5,5,0,3,3,0",
    ]
    
    func extractNumbers(_ input: String) -> [Int] {
        let numberPattern = #/[-+]?\d+/#
        
        return input.matches(of: numberPattern).compactMap { match in
            // Convert the matched substring to an Int
            Int(String(match.0))
        }
    }
    
    func parse(input: [String]) -> (a: Int, b: Int, c: Int, program: [Int]) {
        return (
            a: extractNumbers(input[0])[0],
            b: extractNumbers(input[1])[0],
            c: extractNumbers(input[2])[0],
            program: extractNumbers(input[4])
        )
    }
    
    func dowork() {
        let input = input2
        
        var (a, b, c, program) = parse(input: input)
        
        var result = [Int]()
        
        var i = 0
        while i < program.count {
            let opcode = program[i]
            let operand = program[i + 1]
            
//            print("opcode: \(opcode), operand: \(operand)")
            
            let combo = [0, 1, 2, 3, a, b, c, 7][operand]
            
            switch opcode {
            case 0:
                a >>= combo
            case 1:
                b ^= operand
            case 2:
                b = combo % 8
            case 3:
                if a != 0 {
                    i = operand
                    continue
                }
            case 4:
                b ^= c
            case 5:
                result.append(combo % 8)
            case 6:
                b = a >> combo
            case 7:
                c = a >> combo
            default: fatalError()
                
            }
            
            i += 2
        }
        
        print(result.map { String($0) }.joined(separator: ","))
    }
}
