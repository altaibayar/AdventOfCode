//
//  day16.swift
//  AoC2024
//
//  Created by a on 16/12/2024.
//

class Day16 {
    
    let input0 = [
        "###############",
        "#.......#....E#",
        "#.#.###.#.###.#",
        "#.....#.....#.#",
        "###.#.#####.#.#",
        "#...#.....#.#.#",
        "#.#.#.###.#.#.#",
        "#.....#...#.#.#",
        "#.###.#.#.#.#.#",
        "#S..#.....#...#",
        "###############",
    ]
    
    let input1 = [
        "###############",
        "#.......#....E#",
        "#.#.###.#.###.#",
        "#.....#.#...#.#",
        "#.###.#####.#.#",
        "#.#.#.......#.#",
        "#.#.#####.###.#",
        "#...........#.#",
        "###.#.#####.#.#",
        "#...#.....#.#.#",
        "#.#.#.###.#.#.#",
        "#.....#...#.#.#",
        "#.###.#.#.#.#.#",
        "#S..#.....#...#",
        "###############",
    ]
    
    let input2 = [
        "#################",
        "#...#...#...#..E#",
        "#.#.#.#.#.#.#.#.#",
        "#.#.#.#...#...#.#",
        "#.#.#.#.###.#.#.#",
        "#...#.#.#.....#.#",
        "#.#.#.#.#.#####.#",
        "#.#...#.#.#.....#",
        "#.#.#####.#.###.#",
        "#.#.#.......#...#",
        "#.#.###.#####.###",
        "#.#.#...#.....#.#",
        "#.#.#.#####.###.#",
        "#.#.#.........#.#",
        "#.#.#.#########.#",
        "#S#.............#",
        "#################",
    ]
    
    let input3 = [
        "#############################################################################################################################################",
        "#.........#.................#.........#...#.............................#...#.........#.....#.....#.....#.........#.....#.............#....E#",
        "#.#####.###.#####.#.#########.#.#####.#.#.#.###.#.#######.###.#######.#.#.#.#.###.#.###.###.#.#.###.#.#.#.#######.#.###.#.#####.#####.#.###.#",
        "#.....#...#.#.....#.#...#.....#.....#.#.......................#.....#.............#.#...#.#...#.#...#.#...#...#...#.#.#...#.....#...#...#...#",
        "#####.###.#.#.#.#####.#.#.#####.#####.#.#####.#.###.###.#.#.#######.#.###.#####.#.###.###.#####.#.###.###.#.#.###.#.#.#####.#####.#.#####.###",
        "#.....#...#.#.#.#...#.#.#.#...#.........................................#...#.#.....#.#.....#...#...#...#...#...#.#...#.#...#...#.#.......#.#",
        "#.#####.#.#.#.#.#.#.#.#.#.###.#.###.#####.#.#####.###.###.#.#.#####.#.#.###.#.###.#.#.#####.#.#.###.###.#.#####.#####.#.#.###.#.#.#######.#.#",
        "#.#.....#.............#.#...#.#...#.......#...#...#.#...#.#...#...#...#.#...#.#...................#.#.#.#.....#.....#.#.#...#.#...#.......#.#",
        "#.#.#.#####.###.#######.###.#.###.#####.#####.#.###.###.#.#####.#####.#.#.###.#.#.#######.###.#####.#.#.#.###.###.###.#.###.#.#####.###.#.#.#",
        "#.#.#.#.....#.#.......#...#.#...#.#...#...............................#.#.....#...........#...#.....#.#.........#...............#.....#.#...#",
        "#.#.#.#.###.#.#.###.#.#.###.#.###.#.#.###.#.#.###.#.#.#######.#######.#.#####.#############.###.#####.###.###############.#.###.#######.#.#.#",
        "#.#.#.#...#.#...#.#...#.....#.....#.................#.....#...#.......#.......#...........#...#...........#...#...........#.#.........#...#.#",
        "#.#.#####.#.#.#.#.#.#.#############.###.#.#.#####.#.#####.#.#######.#.#########.#########.###.###########.#.###.#########.#.#.#######.#.#.###",
        "#.........#.......#.#.....#.......#.#.#...#.............#.........#.#.#.......#...#.......#.#...........#...#...#.........#.#.#...#.#.#.#...#",
        "#.#.#######.###.###.#####.#.#####.#.#.###.#######.###############.#.#.#.###.#.###.#.#######.#.###.###.#####.#.###.#######.#.#.#.#.#.#.###.#.#",
        "#.#.........#.....#.#...#.#...#.....#...#.......#.#...........#.....#...#...#.#...#.#.......#...#...#.......#...#...........#.#.#...........#",
        "#.#########.#.###.#.#.#.#.###.#.#####.#########.#.#.#########.#.#######.#.###.#.###.#.###.#####.###.###########.#############.#.#.#######.#.#",
        "#...........#...#...#.#.#...#.#.#.................#.#.......#.#.......#.#...#...#.#...#...#...#...#.#.......#.#...#...#.......#.#.....#.#...#",
        "#.#.#######.#.#.#####.#.###.#.#.#.#################.#.###.#.#.#######.#####.#####.#####.###.#.###.#.#####.#.#.###.###.#.#######.#####.#.#.###",
        "#.#.#.......#.#...#...#.......#.#.#.............#...#...#.#.#...#...#...#...#.........#.#.#.#.....#.....#...#...#...#.........#.#.#...#.....#",
        "#.#.#####.#.#.###.#.###########.#.#.#####.#####.#.#######.#####.###.###.#.###########.#.#.#.###########.#.#.#.#.###.#######.###.#.#.#.###.###",
        "#.#.....#.#.....#.#.#.#.......#...#.#...#.#.....#.......#.........#.......#.....#.....#.#.#...........#...#...#...#...#...#.#...#.#.#.#.....#",
        "#.#####.#.#.#.#.#.#.#.#.#####.###.###.#.###.###.#######.#########.#########.###.#.#####.#.###########.#######.#######.#.###.#.###.#.#.#.###.#",
        "#.......#...#...#.#...#.....#...#.....#.#...#.....#.#...#.....#.#.#.......#.#...#.......#.....#.#.......#.....#.......#.....#.#...#.#.#.....#",
        "###########.###.#.###.#####.###.#######.#.#######.#.#.###.###.#.#.#.#####.#.#.###.#.#####.#.#.#.#.#####.#.#####.#.#####.#####.#.###.###.#.#.#",
        "#.....#...#...#.#...#.#.....#...#.....#.#.....#...#.#.......#.#...#.#...#...#.#...#.#.....#.....#.....#.#.....#.#.#...#.....#.#.#...#...#.#.#",
        "#.###.#.#.###.#####.#.#.#####.###.#.#.#.#.###.#.###.#########.#.###.#.#######.#.#.#.#####.#.#########.#.#####.#.###.#.#####.#.#.#.###.###.#.#",
        "#...#...#...#.....#.#...#.#...#.#.#.#...#.#.#.#.......#.......#.#...#.#.......#.#.#...#...#.#...#.....#.#.....#.#...#.....#.#...#.........#.#",
        "###.#######.#####.#.###.#.#.###.#.#.#.###.#.#.#########.#######.#.###.#.#######.#.###.#.#####.#.#.#####.#.#####.#.#######.#####.###########.#",
        "#.#.#.....#.....#.#...#...#.#.....#.#.#.....#.....#...#.#.........#...#...#.....#.....#.#.....#.#.....#.#.#...#.#.#.....#.....#.#.....#.....#",
        "#.#.###.#.###.###.###.###.#.#######.#.###########.#.#.#.#############.###.#.#####.#####.#.#.###.#####.###.#.#.#.#.#.###.#.###.#.#.###.#.###.#",
        "#.#...#.#...#...#...#.....#.......#.#.........#...#.#...#...........#...#.#...#.....#...#...........#.....#.#.#.#.#.#.#.#.#...#.#...#.#.....#",
        "#.###.#.#######.###.#############.#.#########.#.###.###.#.#########.###.#.###.#.###.###.#.#.#.#####.#.#####.#.#.#.#.#.#.###.###.###.###.#.#.#",
        "#.....#.......#...#.....#.....#...#.#.......#.#...#...#.#.........#...#.#...#...#.#.....#.#.#.....#.#.#.....#.#...#.#.#.#...#...#...#...#...#",
        "#.#####.#####.###.#####.#.###.#.###.#.###.#.#.###.###.#.#########.###.#.###.#####.#####.#.#.#.###.#.#.#.###.#######.#.#.#.#.#.###.###.###.###",
        "#...#.........#.#.....#.#.#.#.#.#...#.#.#.#.#...#...#.#.#.......#.#.#.#.........#.......#...#.....#.#.#...#.........#.#.#.#.#.#.....#.#.#.#.#",
        "###.###.#####.#.###.#.#.#.#.#.#.#.#.#.#.#.#####.#.###.###.###.###.#.#.#########.#.###########.#####.#.#.###.#.#######.#.#.#.#.#####.#.#.#.#.#",
        "#.#.....#...#.....#.#.#.#.#...#...#.#.#.#.#.....#...#.......#...#.#.#.....#...#.#.#...........#.....#.#.#...#.#.........#.#.#.....#.#.#.....#",
        "#.#####.#.#.#####.#.#.#.#.#.###.###.#.#.#.#.###.###.#######.###.#.#.#.###.#.#.#.#.#.###########.###.#.###.#.#.#.#####.###.#.#####.#.#.#######",
        "#.........#.......#.#.#.#.#.#.....#.#.#.#...#.....#.....#.....#.........#.#.#...#.#.#...#.....#.#.....#...#.#.#.#.#...#...#.....#.#.........#",
        "#.#####.###########.#.#.#.#.#####.#.#.#.#.###.###.#.###.###.#.###########.#.#######.#.#.#.#.###.###.###.###.#.#.#.#.#.#.#.#####.#.#.#######.#",
        "#.....#.......#...#.#.#.#.#...#...#.#.......#.#...#.......#.#.............#.#.....#.#.#.#.#...#...#...#.#...#.#.#...#...#.....#.#.#.......#.#",
        "###.#.#.#######.#.#.#.#.#.###.#.###.#.#.###.#.#.#####.###.###.#.###########.#.###.#.###.#.###.###.###.#.#####.#.#####.###.###.###.#####.###.#",
        "#...#.#...#.....#.#.#.#...#.#...#...#...#.#.#.#.....#...#...#.#.#.......#...#...#...#...#.#.#...#.#.....#.....#.#.......#...#...........#...#",
        "#.#.#.#.#.#.#####.#.#######.#####.#.#####.#.#.#####.###.###.#.#.###.###.#.###.#.#.###.###.#.###.#.#######.#####.#.###.#.###.#############.###",
        "#.#...#.#.#.#...#.#.........#...#.#.......#...#...#...#...#...#.#...#...#.#...#...#.#.....#...#.#...#.....#.....#.#...#.#.....#...#.....#...#",
        "#.#######.#.#.###.###.#####.#.#.#.#.#####.#######.###.###.###.#.#.#####.#.###.###.#.#.#######.#.###.#.#####.#####.#.#.#.#.#####.#.#.###.###.#",
        "#.#.......#.#.#...#...#...#.#.#.........#.........#...#...#...#.#.....#.#...#.#...#.....#...#.#.....#.#...#.#.....#.#...#...#...#...#.#...#.#",
        "#.#.#####.#.#.#.###.#.#.#.###.#############.###.###.###.#.#####.#.###.#####.#.#.###.###.#.#.#.#######.#.#.#.#.#.###.#######.#.#######.###.#.#",
        "#...#.....#.#.......#.#.#.....#...#...#...#...#.#...#...#.#.....#.#.#.......#.#...#...#...#...#.....#.#...#...#...#.#.....#.#...#.#.......#.#",
        "#.#######.#.#.#########.#######.###.#.#.#.###.#.#.#####.#.#.#####.#.#############.#.#########.#.###.#.###.###.###.#.#.###.#####.#.#.#######.#",
        "#.#.....#.#...#.........#...#...#...#...#.....#.#.......#.#.#...#.........#.......#.........#.#...#.#...#...#.....#...#.#...#...#.#.........#",
        "#.#.###.#.###.#.#########.#.###.#.###.#########.#########.#.#.#.#.#######.#.#.#######.#####.#.#.#.#.###.#.#############.###.#.###.#.#########",
        "#.#.#.#.#...#.#.#...#.........#.#.#...#.......#.......#...#...#.#...#...#...#.#.......#.#...#.#.#.#.#...#...........#.....#.#.#.....#.....#.#",
        "#.#.#.#.#####.#.#.#.#.#######.#.#.#####.#####.#####.###.###.#.#.###.#.#.#.###.#.#######.#.###.###.#.#.#####.###.###.#.#.###.#.#######.###.#.#",
        "#.#.#.........#...#.#...#.#...#.#.....#...#...#...#.#...#.#.#.#...#.....#.#...#...#.........#.#...#...#...#...#...#...#.#...#.........#...#.#",
        "#.#.#########.#####.#.#.#.#.###.#####.#.###.#.#.#.###.###.#.#.#########.#.#.###.#.#####.#####.#.#######.#.#######.#######.###.#########.###.#",
        "#.#...............#.#.#.#...#...#...#...#...#...#.........#.#...........#.#.#.........#.#...#...#...#...#.#.....#.#.......#.............#...#",
        "#.###########.#.#.#.###.#.###.#.#.#.#####.###.#############.#.#######.#.###.#.#######.###.#.###.#.#.#.###.#.###.#.#.#################.#.#.###",
        "#.#...#.......#.#.#.....#.....#.#.#.....#.#...#.#.....#.....#.#.....#...#...#.#.....#.....#...#...#.#...#...#.....#...#.........#...#.#.#...#",
        "#.#.#.#.#####.#.###.###########.#.#####.#.#.###.#.###.#.#####.###.#.#.#.#.###.#.###.###.###.###.#.#.###.#####.#######.#####.###.###.#.#.#.#.#",
        "#.#.#.....#...#.....#.......#...#.....#.#.#.#.......#.#.#...#.....#.#.#...#...#.......#...#.....#.#.....#.......#...#...#...................#",
        "#.#.#######.#####.###.#####.###.#.###.#.#.#.###.#####.#.#.#.#########.#####.#####.###.###########.###############.#.###.#.#######.#.###.###.#",
        "#.........#.........#.....#.....#.#...#...#.......#...#.#.#.........#.....#.#...#...#.#.....#.....#...#...........#...#.#.....#.#.#.........#",
        "#########.#########.#.###.#####.###.#####.#######.#.###.#.#########.###.#.#.#.#.#.#.#.#.###.#.#####.#.#.#.#.###.###.#.#.###.#.#.#.###.###.#.#",
        "#...#...#...............#...#.#.....#...#.#.....#...#...#...#.....#...#.#...#.#.#.#.#.....#.#.....#.#...#.......#...#.#...#.#.#.#.....#...#.#",
        "#.#.#.#.#####.#########.###.#.#######.#.#.#.###.###.#.#.###.#####.###.#.#####.#.#.#.#####.#.#.###.#.#############.###.###.#.#.#.#######.###.#",
        "#.#...#...#.........#.....#.#.........#...#...#...#.#.#...#.......#...#.......#.#.#...#.....#...#...#...#.#.......#.#...#.#.#.#.........#.#.#",
        "#.#######.#####.###.#.#####.#.#####.#.#######.#.###.#.###.#####.###.###.#.###.###.###.#.#######.#####.#.#.#.#######.#.#.#.###.#######.#.#.#.#",
        "#.......#.....#...#.#.#...#.#...#...#.....#.#.......#...#.#.........#...#...#.#...#...#.#...#.....#...#...#.#.#.....#...#.....#.....#.#.#...#",
        "#######.#####.###.#.###.#.#.#.#.#######.#.#.#.#########.###.#.###.#######.#.###.###.#.#.#.#.#####.#.###.###.#.#.###.###.#######.###.#.#.#.###",
        "#.....#...#...#...#.....#.#.#.#.#.......#...#.#.........#...#...#.......#.#.#...#...#...#.#...#.....#.......#.#.#.#.#...#...#.....#.....#...#",
        "#.###.###.#.###.#.#####.#.#.#.#.#.#####.###.#.#####.#.#.#.###.#.#########.#.#.#.#.###.#.#.###.#######.###.###.#.#.#.#.###.#.#.###.###.#####.#",
        "#...#.....#.....#.#...#.#...#.#.#...#.....#.#.........#.#.#...#...........#...#.......#...#.......#...#...#.....#.#.......#.#...#...#.......#",
        "#.#.###########.###.#.#.#####.#.###.#.#####.#########.#.#.###.#.###############.###########.#####.#.###.#.#####.#.#####.#.#####.###.#.#.#####",
        "#...#...#...#.#.#...#.#.....#.#.....#.....#.......#...#.#.#...#.#.......#.........#.........#...#.#...#.#.#...#.....#.#.#.#.....#.#...#.#...#",
        "#.#.#.#.#.#.#.#.#.#.#.#.###.#.###########.#######.#.###.#.#.###.#.#.###.#.###.#.#.#.#####.#.#.###.#####.#.#.#.#####.#.#.#.#.#####.###.#.#.#.#",
        "#.#...#...#.#...#...#.#...#.........#...#.....#...#.#.#...#...#.#.#...#.#.#...#.#.#.#.#...#.#.....#.....#...#.#...#.#...#.#...............#.#",
        "#.#########.#.#####.#.#############.###.#####.#.###.#.#######.###.###.#.#.#.###.#.#.#.#.###.#.#.###.#######.#.#.#.#.#####.###.#.#.#.#.#.#.#.#",
        "#.....#.#...#.....#.#.........#...#.....#...#...#.#.#.......#.....#...#...#.#...#.#...#.#.#.#.#...#.........#...#.#.....#...#...#.#.#.#.#.#.#",
        "#####.#.#.#########.#########.#.#.#####.#.#.#####.#.###.#.#.#######.#######.#.###.###.#.#.#.#.###.#.###.#########.#.###.#.#######.#.#.###.#.#",
        "#...#.#.#.....#...#...#.....#...#.#.#...#.#.......#.....#.#.........#...#...#.#.....#.#.#.....#...#.......#.#...#.....#...#.........#.....#.#",
        "###.#.#.#####.#.#.###.#####.#####.#.#.###.###.#######.#.#.###########.#.#.#.#.#.#####.#.#######.#########.#.#.#.#####.#####.#######.#######.#",
        "#...#.....#.#.#.#.....#.....#.....#.#...#...#.......#.#.#.........#...#...#.#.#.......#...#...#.#.......#.#...#.#...#.......#.....#.#.....#.#",
        "#.#######.#.#.#.#######.###.#.#####.###.###.#######.#.###.#######.#.#.#######.###########.#.#.#.#.#.#.#.#.#####.#.#.#.#######.###.#.#####.#.#",
        "#.....#.#...#.#.....#...#.#.#...#...#...#.....#...#.#...#.........#.#.......#.#.......#.#.#.#.#...#.#.#.#...#...#.#.#.......#...#.#.......#.#",
        "#.#.#.#.###.#.#.###.#.###.#.###.#.#.#.#########.#.#.#.#.#####.#.###########.#.#.#####.#.#.#.#.#####.#.#####.#.###.#.###.###.###.#.#########.#",
        "#...#.....#.......#.#...#...#.#.#.#.#.#.........#...#.#.#.....#.#.........#.#.#...#.....#...#.....#.#...#.....#...#.#.......#.#.#.......#...#",
        "###.#####.#.#####.#.#.#.#.###.#.###.#.#.###########.#.#.###.###.#.#.#####.#.#.#.#.#.###########.#.#.#.#.#.#####.###.#####.###.#.#######.#.###",
        "#...#.....#...#.#...#.#.#...#.#...#.....#.........#...#...#.#...#.#.#...#.#.#.#.#.....#...#.....#.#.#.#...#...#.#.......#.....#.#.#...#.#...#",
        "#.###.#######.#.#####.#.###.#.###.#.#####.#.#########.###.###.###.#.#.#.#.#.#.#.#.#####.#.#.###.###.#.#.###.#.#.#####.#.#####.#.#.#.#.#.###.#",
        "#.#.....#...#...#.....#...#.....#...#...#.#.#.........#...#...#...#.#.#.....#.#.#.......#.#...#.#...#...#...#.#.......#.....#.#.#.#.#.#.....#",
        "#.#####.###.###.#.#.#.###.#.#######.#.#.#.#.#.#####.###.#.#.###.###.###.#####.#.#########.###.#.#.#####.#.###.#.#.###.#####.###.#.#.#.#.#.###",
        "#...#.........#.#...#.....#.#.......#.#.#.#...#.........#...#.#...#...#.#.....#.....#.......#.#.#.#.....#.#.#.#.#.....#...#.....#...#...#...#",
        "#.#.###.#######.#.#######.###.#######.#.#.#########.#########.#.#.###.#.#.#####.#####.###.###.#.#.#.#.###.#.#.###.#####.#.#.#####.#########.#",
        "#.#...#.#.....#...#.......#...#.......#.#...#.....#.........#...#...#.#.#.......#.....#...#...#.#.#.....#.#.#.#...#.....#...#...#...#.......#",
        "#.###.###.###.#####.#.#####.###.#######.###.#.#.#.###.###.#.#.###.###.#########.#.#####.###.#####.#####.#.#.#.#.###.###.#####.#.###.#.#.#####",
        "#...#.....#.......#.#.....#...#.#.....#.#.#.#.#.#...#.#...#.#...#...#.....#...#...#...#.#.#.#...#.....#.#.#...#.#...#...#.....#.#...#...#...#",
        "#.#.#######.#.#.#.#.#####.###.#.###.#.#.#.#.###.###.###.###.###.###.###.###.#.#####.###.#.#.#.#.#####.###.#.###.#.#####.#.#####.###.#.#.#.#.#",
        "#.#...#.....#...#...#...#.#.#.#.....#.#.#.#.....#.#...#.#.....#...#...#.....#.............#...#.....#...#.#.....#.......#.#...#...#.#.#...#.#",
        "#.###.#.#####.#####.#.###.#.#.#.###.###.#.#######.###.#.#########.#.#.###########.#.###############.###.#.###############.###.###.#.#####.#.#",
        "#...#.#.#.........#.#...#...#.#.#...#...#...........#.......#.....#.#...........#...#.#.............#...#...........#...#.#.....#.#.....#.#.#",
        "#.#.#.#.#####.###.#.#.#.###.#.#.#.#.#.#.###.#.#.#####.#####.#.#####.#########.#######.#.#####.#######.#####.#######.#.#.#.#.#####.#####.###.#",
        "#.#.#.#.....#.#...#.#.#.#...#...#.#...#.#...#.#.....#.......#...#.........#...........#...#...........#...#.#.#.....#.#.....#...#.....#.....#",
        "#.#.#.#####.#.#.#.#.#.#.#.###.###.#####.#.#.#.#####.#####.#####.#####.#.#.#.#.#.###.#####.#####.#######.#.#.#.#.#.###.#######.#.#.###.#####.#",
        "#.#.#...#...#.#.#.#.#.#.#...#...#...#.#.#.#.#.....#...#...#.......#...#.#.#.#.#.#.#.....#.......#.......#.#.#.#...#...#.#.....#.#.#...#...#.#",
        "#.#.###.#.#.#.#.###.###.#.#.#.#####.#.#.#.#.#####.#.###.###.#.###.#.#####.#.#.#.#.#####.#############.###.#.#.###.#.###.#.#####.#.#.###.#.#.#",
        "#.#.....#...#.#...#.#.....#...#.....#...#.#...#...#.....#...#.#...#.#.....#.#.#.......#.......#.......#.#.#.....#...#...#.....#.#.#.....#.#.#",
        "#.#########.#.###.#.#.#######.#.#####.#.#.###.###.#######.###.#.###.###.#.#.###.#########.###.#.#.#####.#.#####.#####.#.#####.#.#####.#.#.#.#",
        "#.#.#.......#.#...#.#.....#...#.#.#...#.#...#...#.....#...#...#.#.......#.#.............#...#...#.#...#.......#.#.....#.....#.#.....#.#.#.#.#",
        "#.#.#.#####.#.#.###.#####.#.###.#.#.###.###.###.###.###.###.###.###.#####.#######.#.###.#.#######.#.#.#######.#.#.#######.###.#####.###.#.#.#",
        "#...#.....#...#...#.....#.#.#...#.........#.#.#.....#...#...#...#...#...........#...#.#.#.#.....#...#.....#.#.#...#.......#...#...#.#...#.#.#",
        "#.#.#####.#.#.#.#.#####.#.#.#.#.#.#######.#.#.###.###.###.###.###.#.#####.#.###.###.#.#.#.#.###.#########.#.#.#.###.#.#.###.#####.#.#.###.#.#",
        "#...#...#.#.....#.....#.#.#...#.#.#...#...#.#...#.......#...#.....#.....#...#...#...#.#.#.#.#.#...#.....#.#.......#.#...#...#.....#.#.#.#...#",
        "#.#####.#.###.#.###.#.#.#.###.#.###.#.###.#.###.#######.###.###########.#####.#.#.###.#.#.#.#.###.#.###.#.#.###.#.#.#####.#####.#.#.#.#.#.###",
        "#.....#.#.#...#.#...#.#.#...#.#.#...#...#.#...#...#...#.#...#.........#...#.#.#...#...#.#.#.#...#...#...#.#.....#.#.#.#...#.....#.#...#.#...#",
        "#.###.#.#.#.#.###.#.#.#.#.#.#.#.#.#####.#.###.#.###.#.###.#.#.#######.###.#.#.#.###.#.#.###.#.#.#####.###.#######.#.#.#.###.#.#########.###.#",
        "#...#.#.#.......#.#...#.#.#.#.#.#...#.#.#...#...#...#...#.....#.....#.#.#.#...#.#...#.#.#...#.#.....#...#.......#.#.#.#...#.#.#.......#...#.#",
        "#.#.#.#.#####.#.#.#####.#.###.#.###.#.#.#####.###.#####.#.#####.###.#.#.#.#.#.#.#.#####.#.###.#####.###.#.#####.#.#.#.###.###.#.###.#.#.#.#.#",
        "#.#.#.#.#.....#.#.#...#...#...#.......#.......#...#...#.#.....#.#...#...#.#.#.#.#.....#...#.#.#...#...#.#.#.#...#.#...#.#...#.....#.#.#.#.#.#",
        "#.#.#.#.#.###.#.#.#.#.#.###.###################.#####.#.#####.#.#.#######.#.#.#.#####.#####.#.#.#.#.###.#.#.#.###.###.#.###.#######.#.#.###.#",
        "#...#...#.#.....#...#.......#.......#...........#.....#.......#.#.#...#...#.#.#.#...#.......#.#.#.#.....#...#.#.#...#...#...#.......#.#...#.#",
        "#.#####.#.#.#######.#.###.#########.#.###########.#.#.###.#.###.#.#.#.#.###.#.#.#.#.#####.###.#.#############.#.###.#.###.###.#####.#.###.#.#",
        "#...#...#.#.#.......#.#...#.........#...#.............#.....#...#.#.#...#...#.#.#.#.....#.....#.#.....#.......#.....#.#...#...#...#...#...#.#",
        "#.#.#.#.#.###.#####.###.#####.###.#.###.#.#######.#.###.#####.###.#.#####.###.#.#.#####.#.#####.#.#.#.###.#####.#######.###.#.#.#.#.###.#.#.#",
        "#...#...#.........#...#.#.....#.#.#...#.#...#...#.#...#...#...#...#.#.#...#...#...#.....#.#.....#.#.#...#...#.#.#.......#...#...#.......#.#.#",
        "#.#####.#########.#.#.#.###.###.#.#.#.#.###.#.#.#.#.#####.#.###.###.#.#.#.#.#######.#####.###.###.#.###.###.#.#.#.#####.###.#.#.###.###.###.#",
        "#.#.......#.....#...#.#.....#...#...#.#...#.#.#.#.#.#.....#.#.#...................#...#.#...#.#...#.#.......#.#...#.........#.#.............#",
        "#.#.#######.#.#.#.###.#######.#.#####.###.#.###.#.###.#####.#.#.#.###.###.#.#.#######.#.###.#.#.###.#########.#####.#####.###.#.#.#.#####.###",
        "#.#...#...#.#.#.........#.....#.....#.................#.....#.................#.....#.#.....#.........................................#.#...#",
        "#.#.###.#.#.#.###.#####.#.#.#######.###.#.#.###########.#####.#.#.#.#.#.#.#.#.#.###.#.###.###.#######.#.#.#####.#.#.#.#.###.#.#.#.#.#.#.###.#",
        "#...#...#...#...............#.....#...#.#.#.#...........#.....#.#.#.#.#...#.#.#...#.#...................#.....#.#.#...#.....#...#.#.#...#.#.#",
        "#.###.#######.###.#####.#.#####.#####.#.#.#.#.###############.#.#.#.#.#.###.#.###.#.#.#.###.#####.#.#########.###.###.#######.#.#.#.###.#.#.#",
        "#.....#...#...#.#.....#.....................#.#.............#.#.#.#...#.#.......#.#.#.#.#...#.....#...........#.....#...#.......#.#.......#.#",
        "#.#####.#.#.#.#.#.###.###.###.#########.#.###.#####.#######.#.#.#.#.###.#.#.#####.#.#.#.#.###.#.#.#############.#######.#####.#.#.#.#######.#",
        "#...#...#.#.....#.#.#...#.#.#...#.....#.#...#.#...#.....#.#.#.#...#...#...#.................................#.........#.#...........#.......#",
        "#.#.#.###.#.#.###.#.###.#.#.###.#.###.#.###.#.#.#.#####.#.#.#.#########.###.#######.#.#.###.#.#####.#.#####.#.#####.###.#.#.#.#.#.###.#######",
        "#...#.#.#.#.#...#...#.#.#.#.#...#.#.#.#...#.....#...#...#.#...#.......#...#.#.....#.#.#.#.#...#.....#...#.#.#.....#.....#.#...#.#.#...#.....#",
        "#.###.#.#.###.#.#.#.#.#.#.#.#.###.#.#.###.#####.###.#.###.###.#####.#.#.#.#.#.###.#.###.#.#####.#######.#.#.#####.#######.###.#.###.#######.#",
        "#S......#.....#.......#.....#.......#...........#...................#...#...#...#.......#.................#...............#...#.............#",
        "#############################################################################################################################################",
    ]
    
    func parseMap(input: [String]) -> ([[Bool]], (Int, Int), (Int, Int)) {
        var map = [[Bool]]()
        var start: (Int, Int)!
        var end: (Int, Int)!
        
        for (i, line) in input.enumerated() {
            var bline = [Bool]()
            
            for (j, ch) in line.enumerated() {
                switch ch {
                case "#": bline.append(false)
                case ".": bline.append(true)
                case "S":
                    start = (j, i)
                    bline.append(true)
                case "E":
                    end = (j, i)
                    bline.append(true)
                default: fatalError()
                    
                }
            }
            
            map.append(bline)
        }
        
        return (map, start, end)
    }
    
    var map: [[Bool]]!
    
    func rec(
        visited: [[Bool]],
        currentDir: Int,
        score: Int,
        currentPos: (Int, Int),
        target: (Int, Int),
        minScore: inout Int
    ) {
        //
        for (i, vLine) in visited.enumerated() {
            var line = ""
            for (j, b) in vLine.enumerated() {
                if !map[i][j] {
                    line.append("#")
                } else if b {
                    line.append(".")
                } else {
                    line.append(" ")
                }
            }
            print(line)
        }
        print("---")

        
        if currentPos.0 == target.0 && currentPos.1 == target.1 {
//            print("VISITED: \(score)")
//            visited.forEach { print($0.map { $0 ? "x" : "." }.joined()) }
//            print("---")
//            
            minScore = min(minScore, score)
            return
        }
        
        let dirs: [(Int, Int)] = [
            (0, -1), // b
            (+1, 0), // r
            (0, +1), // t
            (-1, 0), // l
        ]
        var visited = visited
        visited[currentPos.1][currentPos.0] = true
        
        let canGo: (Int, Int) -> Bool = { (y, x) in
            self.map[y][x] && !visited[y][x]
        }
        
        
        if canGo(currentPos.1 + dirs[currentDir].1, currentPos.0 + dirs[currentDir].0) {
            rec(
                visited: visited,
                currentDir: currentDir,
                score: score + 1,
                currentPos: (currentPos.0 + dirs[currentDir].0, currentPos.1 + dirs[currentDir].1),
                target: target,
                minScore: &minScore
            )
        }
        
        // left
        let leftDir = (currentDir + 1) % dirs.count
        if canGo(currentPos.1 + dirs[leftDir].1, currentPos.0 + dirs[leftDir].0) {
            rec(
                visited: visited,
                currentDir: leftDir,
                score: score + 1000,
                currentPos: currentPos,
                target: target,
                minScore: &minScore
            )
        }
        
        // right
        let rightDir = (currentDir + dirs.count - 1) % dirs.count
        if canGo(currentPos.1 + dirs[rightDir].1, currentPos.0 + dirs[rightDir].0) {
            rec(
                visited: visited,
                currentDir: rightDir,
                score: score + 1000,
                currentPos: currentPos,
                target: target,
                minScore: &minScore
            )
        }
        
        // turn around
        let oppositeDir = (currentDir + 2) % dirs.count
        if canGo(currentPos.1 + dirs[oppositeDir].1, currentPos.0 + dirs[oppositeDir].0) {
            rec(
                visited: visited,
                currentDir: oppositeDir,
                score: score + 2000,
                currentPos: currentPos,
                target: target,
                minScore: &minScore
            )
        }
    }
    
    func dowork() {
        let input = input0
        let (map, start, end) = parseMap(input: input)
        let currentDir = 1
        
        let N = map.count
        let M = map[0].count
        
        var result = Int.max
        
        self.map = map
        rec(
            visited: [[Bool]](repeating: [Bool](repeating: false, count: M), count: N),
            currentDir: currentDir,
            score: 0,
            currentPos: start,
            target: end,
            minScore: &result
        )
        
        print(result)
    }
}