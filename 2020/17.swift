//
//  main.swift
//  Advent17
//
//  Created by altaibayar tseveenbayar on 2020-12-17.
//

import Foundation

let list_long = [
    ".##..#.#",
    "#...##.#",
    "##...#.#",
    ".##.##..",
    "...#.#.#",
    ".##.#..#",
    "...#..##",
    "###..##.",
]

let list_short: [String] = [
    ".#.",
    "..#",
    "###",
]

struct State  {
    var active: Set<String>
    var side: Int
}

extension State {
    func active(coord: Coord) -> Bool {
        return self.active.contains(key(coord))
    }
}

typealias Coord = (x: Int, y: Int, z: Int, w: Int)

func key(_ coord: Coord) -> String {
    return "\(coord.x)_\(coord.y)_\(coord.z)_\(coord.w)"
}

func loop(from coord: Coord, step: (Coord) -> Swift.Void) {
    for x in coord.x - 1 ... coord.x + 1 {
        for y in coord.y - 1 ... coord.y + 1 {
            for z in coord.z - 1 ... coord.z + 1 {
                for w in coord.w - 1 ... coord.w + 1 {
                    step((x: x, y: y, z: z, w: w))
                }
            }
        }
    }
}

func loop(side: Int, step: (Coord) -> Swift.Void) {
    for x in -side ... +side {
        for y in -side ... +side {
            for z in -side ... +side {
                for w in -side ... +side {
                    step((x: x, y: y, z: z, w: w))
                }
            }
        }
    }
}

func neighbours(state: State, coord: Coord) -> (active: Int, inactive: Int) {
    var active = 0, inactive = 0

    loop(from: coord) { (x, y, z, w) in
        if coord.x == x && coord.y == y && coord.z == z && coord.w == w {
            return
        }

        if state.active(coord: (x: x, y: y, z: z, w: w)) {
            active += 1
        } else {
            inactive += 1
        }
    }

    return (active: active, inactive: inactive)
}

func step(state: State) -> State {
    var newState = State(active: Set<String>(), side: state.side + 1)

    loop(side: newState.side) { coord in
        let neigh = neighbours(state: state, coord: coord)

        if state.active(coord: coord) {
            // active
            if neigh.active == 2 || neigh.active == 3 {
                newState.active.insert(key(coord))
            } else {
                // do nothing
            }
        } else {
            if neigh.active == 3 {
                newState.active.insert(key(coord))
            } else {
                // do nothing
            }
        }
    }

    return newState
}

func parse(list: [String]) -> State {
    let side = list.count / 2
    var state = State(
        active: Set<String>(),
        side: side)

    for (y, line) in list.enumerated() {
        for (x, ch) in line.enumerated() {
            if ch == "#" {
                state.active.insert(key((x: x - side, y: y - side, z: 0, w: 0)))
            }
        }
    }

    return state
}

func part1(list: [String]) {
    var state = parse(list: list)
    let start = Date().timeIntervalSinceReferenceDate
    for i in 0 ..< 6 {
        print("i: \(i) - \(Date().timeIntervalSinceReferenceDate - start)s")
        state = step(state: state)
    }

    print(state.active.count)
}

part1(list: list_long)
