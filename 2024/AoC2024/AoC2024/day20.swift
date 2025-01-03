//
//  day20.swift
//  AoC2024
//
//  Created by a on 30/12/2024.
//

class Day20 {
    
    let input0 = [
        "#######",
        "#....S#",
        "#.#.#.#",
        "#.#####",
        "#.#.###",
        "#....E#",
        "######",
    ]
    
    let input1 = [
        "###############",
        "#...#...#.....#",
        "#.#.#.#.#.###.#",
        "#S#...#.#.#...#",
        "#######.#.#.###",
        "#######.#.#...#",
        "#######.#.###.#",
        "###..E#...#...#",
        "###.#######.###",
        "#...###...#...#",
        "#.#####.#.###.#",
        "#.#...#.#.#...#",
        "#.#.#.#.#.#.###",
        "#...#...#...###",
        "###############",
    ]
    
    let input2 = [
        "#############################################################################################################################################",
        "#.........#...#...###...###...#.............###...#...#...#.....#...#...#...###...#.....#.....#.....###.....#...#...#...#...#...........#...#",
        "#.#######.#.#.#.#.###.#.###.#.#.###########.###.#.#.#.#.#.#.###.#.#.#.#.#.#.###.#.#.###.#.###.#.###.###.###.#.#.#.#.#.#.#.#.#.#########.#.#.#",
        "#...#...#...#.#.#.#...#...#.#.#.........#...#...#.#.#.#.#...#...#.#.#.#...#...#.#...#...#...#.#.#...#...#...#.#.#.#.#.#...#...#.......#...#.#",
        "###.#.#.#####.#.#.#.#####.#.#.#########.#.###.###.#.#.#.#####.###.#.#.#######.#.#####.#####.#.#.#.###.###.###.#.#.#.#.#########.#####.#####.#",
        "###...#.....#.#.#.#.....#.#.#.#...###...#...#.#...#.#.#.....#.#...#.#.....#...#.....#.......#.#.#...#...#.....#...#.#.....#.....#...#.....#.#",
        "###########.#.#.#.#####.#.#.#.#.#.###.#####.#.#.###.#.#####.#.#.###.#####.#.#######.#########.#.###.###.###########.#####.#.#####.#.#####.#.#",
        "#...#...#...#.#.#.#...#.#.#.#.#.#...#.#.....#.#.###.#.#...#.#.#.#...###...#...#...#.........#.#.#...#...#...#.......#...#.#.......#...###...#",
        "#.#.#.#.#.###.#.#.#.#.#.#.#.#.#.###.#.#.#####.#.###.#.#.#.#.#.#.#.#####.#####.#.#.#########.#.#.#.###.###.#.#.#######.#.#.###########.#######",
        "#.#...#.#...#.#.#.#.#...#.#.#.#...#.#.#.###...#.#...#.#.#...#...#.#...#...#...#.#.#.......#.#...#...#.#...#...###.....#...#...#.....#.......#",
        "#.#####.###.#.#.#.#.#####.#.#.###.#.#.#.###.###.#.###.#.#########.#.#.###.#.###.#.#.#####.#.#######.#.#.#########.#########.#.#.###.#######.#",
        "#.#...#.....#.#.#.#.....#.#.#.#...#.#.#...#...#.#...#.#.........#.#.#...#.#.#...#.#...#...#.......#...#.........#.....#.....#...###.#...#...#",
        "#.#.#.#######.#.#.#####.#.#.#.#.###.#.###.###.#.###.#.#########.#.#.###.#.#.#.###.###.#.#########.#############.#####.#.###########.#.#.#.###",
        "#...#.......#...#.#.....#.#.#.#...#.#.#...#...#...#.#.###...#...#...#...#.#.#...#.#...#.#.........#.......#...#.#.....#.#.....#...#...#...###",
        "###########.#####.#.#####.#.#.###.#.#.#.###.#####.#.#.###.#.#.#######.###.#.###.#.#.###.#.#########.#####.#.#.#.#.#####.#.###.#.#.###########",
        "###...#...#.....#.#...#...#.#...#.#...#...#...#...#.#...#.#.#...#.....#...#.#...#.#.#...#.#.......#.#...#...#...#.#...#.#.#...#.#.....###...#",
        "###.#.#.#.#####.#.###.#.###.###.#.#######.###.#.###.###.#.#.###.#.#####.###.#.###.#.#.###.#.#####.#.#.#.#########.#.#.#.#.#.###.#####.###.#.#",
        "#...#...#.......#.....#...#...#.#...#...#...#.#...#...#.#.#...#.#.....#...#.#.#...#.#.###...#.....#...#...###...#...#.#...#.....#...#.....#.#",
        "#.#######################.###.#.###.#.#.###.#.###.###.#.#.###.#.#####.###.#.#.#.###.#.#######.###########.###.#.#####.###########.#.#######.#",
        "#.#.............#.......#.#...#...#...#.#...#.#...###.#.#...#.#.#.....###.#...#...#.#...#...#.....#.....#...#.#.###...#...........#.#.......#",
        "#.#.###########.#.#####.#.#.#####.#####.#.###.#.#####.#.###.#.#.#.#######.#######.#.###.#.#.#####.#.###.###.#.#.###.###.###########.#.#######",
        "#...#...........#.#...#.#...#...#.#...#.#.....#.......#.#...#...#...###...#.....#.#...#.#.#...#...#.###.....#.#.#...#...#.........#...#.....#",
        "#####.###########.#.#.#.#####.#.#.#.#.#.###############.#.#########.###.###.###.#.###.#.#.###.#.###.#########.#.#.###.###.#######.#####.###.#",
        "#...#...........#.#.#...#...#.#.#...#...#.........#.....#...#...#...#...#...###.#.#...#...#...#...#.#...#.....#.#...#...#.#.......#...#.#...#",
        "#.#.###########.#.#.#####.#.#.#.#########.#######.#.#######.#.#.#.###.###.#####.#.#.#######.#####.#.#.#.#.#####.###.###.#.#.#######.#.#.#.###",
        "#.#...........#...#.......#...#.#...#...#.......#.#.....###...#.#.#...#...#...#...#.....#...#...#.#...#.#.#...#...#...#...#.........#...#.###",
        "#.###########.#################.#.#.#.#.#######.#.#####.#######.#.#.###.###.#.#########.#.###.#.#.#####.#.#.#.###.###.###################.###",
        "#...........#.#...#...#...#...#...#...#.#.......#.......#...#...#...#...#...#...###...#.#.###.#...#.....#...#.#...#...#...#...#.....#...#...#",
        "###########.#.#.#.#.#.#.#.#.#.#########.#.###############.#.#.#######.###.#####.###.#.#.#.###.#####.#########.#.###.###.#.#.#.#.###.#.#.###.#",
        "#...........#...#...#...#...#...........#.....#...###...#.#.#...#.....###.#.....#...#...#...#.....#...#...###.#.###.#...#...#...###...#...#.#",
        "#.###########################################.#.#.###.#.#.#.###.#.#######.#.#####.#########.#####.###.#.#.###.#.###.#.###################.#.#",
        "#.........#.......#...#.................#.....#.#.#...#.#.#.#...#.....#...#...#...#.........#...#.#...#.#.#...#.....#.........#...#.....#...#",
        "#########.#.#####.#.#.#.###############.#.#####.#.#.###.#.#.#.#######.#.#####.#.###.#########.#.#.#.###.#.#.#################.#.#.#.###.#####",
        "#.........#...###...#.#.#.....#...#...#.#.#...#.#.#...#.#.#.#...#.....#...#...#...#.#...#...#.#.#.#.###.#.#.#.....#...........#.#.#...#.....#",
        "#.###########.#######.#.#.###.#.#.#.#.#.#.#.#.#.#.###.#.#.#.###.#.#######.#.#####.#.#.#.#.#.#.#.#.#.###.#.#.#.###.#.###########.#.###.#####.#",
        "#.............#...###...#...#...#...#...#.#.#...#.#...#.#.#.#...#.#.....#.#.#...#.#.#.#...#.#.#.#.#.#...#...#...#.#.............#.....#...#.#",
        "###############.#.#########.#############.#.#####.#.###.#.#.#.###.#.###.#.#.#.#.#.#.#.#####.#.#.#.#.#.#########.#.#####################.#.#.#",
        "#...............#.....#...#.....#.....###.#...###.#...#.#.#...###.#...#.#.#.#.#.#.#...#.....#.#.#.#...#.........#.....#...#...#...#.....#...#",
        "#.###################.#.#.#####.#.###.###.###.###.###.#.#.#######.###.#.#.#.#.#.#.#####.#####.#.#.#####.#############.#.#.#.#.#.#.#.#########",
        "#...#...#...#.......#...#...###...#...#...#...#...#...#...#.......#...#.#.#.#.#.#...#...#...#.#.#.#...#.............#.#.#.#.#...#.#.#...#...#",
        "###.#.#.#.#.#.#####.#######.#######.###.###.###.###.#######.#######.###.#.#.#.#.###.#.###.#.#.#.#.#.#.#############.#.#.#.#.#####.#.#.#.#.#.#",
        "###...#...#...#.....#.....#.........#...#...###...#.....###...#...#...#.#.#...#.#...#...#.#.#.#...#.#...#.......#...#...#.#.....#...#.#...#.#",
        "###############.#####.###.###########.###.#######.#####.#####.#.#.###.#.#.#####.#.#####.#.#.#.#####.###.#.#####.#.#######.#####.#####.#####.#",
        "#...............#...#.###...........#.....#.....#.#.....#.....#.#.#...#.#.....#.#...#...#.#.#.....#...#...#...#...#.....#.....#.#.....#.....#",
        "#.###############.#.#.#############.#######.###.#.#.#####.#####.#.#.###.#####.#.###.#.###.#.#####.###.#####.#.#####.###.#####.#.#.#####.#####",
        "#.........#.....#.#.#.#.............#.......#...#.#.....#.....#.#.#.###...#...#...#.#.#...#.#...#.#...#...#.#.......#...#...#...#.#.....#...#",
        "#########.#.###.#.#.#.#.#############.#######.###.#####.#####.#.#.#.#####.#.#####.#.#.#.###.#.#.#.#.###.#.#.#########.###.#.#####.#.#####.#.#",
        "#.......#...###...#...#...............#...#...###.#...#...#...#.#.#.....#.#.....#.#.#.#.###.#.#...#.....#...#...#.....#...#.......#.......#.#",
        "#.#####.###############################.#.#.#####.#.#.###.#.###.#.#####.#.#####.#.#.#.#.###.#.###############.#.#.#####.###################.#",
        "#.....#.#...#...#...#...#.......#.......#.#.....#...#.#...#.....#.#...#.#.#...#.#.#.#...#...#.#...............#.#.......#...#.....#.......#.#",
        "#####.#.#.#.#.#.#.#.#.#.#.#####.#.#######.#####.#####.#.#########.#.#.#.#.#.#.#.#.#.#####.###.#.###############.#########.#.#.###.#.#####.#.#",
        "#.....#...#.#.#.#.#.#.#.#.....#.#.......#.......#...#.#.........#.#.#...#.#.#.#.#...#...#...#.#...#...#.......#.....#.....#.#.#...#.....#...#",
        "#.#########.#.#.#.#.#.#.#####.#.#######.#########.#.#.#########.#.#.#####.#.#.#.#####.#.###.#.###.#.#.#.#####.#####.#.#####.#.#.#######.#####",
        "#.........#.#.#...#...#.......#.........#...#...#.#.#.#.....#...#...#...#...#.#...#...#.....#...#...#...#...#...###.#...###...#.#.....#...###",
        "#########.#.#.###########################.#.#.#.#.#.#.#.###.#.#######.#.#####.###.#.###########.#########.#.###.###.###.#######.#.###.###.###",
        "#.........#...#...#...#...#...............#...#...#.#...###.#.........#...#...#...#.............#...#.....#...#...#...#.....#...#...#...#...#",
        "#.#############.#.#.#.#.#.#.#######################.#######.#############.#.###.#################.#.#.#######.###.###.#####.#.#####.###.###.#",
        "#...#...#.....#.#.#.#...#...#.......................###...#.........#.....#...#.#.........#.....#.#...#...###.....###.......#.#...#...#.#...#",
        "###.#.#.#.###.#.#.#.#########.#########################.#.#########.#.#######.#.#.#######.#.###.#.#####.#.###################.#.#.###.#.#.###",
        "###...#...###...#...#...#...#...............###.........#.........#.#.......#.#.#...#...#.#...#.#.#.....#...................#.#.#...#.#.#...#",
        "#####################.#.#.#.###############.###.#################.#.#######.#.#.###.#.#.#.###.#.#.#.#######################.#.#.###.#.#.###.#",
        "#.........#.......#...#...#...............#.#...#.......#...#.....#.........#.#.#...#.#.#...#.#.#...#...#...#...#.....#.....#...###...#...#.#",
        "#.#######.#.#####.#.#####################.#.#.###.#####.#.#.#.###############.#.#.###.#.###.#.#.#####.#.#.#.#.#.#.###.#.#################.#.#",
        "#.......#.#.....#.#.....................#...#.#...#...#...#.#.........#.....#.#.#...#.#...#...#.###...#...#...#...###.#.......#...#...#...#.#",
        "#######.#.#####.#.#####################.#####.#.###.#.#####.#########.#.###.#.#.###.#.###.#####.###.#################.#######.#.#.#.#.#.###.#",
        "#.......#.....#.#.......................#...#.#.#...#...###.......#...#...#.#.#.###...###.#...#.....#.......#...#...#.........#.#.#.#.#...#.#",
        "#.###########.#.#########################.#.#.#.#.#####.#########.#.#####.#.#.#.#########.#.#.#######.#####.#.#.#.#.###########.#.#.#.###.#.#",
        "#...........#.#.#...#...#.....#...........#...#...#...#...#.....#...#...#.#.#...#...#...#...#.......#.#.....#.#...#.#.....#...#.#...#...#.#.#",
        "###########.#.#.#.#.#.#.#.###.#.###################.#.###.#.###.#####.#.#.#.#####.#.#.#.###########.#.#.#####.#####.#.###.#.#.#.#######.#.#.#",
        "#...###...#.#.#...#...#.#.###...#.......#...#.......#.....#.#...#...#.#.#.#...#...#...#...#.......#...#.......#...#.#.#...#.#.#.#.......#...#",
        "#.#.###.#.#.#.#########.#.#######.#####.#.#.#.#############.#.###.#.#.#.#.###.#.#########.#.#####.#############.#.#.#.#.###.#.#.#.###########",
        "#.#.....#...#...###...#...#.....#...###.#.#.#...............#...#.#.#.#.#.#...#.......#...#.....#.............#.#...#.#.#...#...#...#...#...#",
        "#.#############.###.#.#####.###.###.###.#.#.###################.#.#.#.#.#.#.#########.#.#######.#############.#.#####.#.#.#########.#.#.#.#.#",
        "#...........#...#...#.....#...#.###...#...#.#.....#...#...#.....#.#...#...#.....#.....#.........#.....#...###...###...#...#.......#.#.#.#.#.#",
        "###########.#.###.#######.###.#.#####.#####.#.###.#.#.#.#.#.#####.#############.#.###############.###.#.#.#########.#######.#####.#.#.#.#.#.#",
        "###...#...#.#...#.......#.#...#.#.....#...#...###...#...#.#.#...#.#...#...#.....#.................###...#.....#...#.....#...#...#...#.#...#.#",
        "###.#.#.#.#.###.#######.#.#.###.#.#####.#.###############.#.#.#.#.#.#.#.#.#.#################################.#.#.#####.#.###.#.#####.#####.#",
        "#...#...#.#...#...#...#.#.#...#.#.......#.............#...#.#.#...#.#...#...###...#.............###...###.....#.#.###...#...#.#.......#...#.#",
        "#.#######.###.###.#.#.#.#.###.#.#####################.#.###.#.#####.###########.#.#.###########.###.#.###.#####.#.###.#####.#.#########.#.#.#",
        "#.......#.###...#...#...#.....#.#...........#.........#.....#...#...#...#.....#.#.#.......#...#.....#.....#.....#...#.....#.#.#.........#...#",
        "#######.#.#####.###############.#.#########.#.#################.#.###.#.#.###.#.#.#######.#.#.#############.#######.#####.#.#.#.#############",
        "#.......#.#...#.#...#.........#.#.........#.#.........#...#.....#.#...#.#...#.#.#...#.....#.#.#...#...#.....#.......#...#.#...#...........###",
        "#.#######.#.#.#.#.#.#.#######.#.#########.#.#########.#.#.#.#####.#.###.###.#.#.###.#.#####.#.#.#.#.#.#.#####.#######.#.#.###############.###",
        "#.......#...#.#...#.#.#.......#...#.......#.....#.....#.#.#.....#.#.#...###.#.#...#.#.....#.#.#.#...#...#.....#.......#...#.....#.......#...#",
        "#######.#####.#####.#.#.#########.#.###########.#.#####.#.#####.#.#.#.#####.#.###.#.#####.#.#.#.#########.#####.###########.###.#.#####.###.#",
        "###...#.#...#...###...#.........#...#...###...#...#.....#.#...#.#...#.#.....#.....#...###...#...#.........#...#...#.........#...#.....#...#.#",
        "###.#.#.#.#.###.###############.#####.#.###.#.#####.#####.#.#.#.#####.#.#############.###########.#########.#.###.#.#########.#######.###.#.#",
        "#...#.#...#...#.....#.....#.....#.....#...#.#...###...#...#.#.#.#.....#.......#.......#.....#..E#...#.......#.....#.......###.........###.#.#",
        "#.###.#######.#####.#.###.#.#####.#######.#.###.#####.#.###.#.#.#.###########.#.#######.###.#.#####.#.###################.###############.#.#",
        "#...#.#.....#...#...#...#...#.....#.......#.#...#...#.#.#...#.#.#.#...###.....#.#...#...#...#.###...#.#.....#...#...#...#...#.....###...#.#.#",
        "###.#.#.###.###.#.#####.#####.#####.#######.#.###.#.#.#.#.###.#.#.#.#.###.#####.#.#.#.###.###.###.###.#.###.#.#.#.#.#.#.###.#.###.###.#.#.#.#",
        "###.#.#...#.....#.....#.....#.....#.#.......#...#.#.#.#.#...#.#.#.#.#...#.....#.#.#.#...#.#...###...#.#...#.#.#.#.#.#.#...#.#.#...#...#.#...#",
        "###.#.###.###########.#####.#####.#.#.#########.#.#.#.#.###.#.#.#.#.###.#####.#.#.#.###.#.#.#######.#.###.#.#.#.#.#.#.###.#.#.#.###.###.#####",
        "#...#...#...........#.#.....#.....#...#...#...#.#.#...#.#...#...#.#.#...#.....#.#.#...#.#.#.#######...###.#...#.#.#.#.###.#...#...#...#.#...#",
        "#.#####.###########.#.#.#####.#########.#.#.#.#.#.#####.#.#######.#.#.###.#####.#.###.#.#.#.#############.#####.#.#.#.###.#######.###.#.#.#.#",
        "#.#...#.............#...#.....###.......#...#...#...#...#.....#...#.#...#.....#.#.#...#.#.#.###.....#...#...#...#.#.#...#...#...#.###.#...#.#",
        "#.#.#.###################.#######.#################.#.#######.#.###.###.#####.#.#.#.###.#.#.###.###.#.#.###.#.###.#.###.###.#.#.#.###.#####.#",
        "#.#.#.#.....#...#...#...#.#.....#...............#...#.......#.#...#...#.###...#...#...#.#...###...#...#.....#.....#.#...#...#.#.#.....#.....#",
        "#.#.#.#.###.#.#.#.#.#.#.#.#.###.###############.#.#########.#.###.###.#.###.#########.#.#########.#################.#.###.###.#.#######.#####",
        "#.#.#.#.#...#.#.#.#.#.#...#...#.###...#.........#.........#.#.#...###.#...#...#.......#.#########.................#...###.#...#.#.....#...###",
        "#.#.#.#.#.###.#.#.#.#.#######.#.###.#.#.#################.#.#.#.#####.###.###.#.#######.#########################.#######.#.###.#.###.###.###",
        "#.#.#.#.#.#...#...#...###.....#.....#...#.....#...#.....#.#.#.#.#...#...#...#.#...#...#.###...#...#...#.....#...#.....#...#...#.#...#...#...#",
        "#.#.#.#.#.#.#############.###############.###.#.#.#.###.#.#.#.#.#.#.###.###.#.###.#.#.#.###.#.#.#.#.#.#.###.#.#.#####.#.#####.#.###.###.###.#",
        "#...#...#...#...#.........#...#.....#...#.#...#.#.#...#.#.#.#.#.#.#.###.#...#.#...#.#.#.###.#.#.#.#.#.#...#...#.......#.......#.....###.#...#",
        "#############.#.#.#########.#.#.###.#.#.#.#.###.#.###.#.#.#.#.#.#.#.###.#.###.#.###.#.#.###.#.#.#.#.#.###.#############################.#.###",
        "#...#...#.....#...#.......#.#.#...#.#.#.#.#.#...#.#...#.#.#.#.#.#.#.#...#.#...#.#...#.#.###.#.#.#.#.#...#...........................#...#...#",
        "#.#.#.#.#.#########.#####.#.#.###.#.#.#.#.#.#.###.#.###.#.#.#.#.#.#.#.###.#.###.#.###.#.###.#.#.#.#.###.###########################.#.#####.#",
        "#.#...#.#...........#.....#.#.#...#.#.#...#.#...#.#...#.#.#.#.#.#.#...#...#.###.#.#...#.###.#.#.#.#...#.#...........................#...#...#",
        "#.#####.#############.#####.#.#.###.#.#####.###.#.###.#.#.#.#.#.#.#####.###.###.#.#.###.###.#.#.#.###.#.#.#############################.#.###",
        "#.....#...#...###...#.#.....#.#.###.#...###.....#.#...#.#.#.#.#.#...###...#...#.#.#.#...#S#.#.#.#...#.#.#.........................#.....#...#",
        "#####.###.#.#.###.#.#.#.#####.#.###.###.#########.#.###.#.#.#.#.###.#####.###.#.#.#.#.###.#.#.#.###.#.#.#########################.#.#######.#",
        "#...#...#.#.#.#...#...#...#...#.#...#...#.........#...#.#.#.#.#...#.#.....#...#...#.#.###.#.#...###.#.#...#.....#.................#.....#...#",
        "#.#.###.#.#.#.#.#########.#.###.#.###.###.###########.#.#.#.#.###.#.#.#####.#######.#.###.#.#######.#.###.#.###.#.#####################.#.###",
        "#.#.....#...#...#.....#...#...#.#.#...#...#...#...#...#.#.#.#.#...#.#.#...#.....#...#...#.#.###.....#.#...#...#.#.......###.........#...#...#",
        "#.###############.###.#.#####.#.#.#.###.###.#.#.#.#.###.#.#.#.#.###.#.#.#.#####.#.#####.#.#.###.#####.#.#####.#.#######.###.#######.#.#####.#",
        "#.#...#...#...#...#...#.....#.#.#.#.###.#...#...#.#...#.#.#...#.....#...#.#...#.#...#...#...#...#.....#.#.....#...#...#.....#.......#.......#",
        "#.#.#.#.#.#.#.#.###.#######.#.#.#.#.###.#.#######.###.#.#.###############.#.#.#.###.#.#######.###.#####.#.#######.#.#.#######.###############",
        "#.#.#...#.#.#.#...#...#...#.#...#...#...#...#.....#...#...###.............#.#.#.#...#.....#...#...#.....#.......#.#.#.#.....#.###...#...#...#",
        "#.#.#####.#.#.###.###.#.#.#.#########.#####.#.#####.#########.#############.#.#.#.#######.#.###.###.###########.#.#.#.#.###.#.###.#.#.#.#.#.#",
        "#...#.....#.#.#...###...#.#.....###...#...#.#.#...#.........#.#...#.....#...#.#.#.#...#...#...#...#...#.....#...#...#.#.#...#...#.#.#.#.#.#.#",
        "#####.#####.#.#.#########.#####.###.###.#.#.#.#.#.#########.#.#.#.#.###.#.###.#.#.#.#.#.#####.###.###.#.###.#.#######.#.#.#####.#.#.#.#.#.#.#",
        "#...#.....#.#...#.........#...#...#...#.#.#.#.#.#...#...#...#.#.#...###.#...#.#.#.#.#...#...#.#...#...#.###.#.......#.#.#...#...#.#.#.#...#.#",
        "#.#.#####.#.#####.#########.#.###.###.#.#.#.#.#.###.#.#.#.###.#.#######.###.#.#.#.#.#####.#.#.#.###.###.###.#######.#.#.###.#.###.#.#.#####.#",
        "#.#.......#...###...#.....#.#...#...#.#.#.#.#.#.#...#.#...###...#...#...#...#...#.#.....#.#.#.#...#.#...#...#.......#...###.#.....#...#.....#",
        "#.###########.#####.#.###.#.###.###.#.#.#.#.#.#.#.###.###########.#.#.###.#######.#####.#.#.#.###.#.#.###.###.#############.###########.#####",
        "#.#...#.....#.....#...###.#...#...#.#.#.#...#...#.#...#...........#...#...#...###.....#.#.#.#.#...#...###...#...#.........#.#.....#...#.#...#",
        "#.#.#.#.###.#####.#######.###.###.#.#.#.#########.#.###.###############.###.#.#######.#.#.#.#.#.###########.###.#.#######.#.#.###.#.#.#.#.#.#",
        "#...#.#...#.#...#...#.....#...#...#.#.#.#.........#.#...#.....#.......#.....#.......#...#.#...#.###...#...#...#...#...#...#.#...#.#.#.#...#.#",
        "#####.###.#.#.#.###.#.#####.###.###.#.#.#.#########.#.###.###.#.#####.#############.#####.#####.###.#.#.#.###.#####.#.#.###.###.#.#.#.#####.#",
        "#.....#...#.#.#.#...#.#...#.###.....#...#.#.......#.#.#...#...#.#.....#.....#.......###...#...#.....#...#...#...#...#.#...#...#.#.#.#.#...#.#",
        "#.#####.###.#.#.#.###.#.#.#.#############.#.#####.#.#.#.###.###.#.#####.###.#.#########.###.#.#############.###.#.###.###.###.#.#.#.#.#.#.#.#",
        "#.....#...#.#.#.#...#...#.#...........#...#.#...#...#.#.#...#...#...#...###...###...#...#...#.#.............#...#.###.#...#...#.#.#.#.#.#.#.#",
        "#####.###.#.#.#.###.#####.###########.#.###.#.#.#####.#.#.###.#####.#.###########.#.#.###.###.#.#############.###.###.#.###.###.#.#.#.#.#.#.#",
        "#.....#...#...#...#.#.....#.......#...#...#.#.#.......#.#...#.#.....#.###.....#...#...#...#...#.............#...#...#.#...#...#.#...#.#.#...#",
        "#.#####.#########.#.#.#####.#####.#.#####.#.#.#########.###.#.#.#####.###.###.#.#######.###.###############.###.###.#.###.###.#.#####.#.#####",
        "#...#...#####...#...#.....#.....#...#...#...#...#.....#...#...#.#...#...#.#...#.....#...###...#...#.....#...###...#.#.#...#...#.###...#...###",
        "###.#.#######.#.#########.#####.#####.#.#######.#.###.###.#####.#.#.###.#.#.#######.#.#######.#.#.#.###.#.#######.#.#.#.###.###.###.#####.###",
        "#...#.....#...#...........#...#.......#.#.......#.#...#...#.....#.#...#...#.....#...#.....#...#.#.#...#.#...#.....#.#.#.#...#...#...#...#...#",
        "#.#######.#.###############.#.#########.#.#######.#.###.###.#####.###.#########.#.#######.#.###.#.###.#.###.#.#####.#.#.#.###.###.###.#.###.#",
        "#.........#.................#...........#.........#.....###.......###...........#.........#.....#.....#.....#.......#...#.....###.....#.....#",
        "#############################################################################################################################################",
    ]
    
    class Pos: Hashable, CustomDebugStringConvertible {
        
        func hash(into hasher: inout Hasher) {
            hasher.combine(x)
            hasher.combine(y)
        }
        
        static func == (lhs: Day20.Pos, rhs: Day20.Pos) -> Bool {
            lhs.x == rhs.x && lhs.y == rhs.y
        }
        
        let x: Int
        let y: Int
        
        var neigh = Set<Pos>()
        var dist = Int.max
        var prev: Pos? = nil
        
        init (x: Int, y: Int) {
            self.x = x
            self.y = y
        }
        
        var debugDescription: String {
            "(x: \(x), y: \(y)), dist: \(dist), hasPrev: \(prev != nil)"
        }
    }
    
    func createInitialMap(input: [String]) -> (map: [[Pos?]], start: Pos, end: Pos) {
        let N = input.count
        
        var result = [[Pos?]](repeating: [Pos?](repeating: nil, count: N), count: N)
        var start: Pos!
        var end: Pos!
        
        for (i, line) in input.enumerated() {
            for (j, ch) in line.enumerated() {
                if ch == "." {
                    result[i][j] = Pos(x: j, y: i)
                } else if ch == "S" {
                    result[i][j] = Pos(x: j, y: i)
                    start = result[i][j]
                } else if ch == "E" {
                    result[i][j] = Pos(x: j, y: i)
                    end = result[i][j]
                }
            }
        }
        
        return (result, start, end)
    }
    
    func iterateMutationMap(from input: [[Pos?]], with block: ([[Pos?]]) -> Void) {
        let N = input.count
        
        var result = input
        
        for i in 1 ..< N - 1 {
            for j in 1 ..< N - 1 {
                if result[i][j] == nil {
                    result[i][j] = Pos(x: j, y: i)
                    block(result)
                    result[i][j] = nil
                }
            }
        }
    }
    
    func fasterIteration(from input: [[Pos?]], start: Pos, end: Pos, block: (Int) -> Void) {
        let N = input.count
        
        let neighShift = [
            (-2, 0),
            (+2, 0),
            (0, +2),
            (0, -2),
        ]
        
        var partOfPath = [[Bool]](repeating: [Bool](repeating: false, count: N), count: N)
        var current: Pos? = end
        while current != nil {
            partOfPath[current!.y][current!.x] = true
            current = current?.prev
        }
        
//        print("Part of path")
//        for i in 0 ..< N {
//            for j in 0 ..< N {
//                print(partOfPath[i][j] ? "." : " ", terminator: "")
//            }
//            print("", terminator: "\n")
//        }
                
        for i in 1 ..< N - 1 {
            for j in 1 ..< N - 1 {
                if let mapEl = input[i][j] {
                    for ns in neighShift {
                        let nX = j + ns.0
                        let nY = i + ns.1
                 
                        if nX < 0 || nX >= N || nY < 0 || nY >= N { continue }
                        if !partOfPath[i][j] || !partOfPath[nY][nX] { continue }

                        if let n = input[nY][nX] {
                            if n.dist > mapEl.dist && n.dist - mapEl.dist > 2 {
                                block(n.dist - mapEl.dist)
                            }
                        }
                    }
                }
            }
        }
        
    }
        
    func buildNeighbours(into map: [[Pos?]]) {
        let neighShift = [
            (-1, 0),
            (+1, 0),
            (0, -1),
            (0, +1),
        ]
        let N = map.count

        for i in 0 ..< N {
            for j in 0 ..< N {
                map[i][j]?.neigh.removeAll()
                map[i][j]?.dist = Int.max
                map[i][j]?.prev = nil
            }
        }
        
        for i in 0 ..< N {
            for j in 0 ..< N {
                
                if let mapEl = map[i][j] {
                    
                    for ns in neighShift {
                        let nX = j + ns.0
                        let nY = i + ns.1
                        if nX < 0 || nX >= N || nY < 0 || nY >= N { continue }
                        
                        if let neighbour = map[nY][nX] {
                            mapEl.neigh.insert(neighbour)
                            neighbour.neigh.insert(mapEl)
                        }
                    }
                }
            }
        }
    }
    
    func dijkstra(map: [[Pos?]], start: Pos, end: Pos) -> Int {
        buildNeighbours(into: map)
        
        start.prev = nil
        start.dist = 0
        
        let heap = Heap<Pos>() { (l: Pos, r: Pos) in l.dist < r.dist }
        for i in 0 ..< map.count {
            for j in 0 ..< map.count {
                if let pos = map[i][j] { heap.insert(item: pos) }
            }
        }

        while heap.count > 0 {
            let current = heap.popTop()
            
            for n in current.neigh where heap.heap.contains(n) {
                if n.dist > current.dist + 1 {
                    n.dist = current.dist + 1
                    n.prev = current
                    
                    let index = heap.heap.firstIndex(of: n)!
                    heap.bubbleUp(idx: index)
                }
            }
        }
        
        return end.dist
    }
    
    func dowork() {
        let input = input2
        
        let (initialMap, start, end) = createInitialMap(input: input)
//        print("- Initial map -")
//        initialMap.printMap()

        let initialDuration = dijkstra(map: initialMap, start: start, end: end)
        print("Initial duration: \(initialDuration)")
        var saved = [Int: Int]();
        
//        print("--------")
//        initialMap.printDistance()
//        print("--------")

        fasterIteration(from: initialMap, start: start, end: end) { savedDuration in
            if savedDuration != 0 {
                saved[savedDuration] = (saved[savedDuration] ?? 0) + 1
            }
        }
        
//        var mutations = 0
//        iterateMutationMap(from: initialMap) { newMap in
////            print("--- \(mutations + 1) ----")
////            newMap.printMap()
//            
//            mutations += 1
//            
//            let savedDuration = initialDuration - dijkstra(map: newMap, start: start, end: end)
//            if savedDuration != 0 {
//                saved[savedDuration] = (saved[savedDuration] ?? 0) + 1
//            }
//        }
//        print("Number of mutations: \(mutations)")
        
        var savedMore = 0
        for k in saved.keys.sorted() {
            if k > 100 {
                savedMore += saved[k]!
            }

            print("There are \(saved[k]!) cheats that save \(k) picoseconds.")
        }

        print("Mode than 100pico saved \(savedMore) times")
    }
    
    /// https://tomzurkan.medium.com/swift-heap-priority-queue-6a1644ba8d5d
    /// This is a simple Heap implementation which can be used as a priority queue.
    class Heap<T> {
        typealias HeapComparator = (_ l:T,_ r:T) -> Bool
        
        var heap = [T]()
        
        var count:Int {
            get {
                heap.count
            }
        }
        
        var comparator: HeapComparator
        
        
        /// bubbleUp is called after appending the item to the end of the queue.  Depending on the comparator,
        /// it will bubbleUp to its approriate spot
        /// - Parameter idx: Index to bubble up.  This starts after insert with last index being passed in.
        func bubbleUp(idx:Int) {
            let parent = (idx - 1) / 2
            
            if idx <= 0 {
                return
            }
            
            if comparator(heap[idx], heap[parent]) {
                heap.swapAt(parent, idx)
                bubbleUp(idx: parent)
            }
        }
        
        /// Heapify the current heap.  This method walks down the children and rearranges them in comparator order.
        /// - Parameter idx: index to heapify.
        func heapify(_ idx:Int) {
            let left = idx * 2 + 1
            let right = idx * 2 + 2
            
            var comp = idx
            
            if count > left && comparator(heap[left], heap[comp]) {
                comp = left
            }
            if count > right && comparator(heap[right], heap[comp]) {
                comp = right
            }
            if comp != idx {
                heap.swapAt(comp, idx)
                heapify(comp)
            }
        }
        
        init(_ comparator: @escaping HeapComparator) {
            self.comparator = comparator
        }
        
        
        /// Insert item into the heap.  This walks up the parents. This is a O(log n) operation
        /// - Parameter item: item that is comparable.
        func insert(item:T) {
            heap.append(item)
            bubbleUp(idx: count-1)
        }
        
        
        /// Get the top item in the heap based on comparator. This is a 0(1) operation
        /// - Returns: top item or nil if empty.
        func getTop() -> T? {
            return heap.first
        }
        
        
        /// Remove the top item.  This is a O(log n) operation
        /// - Returns: returns top item based on comparator or nil if empty.
        func popTop() -> T {
            guard let item = heap.first else {
                fatalError()
            }
            
            if count > 1 {
                // set the top to the last element and heapify
                // this means we can remove the last after "poping" the first.
                heap[0] = heap[count-1]
                heap.removeLast()
                heapify(0)
            }
            else if count == 1{
                heap.removeLast()
            }
            else {
                fatalError()
            }
            
            return item
        }
    }
    
}

extension Array where Element == Array<Day20.Pos?> {
    
    func printDistance() {
        for i in 0 ..< count {
            for j in 0 ..< count {
                print(
                    self[i][j] == nil
                    ? "... "
                    : String(format: "%03d ", self[i][j]!.dist)
                    
                    , terminator: "")
            }
            print("", terminator: "\n")
        }
    }
    
    func printMap() {
        for i in 0 ..< count {
            for j in 0 ..< count {
                print(self[i][j] == nil ? "#" : ".", terminator: "")
            }
            print("", terminator: "\n")
        }
    }
}
