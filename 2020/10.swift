//
//  main.swift
//  AdventCode10
//
//  Created by altaibayar on 10/12/2020.
//  Copyright © 2020 facebook. All rights reserved.
//

import Foundation

let list_long = [
    111,
    56,
    160,
    128,
    25,
    182,
    131,
    174,
    87,
    52,
    23,
    30,
    93,
    157,
    36,
    155,
    183,
    167,
    130,
    50,
    71,
    98,
    42,
    129,
    18,
    13,
    99,
    146,
    81,
    184,
    1,
    51,
    137,
    8,
    9,
    43,
    115,
    121,
    171,
    77,
    97,
    149,
    83,
    89,
    2,
    38,
    139,
    152,
    29,
    180,
    10,
    165,
    114,
    75,
    82,
    104,
    108,
    156,
    96,
    150,
    105,
    44,
    100,
    69,
    72,
    143,
    32,
    172,
    84,
    161,
    118,
    47,
    17,
    177,
    7,
    61,
    4,
    103,
    66,
    76,
    138,
    53,
    88,
    122,
    22,
    123,
    37,
    90,
    134,
    41,
    64,
    127,
    166,
    173,
    168,
    58,
    26,
    24,
    33,
    151,
    57,
    181,
    31,
    124,
    140,
    3,
    19,
    16,
    80,
    164,
    70,
    65
]

let list_medium = [
    28,
    33,
    18,
    42,
    31,
    14,
    46,
    20,
    48,
    47,
    24,
    23,
    49,
    45,
    19,
    38,
    39,
    11,
    1,
    32,
    25,
    35,
    8,
    17,
    7,
    9,
    4,
    2,
    34,
    10,
    3
]

let list_short = [
    16,
    10,
    15,
    5,
    1,
    11,
    7,
    19,
    6,
    12,
    4
]

let LIST = list_short

func part1(list: [Int]) {
    let sorted = list.sorted()
    var ones = 0, threes = 1
    
    var last = 0
    for i in sorted {
        if i - last == 1 {
            ones += 1
        } else if i - last == 3 {
            threes += 1
        }
        
        last = i
    }
        
    print(ones * threes)
}

func rec(_ available: Set<Int>, _ visited: inout [Int: Int], _ current: Int, _ target: Int) -> Int {
    if current == target {
        return 1
    }
    
    if let v = visited[current] {
        return v
    }
 
    let result = stride(from: current + 1, through: current + 3, by: +1)
        .filter { available.contains($0) }
        .map { rec(available, &visited, $0, target) }
        .reduce(0, +)
    
    visited[current] = result
    
    return result;
}

func part2(list: [Int]) {
    let target = list.max()!
    let available = Set<Int>(list).union(Set<Int>(arrayLiteral: 0))
    var visited = [Int: Int]()
    
    print(rec(available, &visited, 0, target))
}

part2(list: list_short)
part2(list: list_medium)
part2(list: list_long)
