//
//  main.swift
//  Advent15
//
//  Created by altaibayar tseveenbayar on 2020-12-16.
//

import Foundation

let input_short = [0, 3, 6]

let input_long = [2, 0, 6, 12, 1, 3]

//

func part1(input: [Int], number: Int){
    var lastTime = [Int: (Int, Int)]()

    for (i, n) in input.enumerated() {
        lastTime[n] = (-1, i + 1)
    }

    var i = input.count + 1
    var lastNumber = input.last!

    while true {
        let (a, b) = lastTime[lastNumber]!

        let current = a < 0 ? 0 : b - a

        if i == number {
            print(current)
            return
        }

        lastNumber = current

        if lastTime[lastNumber] == nil {
            lastTime[lastNumber] = (-1, i)
        } else {
            lastTime[lastNumber]!.0 = lastTime[lastNumber]!.1
            lastTime[lastNumber]!.1 = i
        }


        i += 1
    }
}

let INPUT = input_long
part1(input: INPUT, number: 30_000_000)
