//
//  main.swift
//  Advent23
//
//  Created by altaibayar tseveenbayar on 2020-12-23.
//

import Foundation

var N = 9

func parse(number: Int) -> [Int] {
    return "\(number)".map { Int(String($0))! }
}

func idx(_ i: Int) -> Int {
    return i % N
}

func fromOne(input: [Int]) -> String {
    let idx = input.firstIndex(of: 1)!
    let begin: [String] = input[0 ..< idx].map { String($0) }
    let end: [String]
    if idx == input.count {
        end = []
    } else {
        end = input[idx + 1 ..< input.count].map { String($0) }
    }

    return "\(end.joined())\(begin.joined())"
}

func part1(input: Int, iterations: Int) {
    let startTime = Date.timeIntervalSinceReferenceDate

    var buffer = parse(number: input)

    var current = 0
    var count = 0

    while count < iterations {
        var bufferCopy = buffer

        let a = buffer[idx(current + 1)]
        let b = buffer[idx(current + 2)]
        let c = buffer[idx(current + 3)]

        //
        bufferCopy.remove(at: bufferCopy.firstIndex(of: a)!)
        bufferCopy.remove(at: bufferCopy.firstIndex(of: b)!)
        bufferCopy.remove(at: bufferCopy.firstIndex(of: c)!)

        //
        var destination = buffer[idx(current)] - 1
        if destination == 0 { destination = N }
        while destination == a || destination == b || destination == c {
            destination -= 1
            if destination == 0 { destination = N }
        }
        let destinationIdx = bufferCopy.firstIndex(of: destination)!

        //
        bufferCopy.insert(c, at: idx(destinationIdx + 1))
        bufferCopy.insert(b, at: idx(destinationIdx + 1))
        bufferCopy.insert(a, at: idx(destinationIdx + 1))

        current = bufferCopy.firstIndex(of: buffer[idx(current)])! + 1
        count += 1
        buffer = bufferCopy

//        print("\(count): \(current) - \(buffer)")
    }

    let endTime = Date.timeIntervalSinceReferenceDate

    print("Count: \(count)")
    print(buffer)
    print(fromOne(input: buffer))
    print("\(endTime - startTime)sec")
}

let TEST_INPUT = 389125467
let MY_INPUT = 318946572


part1(input: TEST_INPUT, iterations: 100)
part1(input: MY_INPUT, iterations: 1_000_000)
part1(input: MY_INPUT, iterations: 10_000_000)

