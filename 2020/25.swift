//
//  main.swift
//  Advent25
//
//  Created by altaibayar tseveenbayar on 2020-12-26.
//

import Foundation

let input_long = [
    12578151,
    5051300
]

func loop(value: Int = 7, body: (_ iteration: Int, _ value: Int) -> Bool) {
    var current = 1
    var i = 0

    while true {
        if body(i, current) {
            break
        }

        current *= value
        current %= 20201227

        i += 1
    }

}

func transform(loopSize: Int, publicKey: Int) -> Int {
    var result = 0
    loop(value: publicKey) { (iteration, value) -> Bool in
        result = value
        return loopSize == iteration
    }

    return result
}

func loopSize(publicKey: Int, subjectNumber: Int = 7) -> Int {
    var result = 0

    loop { (iteration, value) -> Bool in
        result = iteration
        return value == publicKey
    }

    return result
}

func part1(publicKeys: [Int]) {
    let loopSizes = publicKeys.map { loopSize(publicKey: $0) }
    let key1 = transform(loopSize: loopSizes[0], publicKey: publicKeys[1])
    let key2 = transform(loopSize: loopSizes[1], publicKey: publicKeys[0])

    print("Key1: \(key1), Key2: \(key2)")
}

part1(publicKeys: input_long)
