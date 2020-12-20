//
//  main.swift
//  Advent20
//
//  Created by altaibayar tseveenbayar on 2020-12-20.
//

import Foundation

let input_long = [
    "Tile 1753:",
    "..##.#.#.#",
    "#...#.....",
    "#......#..",
    "#..##..#.#",
    "#..##....#",
    "#.........",
    "#.#...##..",
    "#....#..##",
    "##.......#",
    "#...######",
    "",
    "Tile 1699:",
    ".###.....#",
    "#.#......#",
    ".....#....",
    "#.....#..#",
    "..........",
    "#.#......#",
    "...#......",
    "#.........",
    ".###......",
    ".#....#.#.",
    "",
    "Tile 2297:",
    "####....##",
    "....#...#.",
    "###...#...",
    "...##.....",
    "#...#..#.#",
    "..........",
    "#......#.#",
    ".........#",
    "..........",
    "#..##.##..",
    "",
    "Tile 2017:",
    "#....#..##",
    ".#.#..#..#",
    "....##....",
    "#...#....#",
    "#.#.......",
    "..........",
    "#.#......#",
    "....##...#",
    "...#....##",
    "..###.##.#",
    "",
    "Tile 1283:",
    ".#....##..",
    "###...##..",
    "#.........",
    "#........#",
    "...####..#",
    ".#........",
    "....#.....",
    "........#.",
    "#....#..#.",
    "..#.####.#",
    "",
    "Tile 1171:",
    ".#..#.#.##",
    ".........#",
    "#...##..##",
    "#...#....#",
    ".......#..",
    "####.#...#",
    "..#....#..",
    "#.........",
    "#...#....#",
    "#..#.#.###",
    "",
    "Tile 2251:",
    ".##.##..#.",
    ".###.##..#",
    "#..##.#.#.",
    "#....#..#.",
    ".#........",
    "......#..#",
    ".....#...#",
    ".###.#....",
    "##...##..#",
    ".####.#.##",
    "",
    "Tile 2357:",
    "###...##.#",
    "......#.##",
    "#........#",
    "..#....#.#",
    "..#...##..",
    "#....##..#",
    "........#.",
    "#........#",
    "#.##...#..",
    "###.##.#..",
    "",
    "Tile 2503:",
    "...#...###",
    "..#......#",
    "#......##.",
    "#...#.....",
    ".....#..#.",
    "##...#..##",
    ".......#.#",
    ".#...#.#..",
    "#.......#.",
    "##..#..###",
    "",
    "Tile 1741:",
    ".#....##.#",
    "#.....#...",
    "...#...#..",
    "##....#...",
    ".##....###",
    "#.###.#..#",
    "#..#....##",
    "#.##.....#",
    "#.#.......",
    "###.##...#",
    "",
    "Tile 3433:",
    "#.......#.",
    "#.#.......",
    ".....#..#.",
    "#........#",
    "###.#..#..",
    "#....#....",
    ".....#...#",
    "..#......#",
    "....#.#.##",
    "##.##.....",
    "",
    "Tile 3947:",
    ".##.##.###",
    "#.#...#.##",
    "...#.##..#",
    "#.......##",
    "..#.......",
    ".#...#...#",
    ".....###.#",
    "####..##.#",
    ".##..#.#..",
    "..###..#.#",
    "",
    "Tile 1627:",
    "##....##.#",
    "#....#....",
    "....##...#",
    "##..#.....",
    "#..#....#.",
    ".#..#.##.#",
    ".#.......#",
    "#.........",
    ".#...##..#",
    "#.#....#..",
    "",
    "Tile 1667:",
    "###.#...##",
    "#..#.##..#",
    "##.....#.#",
    ".#........",
    "..#....#.#",
    ".##.......",
    "......#...",
    "....###.#.",
    "##.#..#.#.",
    ".#..##...#",
    "",
    "Tile 2287:",
    "##..####.#",
    "#.........",
    "#.##...#..",
    "#..#....#.",
    "#........#",
    "......##..",
    "#.##..#..#",
    "...#.....#",
    ".........#",
    "#####..###",
    "",
    "Tile 1787:",
    ".##.#.#.#.",
    "#.##.....#",
    ".........#",
    "...#......",
    "..#..#...#",
    "##....#..#",
    "##.......#",
    "..#.......",
    "...#....#.",
    ".##.####..",
    "",
    "Tile 1873:",
    "..#.###.##",
    ".......#.#",
    "#.#.......",
    "#...#.##.#",
    "......##..",
    ".#.....#.#",
    "...##...#.",
    "........#.",
    ".......#.#",
    "..######.#",
    "",
    "Tile 3709:",
    "..##..##.#",
    "##.......#",
    "#.........",
    "....#.....",
    "#..#...#.#",
    ".#....#..#",
    "...##....#",
    "#..#.....#",
    "....##....",
    ".##.###...",
    "",
    "Tile 3137:",
    "###..#.#.#",
    ".........#",
    "#....#....",
    "#.#......#",
    "...#.#.#.#",
    "..#...#...",
    ".........#",
    ".........#",
    "#.........",
    "##..###..#",
    "",
    "Tile 1423:",
    "###.##..##",
    "..........",
    "...#.....#",
    ".......#.#",
    "..........",
    "##.......#",
    "##........",
    "#.#....#..",
    "#.#.....##",
    ".##...#.##",
    "",
    "Tile 1399:",
    "#.#.#....#",
    ".........#",
    "#..#..#..#",
    "..#.......",
    "...#..##.#",
    "#..##...##",
    "#..#.....#",
    "#.##.#.#.#",
    ".....#...#",
    "####.....#",
    "",
    "Tile 2411:",
    ".##.#.#..#",
    "##..##...#",
    "#..#......",
    "##..#.##.#",
    ".......#.#",
    "##........",
    "#...#...#.",
    ".....#.#..",
    "........##",
    "#####.#..#",
    "",
    "Tile 3323:",
    "##.#...###",
    ".........#",
    ".....#....",
    "#...#.#..#",
    "#........#",
    "....#...##",
    "#........#",
    "#.....###.",
    "...#.#...#",
    "#.#...#...",
    "",
    "Tile 1213:",
    "..##.##...",
    ".....##..#",
    "#.....#..#",
    "#........#",
    "...#...#.#",
    "#.....#...",
    ".#.#.##...",
    ".....#...#",
    "#...#.#...",
    ".###.#####",
    "",
    "Tile 1619:",
    "#..###..##",
    "#.#.#.....",
    "#........#",
    ".........#",
    "###...#.##",
    ".#........",
    "..........",
    "..........",
    "#........#",
    "##.###.#.#",
    "",
    "Tile 1997:",
    "#....#....",
    "..#......#",
    "#.#...#..#",
    "#..#.....#",
    "#.....#..#",
    "#.#......#",
    "#.........",
    ".........#",
    ".....#...#",
    "#####..##.",
    "",
    "Tile 3533:",
    "#....#.#.#",
    "......##.#",
    "......##..",
    "#.....#..#",
    "....#..#.#",
    ".....#...#",
    ".#.#...#.#",
    "#...#..###",
    "#...#.#...",
    ".#..###.##",
    "",
    "Tile 3389:",
    "#..###....",
    ".#..#....#",
    "#.#...#.#.",
    ".........#",
    "#....#...#",
    "#.#....#.#",
    "......#..#",
    "##.......#",
    "##........",
    "...#####..",
    "",
    "Tile 3413:",
    "..##.##..#",
    "#........#",
    "#....#.#..",
    "#....#....",
    ".....##..#",
    ".........#",
    "....#.#..#",
    "#.#.#.#...",
    "#....#...#",
    ".####..#.#",
    "",
    "Tile 3833:",
    "##.......#",
    ".........#",
    "#.###...#.",
    ".....#.#..",
    "#.........",
    "#.....#...",
    "##.#......",
    "####.##..#",
    "....##...#",
    ".#.#...#..",
    "",
    "Tile 2273:",
    ".##.#.#.##",
    "#........#",
    "#.#....#..",
    "##..#....#",
    "....#.....",
    "#.......#.",
    ".#........",
    ".#...#....",
    "#........#",
    ".###...##.",
    "",
    "Tile 1987:",
    "...#...###",
    "#..#......",
    "#...#....#",
    "...##.....",
    "#........#",
    ".....##...",
    "#....##..#",
    ".#..##...#",
    "....#..#.#",
    "##.##..##.",
    "",
    "Tile 3877:",
    ".##...#.##",
    "..........",
    "..#.#.....",
    "..........",
    "#..##...#.",
    "#.#.....#.",
    ".#.......#",
    ".#..#.#...",
    "...#...#..",
    "#.##..#..#",
    "",
    "Tile 3109:",
    "##....##..",
    "##...#.#..",
    "..........",
    "...#.....#",
    ".####..###",
    ".#.##..#.#",
    "#.#...#...",
    "..........",
    "#.......#.",
    "##......#.",
    "",
    "Tile 3907:",
    "#####.##.#",
    "##.....#.#",
    "..##..#...",
    ".##....#.#",
    "..#.....##",
    "#.........",
    ".........#",
    "#.........",
    "........##",
    ".#...#.#.#",
    "",
    "Tile 1823:",
    "##...#.#.#",
    "#.........",
    "..........",
    "....#.....",
    "...#.##...",
    "##...#...#",
    "#.........",
    "##....#.##",
    "#...##..#.",
    "#####.#.#.",
    "",
    "Tile 1747:",
    ".#...##.#.",
    "...#.#....",
    "..#.##....",
    "#...##...#",
    "...#......",
    "#....##..#",
    "...#.....#",
    "...##..#.#",
    "#.###....#",
    "#......###",
    "",
    "Tile 3671:",
    ".####..###",
    "#.#......#",
    "..........",
    "#.....#...",
    ".#..#.#...",
    "..........",
    "#.........",
    "#.........",
    "..........",
    "#..#..##.#",
    "",
    "Tile 3541:",
    "###..#####",
    "##....#.#.",
    ".......#..",
    "....#.....",
    "#.#.....##",
    "#.###..###",
    "...#.#....",
    ".#.......#",
    ".....#....",
    "..#####..#",
    "",
    "Tile 3457:",
    "#..###....",
    "#....#..##",
    ".##......#",
    "#....#..#.",
    "..........",
    "#........#",
    "..........",
    "...#...#..",
    "#.....##.#",
    ".##..#.#..",
    "",
    "Tile 1721:",
    "..##.##.##",
    ".........#",
    "..#.......",
    "##.......#",
    "...#.....#",
    "...#...#..",
    "#..##.....",
    "........##",
    "#.#......#",
    "..#.#..###",
    "",
    "Tile 1597:",
    "#.#...#..#",
    "..#.......",
    "#.....#..#",
    "..#......#",
    "..#..#...#",
    "#..####...",
    "...#......",
    "#.#.#.#..#",
    "....#...#.",
    "#.##...#.#",
    "",
    "Tile 2087:",
    "####.#.###",
    "#...#....#",
    "##.......#",
    "##......##",
    "#.#......#",
    "..........",
    "#....##...",
    "....#..#.#",
    "####....#.",
    "######.##.",
    "",
    "Tile 2309:",
    "...###...#",
    ".##.......",
    ".....#...#",
    "#......#.#",
    "##.......#",
    "####.#....",
    "#.........",
    "##.#......",
    "..#..#..#.",
    "####.#.#.#",
    "",
    "Tile 3797:",
    "##..######",
    ".....#....",
    "#.###....#",
    ".#.......#",
    "..........",
    "#......#.#",
    "#..#......",
    "...#.#....",
    "#.........",
    "#.###...##",
    "",
    "Tile 2663:",
    "#....#.##.",
    "..........",
    ".#.......#",
    "##.....#..",
    ".#....#...",
    "#......#..",
    "#..#....##",
    ".#..#....#",
    "........##",
    "....######",
    "",
    "Tile 3779:",
    ".##....#.#",
    "##.#..#..#",
    "#.........",
    "#.........",
    "..#..#.#.#",
    ".......##.",
    "#....#...#",
    "#........#",
    "###.......",
    "#..##.###.",
    "",
    "Tile 1163:",
    "#####.#.##",
    "#......###",
    "..........",
    "#..#....#.",
    "#..##...##",
    "#...#.....",
    "#..##.#..#",
    "#....#.###",
    "#....#...#",
    "##.#.####.",
    "",
    "Tile 2683:",
    "....#.##.#",
    "#.....#.##",
    ".#....#...",
    ".#.......#",
    "......##..",
    ".#.#.....#",
    ".........#",
    ".......#..",
    "..........",
    "######.#.#",
    "",
    "Tile 1783:",
    "#.###.##.#",
    ".......#.#",
    "#..#....##",
    ".#..#.#.#.",
    "#........#",
    "#.......##",
    "#....###.#",
    "..##.#.#.#",
    ".....#..##",
    "..######.#",
    "",
    "Tile 1097:",
    "#.##..#...",
    "....#...##",
    "#...#.....",
    ".....#....",
    ".....#..##",
    "...##..#..",
    "..#...#...",
    "#.........",
    "#..##..#.#",
    "#.####...#",
    "",
    "Tile 2731:",
    ".#.##.#.#.",
    "......#...",
    ".....##..#",
    "...#..#..#",
    "###......#",
    "#...#.#..#",
    "..###....#",
    ".....#...#",
    "#...#....#",
    ".##.#.#...",
    "",
    "Tile 1433:",
    "###.###.##",
    "...#.#....",
    "..........",
    "..#......#",
    "..#.......",
    "#..#......",
    "..##.....#",
    "..........",
    "#.#..##..#",
    "##..##.#.#",
    "",
    "Tile 3853:",
    "..##..#..#",
    "#.#.......",
    ".....#...#",
    "....#..#..",
    ".......#.#",
    "##...##...",
    "##......##",
    ".........#",
    "##..#...##",
    "#.#..#....",
    "",
    "Tile 3169:",
    ".###....#.",
    "##.#....##",
    "#.........",
    "#.........",
    "..#.......",
    "#.......#.",
    ".#.##....#",
    ".#....#...",
    "##..##.#..",
    "#######..#",
    "",
    "Tile 3299:",
    "##..##...#",
    "..##......",
    "###.##....",
    "...#..##..",
    "#...#.##..",
    ".........#",
    "##....#...",
    ".........#",
    ".#...#.#.#",
    "##.#.....#",
    "",
    "Tile 2999:",
    "##..#.....",
    "#..#.....#",
    "#......#.#",
    ".........#",
    "#.........",
    ".........#",
    ".#...#....",
    "........##",
    "#.......#.",
    ".###..#...",
    "",
    "Tile 1499:",
    ".######...",
    "....##..#.",
    ".#.....###",
    "#...#.##.#",
    "......#.#.",
    "..#....#.#",
    ".#.......#",
    "......#.##",
    ".......#..",
    "###.####.#",
    "",
    "Tile 2237:",
    "#.#.###.#.",
    "..#.......",
    "#.#..#...#",
    "#......##.",
    "#####....#",
    ".#......#.",
    "##.#..###.",
    "..#...#...",
    "##........",
    "....####.#",
    "",
    "Tile 3049:",
    "......#..#",
    "...#....##",
    "...##.....",
    ".#.#..#...",
    ".#......##",
    ".#.#..#..#",
    ".........#",
    ".#.#....#.",
    "..#.......",
    "#.#..#..#.",
    "",
    "Tile 1583:",
    "#.#####...",
    "#........#",
    "........##",
    "..#.......",
    ".........#",
    "#.#..#..#.",
    "...#..##.#",
    "....##..##",
    "##.#.....#",
    "####...###",
    "",
    "Tile 2791:",
    ".....###..",
    "#...##....",
    "....##...#",
    ".........#",
    "#.........",
    ".#...##..#",
    "#.........",
    "#.#.#....#",
    "##..#..#..",
    "#.#..##..#",
    "",
    "Tile 1879:",
    ".#.###.#..",
    "#......#.#",
    "....#....#",
    "......####",
    "#......#.#",
    "#....#.#..",
    "......#...",
    "#........#",
    "#........#",
    "#..###.###",
    "",
    "Tile 2633:",
    "##.#.....#",
    "#.#......#",
    "........#.",
    "..#......#",
    "#.....#..#",
    "#.......##",
    "#.....#...",
    "...#.....#",
    "#..#....#.",
    "#..#.###.#",
    "",
    "Tile 3701:",
    "..##.##.#.",
    ".........#",
    ".#...##.##",
    "..#.......",
    "##.......#",
    ".....#....",
    "......##.#",
    ".#.#...#.#",
    "....#...##",
    "#..#..#.##",
    "",
    "Tile 2267:",
    ".....##..#",
    "...#.#.###",
    ".......###",
    ".#......##",
    ".........#",
    "#.....#..#",
    ".........#",
    "#....##..#",
    "#.#....##.",
    "...#####..",
    "",
    "Tile 2687:",
    "#..##.####",
    ".....#...#",
    "#....##..#",
    "..........",
    ".#.....#..",
    "#........#",
    "#...#.#...",
    "#........#",
    "#..#...##.",
    "#..##..#.#",
    "",
    "Tile 2113:",
    "##.#.##..#",
    ".#........",
    ".......#.#",
    "#.##.....#",
    ".........#",
    "...#......",
    "#.#...#...",
    ".##.......",
    "..........",
    ".#.#.#...#",
    "",
    "Tile 3319:",
    "...##..###",
    "..........",
    ".......#..",
    "#....#..#.",
    "..###....#",
    ".#....#..#",
    "#.#.#..#.#",
    "..##...#..",
    ".#.......#",
    "#..#.####.",
    "",
    "Tile 1303:",
    "#..##....#",
    "#....#....",
    "#.......#.",
    "#........#",
    "...#...#..",
    "..##.##.##",
    "........#.",
    "..........",
    "....#..#.#",
    "##..#.#.##",
    "",
    "Tile 1709:",
    "###.##.#.#",
    "##.......#",
    "#...#..#.#",
    "..........",
    ".........#",
    ".........#",
    "#.##....##",
    "....#..###",
    ".......#..",
    "#.#......#",
    "",
    "Tile 3547:",
    "#....####.",
    "#..##...##",
    "##....#..#",
    "#.........",
    "..#.#....#",
    "#....#...#",
    "...#....##",
    "..#.....##",
    "........#.",
    ".###.....#",
    "",
    "Tile 2383:",
    "#...#.#..#",
    "...#..##..",
    "##......##",
    "#..#......",
    "##......#.",
    "#........#",
    "........##",
    "..........",
    "#....#....",
    "####..###.",
    "",
    "Tile 3989:",
    "..##.#..#.",
    "#.......##",
    "#.#......#",
    "##.#.....#",
    "#..#......",
    ".........#",
    "#.##......",
    "...#.....#",
    ".#........",
    "#.##.#....",
    "",
    "Tile 3499:",
    "..##..#...",
    "..#.#..#..",
    ".##....###",
    "##.......#",
    "#..#.#..##",
    "#....#...#",
    ".........#",
    "##.#.#.#..",
    ".........#",
    "#..###.##.",
    "",
    "Tile 1049:",
    "###....##.",
    "........##",
    "..........",
    "..........",
    "..........",
    "....#...#.",
    ".........#",
    "#.........",
    ".........#",
    "##.####.#.",
    "",
    "Tile 2467:",
    ".....##.##",
    "#.##......",
    "..###...##",
    "#..#.....#",
    "..#....###",
    "...#.....#",
    "...#....##",
    ".##...#...",
    "...##...##",
    "#.##...#.#",
    "",
    "Tile 3343:",
    "###...####",
    "..........",
    "#####.....",
    ".#..#..###",
    "#....#..#.",
    "#........#",
    ".....#...#",
    ".......#..",
    "#........#",
    "##.#.#.###",
    "",
    "Tile 2129:",
    "##.####..#",
    "#..#..#...",
    ".#.....#.#",
    "##.......#",
    "##.#...#..",
    "..#.#.#...",
    "#....#...#",
    "#.....##..",
    ".#.....#..",
    "..#######.",
    "",
    "Tile 1483:",
    ".##.#.##.#",
    "##.#......",
    "#.#....#..",
    "#.#...#..#",
    "#........#",
    ".......#.#",
    "##...#..##",
    "#......#.#",
    "..........",
    "###.###.##",
    "",
    "Tile 2393:",
    "#.###.##.#",
    "#......#..",
    "..###..##.",
    "##......##",
    ".......#..",
    "........#.",
    ".......#..",
    "#........#",
    "..##.....#",
    "#####..##.",
    "",
    "Tile 2749:",
    "..#.#.#.#.",
    ".#.#......",
    "#.#......#",
    "....#.....",
    ".##......#",
    ".###......",
    "##..#.....",
    ".#..##..##",
    "..###.#...",
    "####.##.#.",
    "",
    "Tile 1453:",
    "#.##.#.##.",
    "....#...##",
    "#.#.......",
    "...#......",
    "....###..#",
    "...#...#..",
    "#...#.....",
    ".#..#....#",
    "##.......#",
    "#..###.##.",
    "",
    "Tile 2213:",
    "#.#.##.##.",
    "#.......#.",
    "#......#..",
    "#....#..#.",
    "......#...",
    "#..#.#....",
    "....#...##",
    "..#...#...",
    "###.#....#",
    "#..#.##.#.",
    "",
    "Tile 2833:",
    ".#.....#.#",
    "..#...#..#",
    ".##.....#.",
    "..##....#.",
    ".....#.###",
    "........##",
    ".#........",
    ".##......#",
    "......##..",
    "#....##...",
    "",
    "Tile 2671:",
    ".##.#.#.#.",
    ".#.##.#...",
    "##...#...#",
    "###...#...",
    "..........",
    "........##",
    "..#......#",
    ".#.......#",
    ".#.#.#.#.#",
    "#...##.#..",
    "",
    "Tile 1801:",
    ".#..#.####",
    "#..##....#",
    ".....#....",
    ".#.......#",
    "#.#.##...#",
    "#.........",
    ".........#",
    "......#..#",
    "..........",
    ".#.....###",
    "",
    "Tile 3329:",
    "##.#..#...",
    "..#.#.#..#",
    ".........#",
    "..........",
    "......#...",
    "#......#..",
    "#.#...#...",
    ".....###..",
    ".....##...",
    "#..#...#.#",
    "",
    "Tile 2179:",
    "....#.#.##",
    ".......###",
    "..#....###",
    "#........#",
    "...##....#",
    "..###....#",
    ".##.#....#",
    "#..#......",
    ".#........",
    "#.#..###..",
    "",
    "Tile 2003:",
    "##.##.####",
    ".....#....",
    "#...#.#...",
    "#..#.....#",
    ".....#....",
    ".......#..",
    "#..#......",
    "..#.....#.",
    "#..#.....#",
    "....#####.",
    "",
    "Tile 2707:",
    "..#..#.##.",
    ".##.......",
    "##.#......",
    ".#.#..#...",
    ".###..#.#.",
    "#.........",
    "#...#....#",
    "#.##.##..#",
    "##.......#",
    "..#..#####",
    "",
    "Tile 3847:",
    "..##..#..#",
    ".........#",
    "..........",
    "#.......#.",
    "........#.",
    ".##......#",
    ".#.......#",
    ".....#....",
    "#..#......",
    "#..###...#",
    "",
    "Tile 1289:",
    "#...##.#.#",
    "#.....##..",
    "....#.#...",
    ".........#",
    "....#....#",
    "#..#.#....",
    "#....#.#.#",
    ".#...#.##.",
    "#.....###.",
    "#.##..####",
    "",
    "Tile 1867:",
    "####..##.#",
    "#.##.....#",
    "..#..##...",
    "#...#....#",
    ".###..#..#",
    "....##....",
    "..........",
    "..#......#",
    "##.......#",
    "###.##....",
    "",
    "Tile 1021:",
    "####.##.#.",
    "#...#.....",
    "##.......#",
    "#.#.#..#.#",
    "##........",
    "##....#...",
    "###...#...",
    "##.##.....",
    ".##..#.#..",
    "...#..##..",
    "",
    "Tile 1427:",
    "#..####...",
    ".....#....",
    "#.........",
    "##........",
    "#.#.......",
    "........#.",
    ".........#",
    "#.#......#",
    "..#......#",
    ".####.#.#.",
    "",
    "Tile 1307:",
    "#.#.#...##",
    "....#.....",
    "#....#....",
    "##....##..",
    ".#.#.....#",
    "#....#..##",
    ".....#.#..",
    "#........#",
    "#........#",
    "#..#####..",
    "",
    "Tile 2099:",
    "#..###.###",
    "..........",
    "#.#..#..##",
    "..#.......",
    ".........#",
    "#.......##",
    ".#.#.....#",
    "..#..#..##",
    ".##...##..",
    "##....#.#.",
    "",
    "Tile 2389:",
    "#.###.#.##",
    "##....#.##",
    "#...#..###",
    ".#.#...#.#",
    "#.....#...",
    "#......#..",
    "...#...#..",
    "#..#.##...",
    ".......#.#",
    "..#.#...##",
    "",
    "Tile 2011:",
    "#.##.#.#.#",
    "#........#",
    "#......###",
    ".#..#.#..#",
    "##..###..#",
    ".#..#.##.#",
    "#.#.#...#.",
    "#.....#...",
    "....#...##",
    ".###.#....",
    "",
    "Tile 2539:",
    "###.#.#.##",
    "......#.##",
    "....##.#..",
    "#.#...#..#",
    "#..#......",
    "##...#.#..",
    ".........#",
    "#.#....#.#",
    ".##......#",
    ".###..#.##",
    "",
    "Tile 3761:",
    "...#.#..#.",
    "#.....#..#",
    "#..#......",
    "#..#.....#",
    "##........",
    "#..#.#....",
    "#......#..",
    "..#.##.#..",
    ".#.#..#...",
    ".....#.##.",
    "",
    "Tile 2549:",
    ".##.####..",
    "#.#.......",
    "#.##....#.",
    ".#........",
    "......#...",
    "....#.##..",
    "..#.....#.",
    "...#..#..#",
    "....#..###",
    "##...##...",
    "",
    "Tile 2039:",
    "#.#.####.#",
    "#.#....##.",
    "..........",
    "#.#.......",
    "##.....#..",
    "##....#.##",
    "#...#.....",
    "#...#...##",
    ".#.#..##.#",
    ".###......",
    "",
    "Tile 2063:",
    ".##.##..#.",
    "..#.##....",
    "#..#.#....",
    ".#.......#",
    "##........",
    "#.#..#.#..",
    "..........",
    "...###....",
    "#......#.#",
    "#.##.....#",
    "",
    "Tile 3181:",
    "#####.####",
    "#.....#..#",
    "#.#......#",
    ".........#",
    "#....#....",
    ".#.......#",
    "......#..#",
    "#......#..",
    "#..#....##",
    "#.....#..#",
    "",
    "Tile 2459:",
    ".##..#.#..",
    "#...#..#.#",
    "#.......##",
    "#........#",
    ".#.#.....#",
    "#...#..##.",
    ".......###",
    "....#..###",
    "........#.",
    "...#.##..#",
    "",
    "Tile 2953:",
    "########.#",
    "..#.......",
    "#...##...#",
    "........#.",
    "#..#....#.",
    "...#.#....",
    "..........",
    "#...#....#",
    "........#.",
    "##...##...",
    "",
    "Tile 1487:",
    "#.####.#..",
    ".....#...#",
    "#....#...#",
    "..#......#",
    ".....#...#",
    "#...##...#",
    "........#.",
    ".#.....#..",
    "#...#.....",
    ".#.###.#..",
    "",
    "Tile 1201:",
    "..#...#..#",
    "#.........",
    "#.........",
    "...#.....#",
    "..#......#",
    "..........",
    "..........",
    "#.#.......",
    "#....#....",
    "#.###.##..",
    "",
    "Tile 1609:",
    "##.##.###.",
    "#........#",
    "..........",
    "#.........",
    "........#.",
    ".#.##..#.#",
    "#..#....##",
    "#.#....#..",
    ".#...#....",
    "##.#..#...",
    "",
    "Tile 2593:",
    "####.#.#..",
    "#.#......#",
    "..........",
    "#..##.....",
    "...#...#..",
    "#..#.....#",
    "..#.......",
    "#........#",
    "..#.......",
    "..#..#..##",
    "",
    "Tile 3889:",
    "######..#.",
    "....#.#.#.",
    "##...#..##",
    "....#....#",
    "#...#....#",
    "..##.##...",
    "#.###....#",
    ".#......##",
    "#....#....",
    "#....#...#",
    "",
    "Tile 3041:",
    "###.......",
    "##..#...#.",
    "##..#..#.#",
    "......##.#",
    "###....##.",
    "..#...#...",
    "#...#.....",
    "##...#....",
    "#......#.#",
    "#...#.#.##",
    "",
    "Tile 1367:",
    "###.##.##.",
    "..##.#...#",
    "....#.....",
    "#........#",
    "###....#..",
    "#.####....",
    "####....#.",
    ".###.#.##.",
    "...#.....#",
    "..#...####",
    "",
    "Tile 2609:",
    ".###...#.#",
    "..........",
    "#........#",
    "...#.#.#.#",
    "......#..#",
    "#.....##..",
    "#..#..#..#",
    ".####..##.",
    "##......##",
    "#...##..##",
    "",
    "Tile 3167:",
    "########.#",
    ".#..#....#",
    "..#.......",
    "..#..#.#..",
    ".#.##.#..#",
    ".##......#",
    "##.....#.#",
    "..#.#....#",
    "#........#",
    ".#...#.###",
    "",
    "Tile 2753:",
    "#...#....#",
    "#....#...#",
    "....#....#",
    "#........#",
    "..........",
    "..........",
    "#.........",
    "#........#",
    "#.........",
    ".#....####",
    "",
    "Tile 3527:",
    ".####...##",
    "........##",
    "#......#.#",
    "#...#..#..",
    ".#......#.",
    ".#.....#.#",
    "#........#",
    "#..#....#.",
    "..#....##.",
    "#.#..#####",
    "",
    "Tile 1279:",
    ".###...#.#",
    "..#......#",
    "#.......##",
    "..........",
    "#......#.#",
    ".#...#....",
    ".#........",
    "#....##..#",
    "#.##...#..",
    "####..#..#",
    "",
    "Tile 1291:",
    "#......###",
    "##.#.....#",
    "..........",
    "#.#..##...",
    "......##.#",
    ".#.....#..",
    "..........",
    "#.#......#",
    "#.........",
    "#..#...###",
    "",
    "Tile 1319:",
    "##..##.###",
    "#.......#.",
    "..........",
    "###......#",
    "..........",
    "...##..#..",
    "#.#..#....",
    "#...#.....",
    ".#...#...#",
    "#..#.#..##",
    "",
    "Tile 1009:",
    "....##...#",
    "#.....##.#",
    "#....##...",
    ".#.....#..",
    "#...#.....",
    "#.........",
    "##........",
    "#....#..##",
    "...#...#.#",
    "#######...",
    "",
    "Tile 2659:",
    "....####.#",
    "#.##......",
    "..#.....##",
    ".#.......#",
    ".#........",
    "..##.....#",
    "...#......",
    "......#..#",
    "#.#..#...#",
    "#..#.##..#",
    "",
    "Tile 1543:",
    "#######.#.",
    "#..#.#...#",
    ".........#",
    "##.#.....#",
    "#.#......#",
    "#.......##",
    "..##......",
    "..#.###..#",
    "...#.....#",
    "##.###..#.",
    "",
    "Tile 1019:",
    "........#.",
    "#....#.#.#",
    "...#......",
    "##.#.#..##",
    "....#.#.#.",
    "#.###...##",
    "####.#..#.",
    "#....#....",
    "#........#",
    ".#...##.#.",
    "",
    "Tile 2239:",
    "##..###...",
    "......#..#",
    "##...#....",
    "..........",
    "....#...##",
    "...#...#.#",
    "..#.......",
    ".........#",
    "#..###...#",
    "##...#...#",
    "",
    "Tile 2797:",
    "#.#..#....",
    "#.......#.",
    "#.#..#....",
    "#......#..",
    "#....##..#",
    "#...#...##",
    "#.#.......",
    ".#.....#.#",
    "##.......#",
    "#...#.#.##",
    "",
    "Tile 1663:",
    "..##.#...#",
    "#....##..#",
    "....#....#",
    "..#......#",
    "#........#",
    "..........",
    "#..#.....#",
    "#...#....#",
    "#..#....#.",
    ".#..#.#..#",
    "",
    "Tile 1069:",
    "#########.",
    ".#........",
    "###.......",
    "...#....##",
    "#....#....",
    "#........#",
    "#...#....#",
    ".....#....",
    "#.#......#",
    ".#....##.#",
    "",
    "Tile 1559:",
    "##.###.#..",
    "##...#....",
    "..#......#",
    "...#.#..#.",
    "...##.#...",
    ".#..#.#.##",
    "#..#....#.",
    "....#.#..#",
    "..#.......",
    "####.#....",
    "",
    "Tile 3203:",
    "##.##.#...",
    "##........",
    "..#..#...#",
    "....#....#",
    "..##.....#",
    "#.....##..",
    "..........",
    "..........",
    "#......#..",
    "...#.#.##.",
    "",
    "Tile 2819:",
    ".####...##",
    "...#.##...",
    "..#....##.",
    "........#.",
    "...#...###",
    "..#....#..",
    "#.#.....##",
    "#.#..#.#..",
    "#...#.....",
    "###.......",
    "",
    "Tile 2027:",
    "..#..##.##",
    "#....#.#..",
    "......#...",
    "#.#....#..",
    ".........#",
    "........##",
    "#.#.......",
    "......#...",
    ".......#.#",
    ".#.#.##.#.",
    "",
    "Tile 1091:",
    "..#..###.#",
    "...#.....#",
    ".........#",
    "#........#",
    "..#.#..#..",
    "#....#...#",
    "....#.#..#",
    ".......###",
    "#.........",
    "#..##.##.#",
    "",
    "Tile 2381:",
    "...###...#",
    "#.#.#...#.",
    "....#....#",
    "#.....##..",
    "#........#",
    "..##....##",
    "#.#......#",
    "##.......#",
    ".....#.###",
    ".#.#######",
    "",
    "Tile 1381:",
    "######.##.",
    "#.#....#..",
    "#....###.#",
    "#.#.....#.",
    "#.#.#....#",
    "#....#...#",
    "#.#.#.#...",
    ".#.#.#....",
    "....#...#.",
    "####.#####",
    "",
    "Tile 3719:",
    "...#.#...#",
    "...#.....#",
    "...#..#.##",
    "#..#.....#",
    "#.......##",
    "##..#..#.#",
    ".......#..",
    ".##.......",
    ".......##.",
    ".#.#.###.#",
    "",
    "Tile 3593:",
    "##...##.#.",
    "#.........",
    "......#.#.",
    "..........",
    "..#......#",
    "#........#",
    ".....##..#",
    ".#....#.##",
    ".#.....###",
    "#.#..#...#",
    "",
    "Tile 2971:",
    "..##.....#",
    "#.....#.##",
    "#.#......#",
    "#....#....",
    ".........#",
    "#.........",
    "#......#..",
    ".......#.#",
    "##....#..#",
    "#.##.#..##",
    "",
    "Tile 1637:",
    "#.###.#..#",
    ".#..#.#..#",
    ".........#",
    "......#.##",
    "#..###...#",
    "....#.#...",
    "#.#.....##",
    "#........#",
    "......#..#",
    "##..#.....",
    "",
    "Tile 2711:",
    "..##.##...",
    "###..#...#",
    "......#...",
    "#.......#.",
    "#.#.......",
    "#.....##..",
    "...#.##..#",
    "..........",
    ".....#...#",
    "##.....###",
    "",
    "Tile 3881:",
    "..#####.##",
    ".#....#..#",
    ".........#",
    ".##..#....",
    "..###.#..#",
    "...#......",
    "...#...#.#",
    "..#.......",
    "#.....#...",
    ".#.##.#...",
    "",
    "Tile 1907:",
    "..####..##",
    ".......#..",
    ".......#..",
    ".........#",
    "....#.##.#",
    "..#..##...",
    "....#....#",
    "#...#....#",
    "#........#",
    ".#.##..#.#",
    "",
]

let input_short = [
    "Tile 2311:",
    "..##.#..#.",
    "##..#.....",
    "#...##..#.",
    "####.#...#",
    "##.##.###.",
    "##...#.###",
    ".#.#.#..##",
    "..#....#..",
    "###...#.#.",
    "..###..###",
    "",
    "Tile 1951:",
    "#.##...##.",
    "#.####...#",
    ".....#..##",
    "#...######",
    ".##.#....#",
    ".###.#####",
    "###.##.##.",
    ".###....#.",
    "..#.#..#.#",
    "#...##.#..",
    "",
    "Tile 1171:",
    "####...##.",
    "#..##.#..#",
    "##.#..#.#.",
    ".###.####.",
    "..###.####",
    ".##....##.",
    ".#...####.",
    "#.##.####.",
    "####..#...",
    ".....##...",
    "",
    "Tile 1427:",
    "###.##.#..",
    ".#..#.##..",
    ".#.##.#..#",
    "#.#.#.##.#",
    "....#...##",
    "...##..##.",
    "...#.#####",
    ".#.####.#.",
    "..#..###.#",
    "..##.#..#.",
    "",
    "Tile 1489:",
    "##.#.#....",
    "..##...#..",
    ".##..##...",
    "..#...#...",
    "#####...#.",
    "#..#.#.#.#",
    "...#.#.#..",
    "##.#...##.",
    "..##.##.##",
    "###.##.#..",
    "",
    "Tile 2473:",
    "#....####.",
    "#..#.##...",
    "#.##..#...",
    "######.#.#",
    ".#...#.#.#",
    ".#########",
    ".###.#..#.",
    "########.#",
    "##...##.#.",
    "..###.#.#.",
    "",
    "Tile 2971:",
    "..#.#....#",
    "#...###...",
    "#.#.###...",
    "##.##..#..",
    ".#####..##",
    ".#..####.#",
    "#..#.#..#.",
    "..####.###",
    "..#.#.###.",
    "...#.#.#.#",
    "",
    "Tile 2729:",
    "...#.#.#.#",
    "####.#....",
    "..#.#.....",
    "....#..#.#",
    ".##..##.#.",
    ".#.####...",
    "####.#.#..",
    "##.####...",
    "##..#.##..",
    "#.##...##.",
    "",
    "Tile 3079:",
    "#.#.#####.",
    ".#..######",
    "..#.......",
    "######....",
    "####.#..#.",
    ".#...#.##.",
    "#.#####.##",
    "..#.###...",
    "..#.......",
    "..#.###...",
    "",
]

typealias MapTyle = (id: Int, bottom: String, right: String)

func buildCombinations(left: String, top: String, right: String, bottom: String) -> [String: [(String, String)]] {
    let bases = [
        //base
        (left, top, right, bottom),
        // flip V
        (left.reverse, bottom, right.reverse, top),
        // flip H
        (right, top.reverse, left, bottom.reverse),
        // mirror
        // RB -> LT
        (bottom.reverse, right.reverse, top.reverse, left.reverse),

        // LB -> RT
        (top, left, bottom, right)
    ]

    var allCombinations: [(String, String, String, String)] = []
    for base in bases {
        let (left, top, right, bottom) = base

        let rotation = [
            (left, top, right, bottom),
            (top, right, bottom, left),
            (right, bottom, left, top),
            (bottom, left, top, right),
        ]

        rotation.forEach { allCombinations.append($0) }
    }

    var result = [String: [(String, String)]]()
    for ac in allCombinations {
        let key1 = ac.0
        if result[key1] != nil {
            result[key1]?.append((ac.2, ac.3))
        } else {
            result[key1] = [(ac.2, ac.3)]
        }

        let key2 = "\(ac.0)_\(ac.1)"
        if result[key2] != nil {
            result[key2]?.append((ac.2, ac.3))
        } else {
            result[key2] = [(ac.2, ac.3)]
        }
    }

    return result;
}

struct Tile {
    let id: Int
    let combinations: [String: [(String, String)]]
}

extension String {
    var reverse: String {
        return String(self.reversed())
    }
}

extension Tile: Hashable, Equatable {

    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.id)
    }

    static func parse(lines: [String]) -> Tile {
        let id = Int(lines[0].components(separatedBy: CharacterSet.decimalDigits.inverted).joined())!
        let left = lines[1 ..< 11].map { String($0.first!) }.joined()
        let right = lines[1 ..< 11].map { String($0.last!) }.joined()

        return Tile(
            id: id,
            combinations: buildCombinations(left: left, top: lines[1], right: right, bottom: lines.last!))
    }

    func matching(right: String?, bottom: String?) -> [MapTyle] {
        var result = [MapTyle]()

        let rootRight = right
        let rootBottom = bottom

        if let rootRight = rootRight, let rootBottom = rootBottom {
            let key = "\(rootRight)_\(rootBottom)"
            self.combinations[key]?.forEach { (right, bottom) in
                result.append((id: self.id, bottom: bottom, right: right))
            }
        } else if let rootRight = rootRight {
            self.combinations[rootRight]?.forEach { (right, bottom) in
                result.append((id: self.id, bottom: bottom, right: right))
            }
        } else {
            for (_, val) in self.combinations {
                val.forEach { (right, bottom) in
                    result.append((id: self.id, bottom: bottom, right: right))
                }
            }
        }

        return result
    }
}

func parse(lines: [String]) -> [Int: Tile] {
    var result = [Int: Tile]()
    for i in stride(from: 0, to: lines.count, by: 12) {
        let sub = lines[i ..< i + 11].map { String($0) }
        let tile = Tile.parse(lines: sub)

        result[tile.id] = tile
    }

    return result
}

func matchingTiles(from tiles: inout [Int: Tile], right: String?, bottom: String?) -> [MapTyle] {
    let matching = tiles.values
        .flatMap { $0.matching(right: right, bottom: bottom) }

    return matching
}

func rec(available: inout [Int: Tile], map: inout [[MapTyle?]], tileX: Int, tileY: Int) -> Bool {
    guard tileY < map.count else {
        return true
    }

    let matches = matchingTiles(
        from: &available,
        right: tileX > 0 ? map[tileY][tileX - 1]!.right : nil,
        bottom: tileY > 0 ? map[tileY - 1][tileX]!.bottom : nil)

    for match in matches {
        map[tileY][tileX] = match
        let removedTile = available.removeValue(forKey: match.id)!

        var nextX = tileX + 1
        let nextY: Int
        if nextX == map.count {
            nextX = 0
            nextY = tileY + 1
        } else {
            nextY = tileY
        }

        if rec(available: &available, map: &map, tileX: nextX, tileY: nextY) {
            return true
        }
        map[tileY][tileX] = nil
        available[match.id] = removedTile
    }

    return false
}

func part1(lines: [String]) {
    var tiles = parse(lines: lines)

    let N = Int(sqrt(Double(tiles.count)))
    var map: [[MapTyle?]] = Array(repeating: Array(repeating: nil, count: N), count: N)

    let result = rec(available: &tiles, map: &map, tileX: 0, tileY: 0)
    if result {
        let corners: [Int] = [
            map[0][0]?.id,
            map[N - 1][0]?.id,
            map[0][N - 1]?.id,
            map[N - 1][N - 1]?.id ].compactMap { $0 }

        print(corners)
        print(corners.reduce(1, *))
    } else {
        print("Fail")
    }
}

part1(lines: input_long)
