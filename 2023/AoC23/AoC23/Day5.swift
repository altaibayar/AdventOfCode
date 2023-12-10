// Copy pasted from https://github.com/gereons/AoC2023/blob/main/Sources/Day05/Day05.swift


//
// Advent of Code 2023 Day 5
//
// https://adventofcode.com/2023/day/5
//

fileprivate extension String {
    func allInts() -> [Int] {
        return self.matches(of: /\d+/).map { Int($0.output)! }
    }
}

fileprivate extension Array {
    func grouped(_ f: (Element) -> Bool) -> [[Element]] {
        var result = [[Element]]()

        var current = [Element]()
        for el in self {
            if f(el) {
                result.append(current)
                current.removeAll()
            } else {
                current.append(el)
            }
        }

        result.append(current)
        return result
    }
}

fileprivate extension Array {
    func chunked() -> [[Element]] {
        var result = [[Element]]()
        for i in 0 ..< self.count / 2 {
            result.append([self[i * 2], self[(i * 2) + 1]])
        }
        
        return result
    }
}

private struct Almanac {
    let seeds: [Int]

    let maps: [Map]

    init(_ lines: [String]) {
        seeds = lines[0].allInts()
        let chunks = Array(lines.dropFirst(2)).grouped { $0.isEmpty }

        maps = chunks.map { Map($0) }
    }

    func location(for seed: Int) -> Int {
        var seed = seed
        for map in maps {
            if let range = map.ranges.first(where: { $0.contains(seed) }) {
                seed += range.adjustment
            }
        }
        return seed
    }
}

private struct Map {
    let ranges: [Range]

    init(_ lines: [String]) {
        self.ranges = lines.dropFirst().map { Range($0) }.sorted { $0.from < $1.from }
    }
}

private struct Range {
    let from: Int
    let to: Int
    let adjustment: Int

    init(from: Int, to: Int, adjustment: Int = 0) {
        self.from = from
        self.to = to
        self.adjustment = adjustment
    }

    init(_ string: String) {
        let ints = string.allInts()
        self.init(from: ints[1], to: ints[1] + ints[2] - 1, adjustment: ints[0] - ints[1])
    }

    func contains(_ x: Int) -> Bool {
        x >= from && x <= to
    }

    var isValid: Bool { from <= to }
}

final class Day05 {
    private let almanac: Almanac
    
    init(input: [String]) {
        almanac = Almanac(input)
    }
    
    func part1() -> Int {
        var minLocation = Int.max
        for seed in almanac.seeds {
            let location = almanac.location(for: seed)
            minLocation = min(minLocation, location)
        }
        return minLocation
    }
    
    func part2() -> Int {
        var ranges = almanac.seeds
            .chunked()
            .compactMap { Range(from: $0[0], to: $0[0] + $0[1] - 1) }
        
        for map in almanac.maps {
            var newRanges = [Range]()
            for r in ranges {
                var range = r
                for mapping in map.ranges {
                    if range.from < mapping.from {
                        newRanges.append(Range(from: range.from,
                                               to: min(range.to, mapping.from - 1)))
                        range = Range(from: mapping.from, to: range.to)
                        if !range.isValid {
                            break
                        }
                    }
                    if range.from <= mapping.to {
                        newRanges.append(Range(from: range.from + mapping.adjustment,
                                               to: min(range.to, mapping.to) + mapping.adjustment))
                        range = Range(from: mapping.to + 1, to: range.to)
                        if !range.isValid {
                            break
                        }
                    }
                }
                if range.isValid {
                    newRanges.append(range)
                }
            }
            ranges = newRanges
        }
        
        return ranges.map { $0.from }.min()!
    }
}
