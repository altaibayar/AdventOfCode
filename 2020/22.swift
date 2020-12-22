//
//  main.swift
//  Advent22
//
//  Created by altaibayar tseveenbayar on 2020-12-22.
//

import Foundation

let input_long = [
    "Player 1:",
    "41",
    "33",
    "20",
    "32",
    "7",
    "45",
    "2",
    "12",
    "14",
    "29",
    "49",
    "37",
    "6",
    "11",
    "39",
    "46",
    "47",
    "38",
    "23",
    "22",
    "28",
    "10",
    "36",
    "35",
    "24",
    "",
    "Player 2:",
    "17",
    "4",
    "44",
    "9",
    "27",
    "18",
    "30",
    "42",
    "21",
    "26",
    "16",
    "48",
    "8",
    "15",
    "34",
    "50",
    "19",
    "43",
    "25",
    "1",
    "13",
    "31",
    "3",
    "5",
    "40",
]

let input_short = [
    "Player 1:",
    "9",
    "2",
    "6",
    "3",
    "1",
    "",
    "Player 2:",
    "5",
    "8",
    "4",
    "7",
    "10",
]

struct Player {
    var cards: [Int]
}

func parse(list: [String]) -> (one: Player, two: Player) {
    let parsePlayer: (String, [String]) -> Player = { from, list in
        let startIdx = list.firstIndex(of: from)! + 1
        var endIdx = startIdx

        while endIdx < list.count {
            if Int(list[endIdx]) == nil {
                break
            }

            endIdx += 1
        }

        return Player(cards: list[startIdx ... endIdx - 1].map { Int($0)! })
    }

    let one = parsePlayer("Player 1:", list)
    let two = parsePlayer("Player 2:", list)

    return (one: one, two: two)
}

func play(player1: inout Player, player2: inout Player) -> Player {

    while !player1.cards.isEmpty && !player2.cards.isEmpty {
        let card1 = player1.cards.removeFirst()
        let card2 = player2.cards.removeFirst()

        if card1 > card2 {
            player1.cards.append(card1)
            player1.cards.append(card2)
        } else {
            player2.cards.append(card2)
            player2.cards.append(card1)
        }
    }

    return player1.cards.isEmpty ? player2 : player1
}

func part1(list: [String]) {
    var (player1, player2) = parse(list: list)
    let winner = play(player1: &player1, player2: &player2)

    var result = 0
    for (i, n) in winner.cards.enumerated() {
        result += (n * (winner.cards.count - i))
    }

    print("Part1 \(result)")
}

part1(list: input_short)
