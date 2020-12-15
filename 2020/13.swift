//
//  main.swift
//  Advent13
//
//  Created by altaibayar tseveenbayar on 2020-12-13.
//

import Foundation

let list_long = [
    "1002462",
    "37,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,41,x,x,x,x,x,x,x,x,x,601,x,x,x,x,x,x,x,x,x,x,x,19,x,x,x,x,17,x,x,x,x,x,23,x,x,x,x,x,29,x,443,x,x,x,x,x,x,x,x,x,x,x,x,13"
]

let list_short = [
    "939",
    "7,13,x,x,59,x,31,19"
]

func parse(list: [String]) -> (earliest: Int, buses: [Int?]) {
    let earliest = Int(list[0])!
    let buses = list[1].split(separator: ",").map { Int($0) }

    return (earliest: earliest, buses: buses)
}

func part1(list: [String]) {
    let input = parse(list: list)

    var d = 0
    while true {
        let current = input.earli13est + d
        let buses: [Int] = input.buses.compactMap { return $0 }
        let divisibleBuses: [Int] = buses.filter { current % $0 == 0 }

        if let bus = divisibleBuses.first {
            print(bus * d)
            break
        }

        d += 1
    }
}

func part2(list: [String]) {
    let input = parse(list: list)
    let tmp: [(a: Int, n: Int)] = input.buses.enumerated().compactMap{ (i: Int, b: Int?) in
        return b == nil ? nil : (a:i, n : b!)
    }

    let A = tmp.map { "\($0.n - $0.a)" }.joined(separator: ", ")
    let N = tmp.map { "\($0.n)" }.joined(separator: ", ")

    print("--- COPY PASTE TO 13.py ---")
    print(N)
    print("------")
    print(A)
    print("------")
}

let LIST = list_long
part2(list: LIST)
