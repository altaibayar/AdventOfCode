//
//  day15.swift
//  AoC2024
//
//  Created by a on 16/12/2024.
//

class Day15 {
    
    let input0 = [
        "########",
        "#..O.O.#",
        "##@.O..#",
        "#...O..#",
        "#.#.O..#",
        "#...O..#",
        "#......#",
        "########",
"",
        "<^^>>>vv<v>>v<<",
    ]
    
    let input1 = [
        "##########",
        "#..O..O.O#",
        "#......O.#",
        "#.OO..O.O#",
        "#..O@..O.#",
        "#O#..O...#",
        "#O..O..O.#",
        "#.OO.O.OO#",
        "#....O...#",
        "##########",
        "",
        "<vv>^<v^>v>^vv^v>v<>v^v<v<^vv<<<^><<><>>v<vvv<>^v^>^<<<><<v<<<v^vv^v>^",
        "vvv<<^>^v^^><<>>><>^<<><^vv^^<>vvv<>><^^v>^>vv<>v<<<<v<^v>^<^^>>>^<v<v",
        "><>vv>v^v^<>><>>>><^^>vv>v<^^^>>v^v^<^^>v^^>v^<^v>v<>>v^v^<v>v^^<^^vv<",
        "<<v<^>>^^^^>>>v^<>vvv^><v<<<>^^^vv^<vvv>^>v<^^^^v<>^>vvvv><>>v^<<^^^^^",
        "^><^><>>><>^^<<^^v>>><^<v>^<vv>>v>>>^v><>^v><<<<v>>v<v<v>vvv>^<><<>^><",
        "^>><>^v<><^vvv<^^<><v<<<<<><^v<<<><<<^^<v<^^^><^>>^<v^><<<^>>^v<v^v<v^",
        ">^>>^v>vv>^<<^v<>><<><<v<<v><>v<^vv<<<>^^v^>^^>>><<^v>>v^v><^^>>^<>vv^",
        "<><^^>^^^<><vvvvv^v<v<<>^v<v>v<<^><<><<><<<^^<<<^<<>><<><^^^>^^<>^>v<>",
        "^^>vv<^v^v<vv>^<><v<^v>^^^>>>^^vvv^>vvv<>>>^<^>>>>>^<<^v>^vvv<>^<><<v>",
        "v^^>>><<^^<>>^v^<v^vv<>v^<<>^<^v^v><^<<<><<^<v><v<>vv>>v><v^<vv<>v^<<^",
    ]
    
    let input2 = [
        "##################################################",
        "#..OO#...OO.#..OO......O...O.##...O.O...#..O.....#",
        "#.#.O..O.##.O#.....O#.O.O.O..O.#............OOO.##",
        "#OO....#..O...##OO.#O#OO...O..#...........OO.O..##",
        "#.#.#..O.O...OO.OO#....O.OOO.O#..#......O......#O#",
        "#.O#O..O..O#O..O...OOO#OOO...O...O.#OOO..OOO.....#",
        "##.#..O....#.......##......OO.O.....O#..OO..O....#",
        "#....OO...OO....#O....O..#..O........#.O....O.O..#",
        "#O..O.#...O#......O#OOOO....#.............OO.#.#.#",
        "#....#.##.#...O#...#...O..O#O..O.O.......O.OO.##.#",
        "#...O..OO.#..O.O#.#.....O..O..O..O....OOO..OO#...#",
        "#O..O...O...#.O.O.OO.O.O.O#..O..#.#OO.O.....O....#",
        "#.O.#....O......O.OO#..O....O..O...O#..#O....O#..#",
        "#O.......OO.....O...OO........OO.#.#O.OO.O.....O.#",
        "#....OO....#O.O......O............O.OO.O....##.#.#",
        "#...O...O.#OO...O.....OOO...#.O.O.O..O.....O...O.#",
        "#....O.O.....O.O........#.O....O..#.O..OO.OOO...O#",
        "#O.O..O.....OO.O.O....O.....OO..O.....#.......O.##",
        "#..#.#........#.#......O.....O..O.......O....O...#",
        "#........O#..#....#...O...O..O..O......##OOO.....#",
        "#O....O..O......#..#..#.OOO..O....O....#.....#O..#",
        "#O....O...#.O....O...O.O.#O.....O.............#O.#",
        "#..O..O...O.OO..O....OO........OO#..#..OO.O.OO.O.#",
        "##.OO.O.O.....O.O.O......O.O.O...#O.....O..O.....#",
        "#....O..#O..#O..O.O.OO..@#OO#................OOO.#",
        "#....O...#....O.#..#.O...#.....O..#.....#...O#O..#",
        "#.#O....O..O.......O...O#..O.....O..#.#....OOO...#",
        "#...O....O..O.....O...OOO.O...OO##..##OO#...O...O#",
        "#....OO...O...#.O...O.OO.#...O.OOO....#........O.#",
        "#.O#...OO.OO.....O.......O.....#...#.O...........#",
        "#.OO.O..OO...##.O......#.OO...O#O.....OO...O...#O#",
        "#O..O..OO....#....O...O#.OO....##...O.#...O..O..O#",
        "#O...#.OOOO...##O..............O.O....O#....O..OO#",
        "#.....O.O...O...O..#O..#.O...O..O.#.....O...O.OO.#",
        "#...#O...O.O...O.O#OO.#.O.........O..O...O...O...#",
        "#OOO.OOO.O...O..OOO........O.OO.....O..OOOO......#",
        "#.#.##.O#...O.....OO#..O...OOO..OO.#.O..#..OO....#",
        "#.#.....OOO...O#..O..O#O.......OO.OO.O.O..O.O....#",
        "#..O.O.O.....O.#....#..O.O..OO..OO.#OO#..OO#...#O#",
        "#.O##O..O......O.......O..#O...O..O.O.OO..O......#",
        "#.#..#.........O.#O...OOO....O.#O....O.....O#O.OO#",
        "#O.OO..#....#........O...OO.......O...#O.......O.#",
        "#......#...#.#.O...........#.OO.O......#.O.OO#...#",
        "#.O#...O......O.O..O.........O...#.O.O...........#",
        "#..O...O#.O..O..O......O.##.OOOOOOO.#O........O..#",
        "#...O..O....O.O.#..O.O#...#O...#OOOO...O#.O.....O#",
        "#.....#.OOO.........O.OO.O#.O#O...OO.........O...#",
        "#.O...#OO.O......OO..........O....OO.#..O....O..##",
        "#.OO#..#.#O......O.O........#O..O.O....O..O.OO.#O#",
        "##################################################",
        "",
        "^>>^>v^<^^v<^^>^<v>><vvv>><<<>^^^>v<^>v><v^v>vv<^<<v^^v<^>v^^^<v^>>^<<>>>^<>v^v<<^v^<v^<><v><<v<vv^<v<^v^v<<<^v>^>>>^<^^v>v><v><<^<^^^v>v<<<<<><v><>>>^vv<v<<vvv>^>^<vv><v>><^<^<v><vv<<^<<<v^^vv<>^>>^>v<>>^^>>v>v<^v<v^<^^^>>>vvv^^v^vv><<^>^v<^v<v^v^^v^^><><<>vv^<<vvv<v><^>^>^<^<>>^v>vv^^v^>vv<<><>>v>><^^^<^^>>>v>^<^<>^^^<<><^<>^v><v^^^v^^<>vv>^vvvv^v<<^<^^>>v<><>vv^>^<>^v<^v<<>>^^^>>^^^<v<>^>>><vv>v^v^<vv<vvvvv^<<>v^v>^^<^>><^v^^<^v>>^<v^>^^>^^>>>^<<>^v<<^>^vv<^^^v^><vv^<^v^>^v^><<<<<^^^><<<<v^>^>><vv>^^>v>^<>^>^<><^>>v<<^^v^vvv^>v>v><><^^^>v^>>^<>^>v><^>>^>v>vv^v<^v<<^^>v^v<v>vv<^^>>^vv^v><^v>^^^v>>v<vvvv<>>>>v<>^v>>^^^v><^^^>v>^><>^>v<><v<>>^<^<^^vv><^<<^<v^>vv<>>vv>>v>>><<v<v>^<vv<<>v^v<<^^>><^^^<v<v^v^<vv^^v>><<<<<^^<^^<v<v<v<^>v^v^<v^<>^>vv>><^<<>>>^v^<<><^<^>^<<vv<^>v>v<><v<^<>vv>vv<v^^^<^><<v<<^v<>^^^><^><>^><v<^^v<v^^><>>^v^^^vv>^<><^v<><^^<>><>vvv^v>>>>v<<<>v<>vv>v<^vv<^><^v>>^^vv>^v^v^v^^>>^>^v^<^>^^v^<<><^^<^^^<^v^<<<<v^^^<<<>>v^^>v<vvv<v^v>^<>v^^v>^<<<><>v<v^^<<><v<<<><^<vvv",
        "vv>^^^v<<^v^^^>v^^<<^<>>^vv<<>v<^>>^^^<^vv<v^<^><^<>^<^v^^vv^vv^><v^v<<v^<^^<^vv>vv<vvv>^v<^vv>^>vvvvv^v^^>^><<v<>>><^<^v^><<><>>^^>><>^<><v^^<v>^>v<vvvv><<v^^v><>vv^^<^v<>vvvv>^^^^<^<^<^^^v>v<v^><>v^v><vvvvv^v^<vv><v>^>^>v<<^<vv^>v^>v><>^vv<v>v>>><^v>^<^<><v>v<<v>>v>>^<<>v^<<v<^<^v^^<>^v><vv>^^<<^<<<^>>v<v>^<>v^^<<v^<<v^v^>vv<>v<><<<>>v<>v<^><v^^vv<v<^^<^v>v^><><>v^v><><<^><<v<^><>^^^v><^^<>>v>>>>v<>^^<^>^>^<^^<v^<<^vv>v^^<v^^<v^><v<^<>v>v>^^<v>>v<v>v>v^v><^>>^>><<^<>^^^^><<>>v><v<>^<<v>v^v<>^^^<<^^vv><v^>v>><<^>^^>v>^<vv^>>^><^<>>v^^^^<>^v^v><^v>^v^<v>><vv>^^vv^<>>v^<<<^v>v>v^v^^<<<<vv<>vv^^><<>^>vvvv>v>v>>>^v<^<>v<^<v>>^>>^v<v<^>><v>v<<v>>^^v>><>vv>^>>v<<>>vv^vvv<^^v><><^<v^>vv^<v><vv^>^v<>><vv<<>v<^<v><^^^<v<><>^^v<v<^>>^><v^^^>>^v^<>vvv>^v^<><><^v<<>><>>^vvv><>^<<>>vv>vv<^>^vv>v^><^<<v><><v>v^^<>vv^><>^v>^><^^<>>^^^<<^^v^<^>>v^<<^v>>^>^^<^<>^<v>^>vv<v<>^><v>v<<^>^<><<>>>>>>>v>^v>><v^<<^<>^v<v<v^><^^vv<><v^>^<>vv<^v^vv^^^<v><^<v<^>>v>>^^>^<<^<>v^vv^vv><>>^<v><<<^>^><^v><<v<>v><>v<<",
        "<<<v^<^^v<^<<<><^^><^<^<^v>^<<^v^>^<>^^^^vvvv^>v>^^<v<<^>><^<^^>v^^<vvvvv>>>>^<>^>^>>^vv<^>><^><v>^>^>v>v>>><^vv>>^<<^^><^vv<^><<>^<vv<^^vv^^>>vv><v^<^v<v^vv<v^v>>^^<>>^^v><<vv<^><<<^^><<>>vv>>>>^<<>>><^>^<^<^<<<<vv<^v>>v>vv>^v<vv<>vvv<v<^>>v^>vv>^^>v>><v><v<>v^v<<><>^v>v<>vv^v<<>^>^v>^><v^^><>vv<^^>vv<^<>v^^>^v^>^v><v>>vvv^<^<^>v<^v^>v^^^^^v^^>>>><<^>^^v^><><v>v^<v<vv>^^<^>v<v<>>^<<<<^>v><>>vv>><>^^<<v>v>^^><vv<v>^v>><vv><^<><^^>^v<><vv^>><<<v<v<^<^<^^<v>v>vv>v<<^^v^<v>>^<v<>>v>^v<^v^vv<v<>>^><>v<v>v<<<v>^vvv><>^^vv>v>><>>^>^v^>^>>v>><>>>>>>>v<v<><v>>v^>vv<<^><^<v><^v<^v>^<v^>^^>>v^<^^>v<^v<>^^<v^>>>v^^>v><^<<^v^>^^v><>><^<^><><^v>^<<v><^v^><<^^<^<^<>><^^^><<vv^^v^vv><>vv<v><<<v<<>vvv^^><<^v<><>^><>v<^vv>v^v<<^^^^v>vv<^<v^<vv>^^^<<<<^<v><>><^v^><^>v>v<<<>^vvv<<<^<<v>v<v>v>v<<>v><vv<<^<>>v><<<<><^<><<<>^^<>^<vv>><>v^><><v<^vvv><v<>vvv><^<^v<v^v<v><^vvv>v^<<v^^>><<v^^<<^<>>><>>v<^><<><^<>>^^v<^v><>>>^^>><<>^<^v^<>><^v^><>>>v^v^v>><>>><^><^v<<^>^<<<^>>>v<><>v<<<^>^v><<^v>^<v>v^<>v^>>^^^^",
        "^<<^<<^<^><v>vv<<>^>^<vv>>^>^v<v>>>>>>><^<^>^<><><<^>^vv<^^v>^<^v^>^<^v>^v^v>v>vv><v^^^<>^^>v<>vv^^v<^<v^<^^^><<v<^<v^^v<^v<<v^<<>v<>^v^><v>^><v^v>vv<<^^vvv^^<<><v^>vv^<^<^>>vvv^vvvv<<vv>v^v>^><<v<>v^^>^<vv>^>v^<<vvvv^^<v<>v>v^<>>vv^><<<<vv<v^<>v<<^<^<<<^v^v<^<>^^v<<v^><><^><^><><>v^vv<<<>>vv>v<^<<^^>^<^>>><>v^vv^>vv^<>vvv^^v>v<^^^^^v>>><v><<^v>><v<^^^>>v<>v<vv^^vv><^><v<^v<^>>v<^v>>v^>^>>>v<<v>>><^>>^>^>>^><>>^>^><^<^>v^><^v><<<<<<^>^<>^<<vv>^<>vv<<vv<v<<<v^^<^>vv<^<<<^<>vv^^^<<<>>v^^<<<^^<>>>^<<v>^v^^>v^<vv<v^>vv^vv<^^^vvv>>v<vv>v^>v<vv<vv<<v<>v<<^<v><v<<^<<^v^^<v^v>>>vv<><<>>^><><>><<v>^>^v>>^<^>><<>v^v>^<>v>><v^^^<><>^<<v>>>^v>>v<v<<<v>^^^>><vvv<><^>v>^<vvv<^>^v<>^>v^<<<<<^v<^v><><v>vv^<vv<>^><>^><>^v<>>^<^>v^<v><<<^>^^^>^^v^>^<>><^v<vv<>^vv<^>v^>>>><<^<v<>^v<<>>^v<>v<^<<<><>>v^vv<v>^><v^^v^<<^^v<^vvvv<^>v><<>^<^><^vvv>^vv<>^>vv>v^>^^<>vv>>>>^vvv<v^<>>>>v^<<>v>v^^^^<>^>v<^^<<<<^<<<>v^>v^<<vv>>vvv<v^^^<<<<>>v<>v^>^>vv<v>^^<<v^^<^vv^<vv>v>><v<^<^^<^>^>>>><v<>>^>>><vv>vv^v<>^^^<<>^v^<",
        "<><^vvv^><<<vv<><<^<^v<>v^<vvv>^vv^^<^<^>>^><v<>>^>v<v<<<v^^v^v>>^>><^^vvv>v^<<v><<>><>><^<<v^v><v^><^>>^^<<<^>v^v>>vv^^^v^<^v><<v>>>>v>^^v^<>vvv^>><^>^^^>v<vv^<^^<>v<<<<v>>^^v>^v<<><^<<^v^vv^v^^v<>^v>^>v^v^vv^^>>v>v<<<v^>^>^v^<^^<<^<>^>>>>>>v>>v<^^<>>v^<>v<<^>^>^>^><^^v^<vv>^^^v>v^v<^>v<v^>^<><v^^<v^v^^>><v>v>^>v<^^>>^v^>v^>^^<v<>>v<^^v>v^>^<<v><^v>^v^<v><^^<^>^<<vv^v<v<^>>^<v<<vvv>^>^<>><^>^^>>^^v^v^>><><^><^<v^v^>v>^v<^<<<<v<^^vv><>v^>v<^^<><>^>>>^^^<^^v<^vv<vv<v><<^<^^v><v>><v<><>vv<v<^<^v>>>v<><^<^^^^<>>^><^^v<<^v>vv>>^>v<^^v<^^v<^<>^>v>>>>v^vv><>>>v<<^^><>>>v<v^v>^^v^v><v<^^<>^vv>^^<>>^<>>v>v^^><><v^v<v<>>><^^vvvv<<^v<<<^<<^<<^>v<^v<v<>^vv>>><<>v<^>v^v>><^v<>v<><<^<^v<^>>^^^<<<vvvv<><<<<v^<^>^v<<>v>><^vv<^^^<<<><>^<vv^<<<>vv^<v><v>v>^vv<v>vv>><>>vv>v<^<v^v^^>v<>>>v^>vv^^v<>>v><<^vv^>vv>v<<<vv<<^<<^<v<vv^v^v^v>><^><>>v^v^<^vv<v<<^^<v>><vv^v<vvvvv^<^<<<<^>^v><<vvvv<v>><^v>^<<v^^<^v<v><<v<v><><>^<^>^^v>v><>>^^<vv>>^>v>vv<v<<v^<v>vv^><v^v><>v>>>^^>><vv^><v^<>^<^vvvv^^<v^^<<>>^^^^<>^<",
        ">v<v>^<^vvv><^<^>^^<>>^v<v<^<>vv<<>><<v<^v^<^>v^<v>v>vv<<^>v<>>^v>v<v><>v^<^^^^>>^<<<vv^>^v<<^>^vv<>^v<vv<vv<><<>^>vv<>v<v^<v<>v<<<v<^vvv>>^<<<>>><v>>^v<<>vvv>>v>vv<vvv>>^v^>><^^>>vvvv^^vv^^<v>v^v^>vv^v<><^^^^><<^v>>>vv<<><<>vv^>>>vv>v<v>vvvv<vv^^><^>^v<^v>>>><v^<v^^v>^<><<<<<v>v><^>v^^v<v><v<v^>^<v^^<<^<v<<^^>v<vvvv>>>v<><vvvvv<>><<vv^>v^^>>>vv^^vv>>v<^vv<v>>>^^>><^^<><^^<v>vv^v<^^<v>v^^>><^v<v^v<><^v<<<<<<^^^>^<>v<^><<^>>vv^v><<v^<<^>v<v<^<<v>^v>>^^v^^^^v>><^^>v>>>^<v^^^^>>^<vvv>>^v>>v>^v^>>^<>><>v^<>>v>^vv^<><v<v<<<^>>>>v<<<<<<^<v>^<>^>v<^vv>v^v^>>><^v>v>v<<>^v>^<^<^<>v>><<>^v^^><v<^><<<v<<<v<>>>v>v<v<<^^v<vv^>>vv^<>v^<^>>v^^<^>>^<<v^vvv^<<><^<><><vvvv>^v><v>^vvvv<<<v^><vvv<^>^<<^<^v^v>^v>^>>^^^<<^^vv<>><>>^<<>>^>v>v<>^><<v^>vv^>>vv^vvv<^^^>><<>^><<>v^v><<^vv<^v^<v^><^vvv^<><>^^>>><>v<^<<v<>>v<>vv<>>^<>>><><^v^<^^v^v<^^<<>>>^>^<<v<^<<<v^v^>>>v^><^<v>^<^^<>vv>^^<>^^>>v<v>^v<>v<>^^<v^>vvvv^<<vv^>v<^v^v^<^vvv^^>>>>v><v<<^v<^<>><v><<v^v<vv<<vvv^v<<<v^>^<vv<^^<>>^vvv<><^<<vv>>^>v>>>>>v>^",
        "<><v>>^v^vv><v<v^^>^^>>^^v^^<>^^^>^^^^v^v^<>><>v><^<>>>^v<vv^>v^<>^^v>vv<<^<<vv<<<^<<vv<<v^^>^^^<>vv^^^<>v><^><<>v<>vv<v<v^<v>v<<<>v>^<<<^^v>^<^<>v>>><>>^v<<<^>v>><v^><vv><>^><^v>><>^v^>^<>>^><<^><>>^v<^>v<vvv><<>^^>>v<v>^vv>^^^<<v^^<v>v^>>^>^^v<<^^<<vvv>vv^>^vvv<><^>^v^^v<<<<^v><^><^vv^^v^^<^vv^v<v^>>^><^<^v^v<>^><>v^v<>>>^<v^v<v>^><v^^v^v<<<^v<>><<<>^><v<v<>>v<>^>^>><v^<v<>^^<v^<v<<>><><<vv^^<vv<<<>^^^v>^>v<^<^<^>>^><<>><v^<v>vv<^^^>>^<^^<^<<<>^<<vvv^>><v^^^>><<<>>^>vv><^^><><><<>>>>^<>>>>><<<^<>v<v><>v<>v^><v>vv^^^vvv>v><v>>^>vv>vvv<vv<^>v>vv>^<<v^^<><>^>^<<vv<^<^<^^^^^v<^v<<>vvv><>>^v^^^v<^>vv>^>vvv>>>>>^^^>^<vv>v<^<>v><<>>vv^^v>v<>^<>vv<<<>vvv>>^vv<<>^^>v^>>v><<^>^<vvv<^<<<<<^>vvv><<>vv>>v>vv>^<>>^><v><^><<><^>>>^<^^v^<<^^<><^>vv^>v><v^^>v><^^<<<>^>v^^<^v>^<^v^^><v>^<<^^>><v>>v^<^>^v^>vv<><^^><v<>v^<>^v>^<^>>v><^>><^^v<v>vvv<v^>>^^v<^^><^^^>><vv>^>^^v<><>v^<v>^^v^><<v^vv>^>v<vv>>v<^<>vv><<>vvv^^^>^<v>>vvv<<<v>^v>vv>><^<v<>^v<v<^>vv<v>^>^vv><v^^>><v^v>^v<^^>^<>^<>^>v^<^vv><<<^<<<v^",
        "<^<v^v>vv<^vvv<<<v>><^<>^v^<><>>>^<^v><v<v<^<<v>v><<<<^^^<<^<>^v^v<>v^<v<>^>><>v>><^^>>v><>>^>^<>v<v<>v>v<<v^>^>vv^<vv^>^><^><<v^v<<>^<vv<v>^^v<v<>^^<>^^>^v<v^^<v^v><<>>v^^^vvv<<v^^v<v>>^>>><v><^v>><vv>^>^<<^^v^<^<^>^^^>^v>>v<>>>v^^><<>>>>>^v<v>vv^v^><>v>>vv>^^v>><>v<v^v^><v>v^><v^<>^<v<>><>>><<^<v^v^v>><>><>>v>><v^><<><><^>v<<>>>v^<v^>^vv^vv>v<^^vv>v<v>^v>>^<v^^v^v<<<>vv<><<v<v^>>v^><v>^v><<^>>v^^>^^^>><vv<>>><^v^v^^>^v>v><^<^<>^^<v^v>^>><^v<<>v^v>v^^vv^^<v^>^vv>^v^>v^><<<^<v>^<v>>^>>v<v>v<vv<^>>v>>^^>^>v^v<>v^>>v^^vv>vv<^v>><>vv<^^><vv<vvv^<v>>vv^<<v>>>v><<^<^v>>^>vv>^>><vv^v>><v^v<><>>v<^<^^^^v^>v^>><><^<<>vvv>>v^<<^>>^<^>v<<^v>>>>^v><v<vv<>v>>v^<<^>>^<>v^^>^<<<<v^v<v<^^><^^>^>>>v^v>^<<<v^<v^>v>^>>>><>>v><>>v>><>v^v<v^vvvvv<<^><^^>^<<<^<^^><^>v>^>v<v^>>v^<>>>vv<^>>v<>><^<<><<>^<>^^<^^v^<v><<>v<v^<<v><<v>vv^<^<v^<v<<^^vv>^><<>v>v^v<^v^>>>^^><v<<>^vv>><v<^<<>>vv^^>v>v<<>v<^<v>>^<^>>^<<vvv^^>><<>^<^v^<v>v^<<^^><>^<^^v<v>vv^v<<<<><<<<<<v^^>>v>v>^^<>^<^<<vv<^<><v><>^>^^v>^^^<>^>^^>>v>v<>",
        "^>><^^^<v>v<><>^^<v<<<<^><>>^^<^>vv>^>>^>^v>v^vvvv>^<^>>^v><^v>>><<>><<>v^><>^>><^><v^v><<v^<vv^v>>vv<><<<^^<>>v^<<><>v>vv><<^><>^<v>v<>^<>^>^<v<vvv<>^vv<<vv><<^vvv>v^<^<^v>>><^>vv>>v<>>>>^^^^^<^<v<>v<v<v<<<><v>vv><<^v>v><vv<^>><^vvv><v<v>^^v<^^v^^>^^><^<<v<<>^>^v<<^>^v^v^>vv^v^<^><<>>^v><>>>><^v><>^^v<^vv><^^<<<v>v<v^v>v^>>^><><^^v>^vv>v^<>vvv^>vv<vv^v^v>v^<>vvv<>v><<^<v^^>>^v<<<<vv^>^^<>v<<><v^v<<v><^^>^>^<^>^v>>^<<^>^v>vv>^<<^^^<vv<^<v^^vv><^v>v^<v<v^vv^<<vv^>>v><v><<>^^><^>vv<^<>><>^v^^^><>v^<><v^^v<<<<<<><^^v>vvvv^^^<<>^v><^^^^^v^<^<v<^vv^>>v>^v^^<<><><<>>>>><^<>^v<v>v><^^<<^>^>^<^v<^v>>^v^^><^^v>^<>vv<><^<vvv<^<<v^>^>^v^^>>>^^v<>>^>>><^vv<^<<<>v^<v<<>v^v^^^<^v<v>^>^^<>v<>>vv>^><^v<>>^^v><<vv<^>>v<>>v><<^v^v>^>><<^vv<>v^>^<v^^><^>v^<>v^v<><^vv^^v>^<><>>v>^<^<^><v>v^>><<vv<v<v>><^^<>>v>>^^^v>>>v<<>^v^^v<<v^^^<>v<v>^<<><<^vv<<<>>^v<>>vv><><>^^v^vv>>^v><v^>v^><^>v^v<^><^<<^>^>^^v>v<><<v^<vv^>v>><v^>v<<<^>v^^<<><v^v>^<^^vv<vv>vv^>>>>v><^v^>><vvv^<^>vv^v<<^>vv<v<>^<^<vv^^>><^^<^v><^v<^",
        ">v>>>^v<>v<v<>>>^^<<vv^>^<<^v>>>^^^v^<^v>vv^><^v^^^^^v^<vv^v>vv^>v<<v>>>>^<v<^<<<<<>>^>^<>^v>^><<^>><><>><^><^^v^^^^>^<v>>v<^vv><^^^v>><^>>>><>^>^><vv^v>>v>v<^>v^vv^<^v>^<^^>^>>^><<<^>><^^v^vv^^>v><<^<^^<v^>^^vv^<>vv<vv^>>^<v>v^^>><v^vv<^<<><^<<<<>>vvv<<>v><v>>^^<v>>^>><>>v><<^v>^^<v>^>v><vv^>^^vv>v>><v><v^^v<v><vv^<vv<><>><^v^<><>^v<><<^^vvv<<>v>>^<>v<<>v<v>v<>vv^^vvv^v^>>>^^<<^<^><^vv^>v<<>vv<<^>>>v<vv<><^>^<^><<v>vvvv<^^>vv<<^<v<<^>^v<<>>^>^><vv<^>>>><v^<<^>>v<vvv>^><v^<<v^v^v<<^v>><>v^^><<v<>v>>>v^<^<^^^>>v<v^>^>><<v^^^>^v<>v>^<^v<^>^v<><<<>^>^v^v>v^vv<<>>>>^<<>vv<^>>>^^^^>^v>v<v<^v^>><>>v<v><>>vv^^^^^>^>>^^v>^>>^v><>><^<^>^^^vv^v>v<^v^<>>vv^<v^^^><^<<>>^>vv<<<v><^^v^<<v<v^^>^<v<>>^^^<vv^><<^<><>><v>><<v^<^v<^>v^v<vvv^^<<><v<vv<<^<>><^<^v^>^>><<<^>>^<<^<vv>v<^<v<v^><><vv^v>^<^<^^<<>><<^vv<^^<<v<v<>>v<><v<><<><><><<v>v>^>v^<^v^>><>v>v<<>v<>^>vv^v<<><>>^<><v>>>>^v^v>>^v>vv>v^^<v<^<<v^^<^>v<>^^<>^^>>><^v><<>^vv<^vv><v<^>vv>>>>v<vvv<^^v^<<^>v>v<>v^>v<<>>v<>><<v^>>v^^<<<^^v^<v><^vv>vvv>",
        ">v^v^v>>v<^^^<^<^>vv>^^><<>^>><v<<<<<v^>><>^v^^vv<vv^>v<>><^<v^vv>v>>>^^vv<<v^vv<<<<^>>^v^>^^^^<>^v^^><^^v>v><v>v><v>vv><^^<^<^v>^v<<v><v<^<<v><<<<^v<v^v<v<><><<>^<v^^v^>>>><^v^>^><<<^<<v^v<>>><v^^^><<<<^vv^v<^^>v^v>^v<<>>>>>>v<^>^>^^v^^>^<vvvv<<>><<>v>v<>v>vvvv<>v^>^^vv<^v>v^^v<^<v<^^<><vv<^<v^v^^<vv<^^^^v<^<<v^<<v<^<<<^<vv>><v>>>><>vv^<^v^<^<<vv<^^^<<v>vvv<v>v><v^v^<<^<v>v>^^<<>>vv^v<>v^>v<>^<^v><><>vv><<<<<<^v<>><><<>>>^>>><>vv>^>><<^^>><v<^^^<v^<>^>^>>>v^v>v^v^^>v><^v^<v>^^^^>^v^<<^>>^<>^<><><<v<^^<vvv^^v>^^>><>^>v<<vv<<>><<^<>^>>vv<^>>v<><<>^<<v^^v<<<<<^><^v^>vv^v^<^vv^>>^<<^^^vv<vv^^>v<>><<<^^<v^<^<^>^v^<v^<v^><v^^^^>vv<vv<<v><>v^^>^<^<^<^^^v>^>>>>^^<^v^<>vvv<<<v<>v>v<^^^><><^><><<<<^><v<^^>vv<>^<^<v>v><<v>>>>v<<<>v<^v<v>^><<v^^>v<v>><<<vv>v>v>v<vv^^<>^^v><><<v><^^<v^><><<vv^^v^>v>^>>v>^^^<<^><^v>v>>^^v^vv^^^^v^v<<><>><<vv^vv<^>>^>>^<^^<<<<>^^><>>v<^^^^v^<>v>>v^^v<v^^>v>>^v<>>^<<^v^v^^v>^vvv^<v^>^<>v^^^v>^<v>>v^vv^<^>>>><>>^<^<<^>v>vvvvv<v<<<><<<vv><>^^^v>^>^>><<<><^<v>>^<><v^^><",
        ">>><><^^^^v<>>v^^>^^^^v<>^<^v<>vvv^^>^v><vv><><>^^v^^v><<<<^v>>^>^<>v><^^v^v^>><v>v^>v<v>^v^<vvvvv<vv>v>><v^vv^^^v><>^v<>^^^>><vv<>><<<v<vvv^<<^v^v>^vv^<^>>v>^v<>v^v^><^>v^<vv^<>vv>>v^>^v>v<vv^^vv>>v<^<<^vv<<^^><^vv^>>><>^v<^<<v<>>^^v><^^v<^v^<v^><<<v<<>^<><^vvv<><<v^<v><>^>v^v>v>^^<<<>^^>><>v>^v<^<>v>v><<vv<>^^>>>^vvv<^v><vv>v^<vv^v<vv^^vv<^v^<>v><<v<v><v<vv^v^vv^^^^vvv^v>^^>v<^^v>v>>>v>>>>vvv>^<^>>^v>^<v<>>vv><^>v>^>^^><vvvv>>>>^<<<<>^^v^<^^^v<<>>^v^<v^^<<<>>^v>vv^^v>>>>^<v>^^<v>v<<>^v^v^><>>^<v>v>v^><vv<^v^^>^>v>^v^><^>v<^v^vvv^^^<<<vv<^>><v<>>>vvv<v>v>^>^>><<>vv^^vv>v^>><^^>^^v><v<>vvv<>vv^^^^<^<vv>>^^v^<^>v^><^vv>>>^<^<<^^<^<><<^v<^<<>^><>v><vvv^>^><^<vvvv^^<<v<v<v<>v>><^v<v>v^vv<<>^v>>v^^^v>v<^^^<>vv>v^vv^>v<^vv><^v^^>^^vv>^^>>v><><vv><v>v^v>v<vv><^^^vv<>vv<v^^^>^^>v>^<^><>^^>vvv^>v<^<v^v^<<v><^^^<v>v>v^>v<><>v>^>v>>v<^v<<><>>>>^>v<v^v<<<v><<>>v>><<v><v>^>>^><^v><^^v<>v<^^>v^v<<<><^>><>vvv>vv<^>v>><v>>>^^>v<<<>v^v>^^^v^vv>vvv>>^><<vv<^v<<<>v^^>>^vv^<><<^v>^^>vv>>>v^>v>^>^vv^^>>v>",
        "v>><v<^v<>^>>v<v>^>v<^>^<<>^vv<v><^^v^<^^<^<<^<^>v<><>v<<>v<>><><vv^^<v><^^><v^^<<^^<<>v>vvv>vv<>^v^<><^^v^>v>^^v<><vv<>>v><<vv><<>>>^^^<vv>>v<>^v^<vv^v>^^vvvv^^v^<^^><><><<^>^>v<<>^^v>vv><<<v^>^>^<^v<^v^vv^<vvv>>v<>^^<v^vvv<><<v><>>^v<^<>v>^^>v^<v>>^><>^^^>>>^>^<<^^>^v^>^vv><v<v<>v^<v<<^v^^^>^^<>>^>^^v>v<<<>>v<>v<^^>vv<^<vv^<^<v<<>^<>v>>><>vvv<>^>^<<>><>^>><<>^>>v>v>v<^v>^>>>^>v^^<^v>v<<><^<^^<^>^^>vv>>>>^^<^v>v^<<>^>>^>>>^>v<v^<<<vv^<^>^<<v<vv<><^>>>^^v>>^^^vv><v><v>^^<>>v^^>^>vvv<>v<^v<^<>^^^^v^>v^<v^>^^^<<^<v^v<><v>^v<v^^><<><<^>>v<>v>v>^<^^^<v>>^^v<>>>^vv><<>v^v><<>>v>>^>v>>><>v^>v<vv<^>^<^v><vv^><>v><><>^>vvv^vv^<v^vv<vv^>v^v><>^><^>vv<>>>v>^>^v<^<<v<^>^^>vv<><>>v<<><<>>v>vv^^>^^v^^>>>^>v>>>^^<<<^<<<v^<>>>v>><><^<<>v<<><v<>>v<v<<^<v^>>^>^<>^<<vv^vv^><v^<^<>>>vv>v^<^vv>>^v><>><>>>><>vv^v>vvv>>vv<<v<>v>v>><^vv^<><>^^<^<>^><>>v>v^v>v^>^>v^<^>v^v^^^<v>vv^<<<v>vv<v<^<^v<^^>><^>^v<<^v<vv<><^^v><^<>vv<>v>>^<^^>>vvvv^^^<>>v^>^^v<>v>vvv><v<<<vv^v^^v^^<^>^<vvv><<<<>^>^v^^>><><vvv<v<^<>^^>^",
        "v<v^v>^>^^vv<>v>^><v>^v<<>>^>v<^vv>^<v^>>>><<vvvvv><^v<vv<^<<vv<><<>^vv^>^^^>>>>>>v^<v>v><><<^<>v<>^<v<>><>><>v>^<vv<><>v<<v>^^<>>^v<^<v>><^<v^vv>>v^vv^>v<<<<^v^v><^<^<>v^>^><>^^vv<^vv<>^<v^><>^<^>^^<vv^>^>^^^<vvvv^vv<vv<<v>^><v>v^vv^vv^><vvv^<v^^v^^<v<v><>^v><v<v^<>>><^^v^^>^^v<><^^^><vv>><v<<^<v>>vv>^^><><>v>>^^>>vv>^v<v<>v<^><vv><<v^<vv^>^>^^><^>>^^>^vv^v^^v<>v^<<v^^v<<^v^v>^^v<^<v<<<^>><v>>^^v><>^v^>^v<^^^^<>v^^v>^<v>^<<>><>>^^><vvv<<><^vv^^^v><v>^v<<>v>^<<v><<>^<>v<vv^vv<v^<>v>v>^^<>v<><>v>^<<>vv>><^<^<vv^<v^^<<<^^^>vvv><^v><>v>^<^>v<^v<<><^<vvvv^<v<<<^vv>v<v<v><^>>vv>^>>^>>>><<v^v^^<^v<^>vv<><^^<>v<vv>v^>v<^<><<<>vvv<>^vv^v^>v<v^>vv<><v^>v><>^^>v^>>>vv>><^^>v^^^><v>>v^<>>^vvv>^^v>vv>v>^^^^vv>>>^<><^>^v^v><><v>^^v<>>v^vv^>v^vv^<v^v<^v^^>v<<>^<<<vvv><^<<<<^><<<<<v^^>v^>^>>^vv<><<>vv><><>^v^>^>^v^^v<v><vv<<<>^^v><^<^<<<><>vv><v<^>v<^>v><v>^>>^<v<^^^><<^>vv^>v^<^>>>^<<v>v<>>>^<^<vv^^<>><<v><vv><v<^v><^^^<<>vv>v><^^>v<<v^v>^vv><>vvv<<^<>vv><v^^>>^vvv<>^^<>>v<<>^vv>>>>v>^^vv>>v<^<^>v<^",
        "vvvv^<<^v<^vv^^><v>>^vvvvv^^^>^>^<>^><<<vv>>><^vv>>>vvv><^>v<^>^<vv^^^^^><v<>^>^>^<vv^>>v>vv<<>>^v<^^<><<v<><>><<><>>><v<v^<>>>v^<^>>>>>v^>^v>^v><^<>^v><>v^^<<><v^^^><<>^^vvvv><<v^>>^^<>v^>>^>^^<^><v<vvv^>vv^^><v^<<vv^>v<>>>>^>vv<>vv<^<v^v^^v<>^>^^>vv>^<<^^>>v>v>^^><<<v><<<<^^>>v<<vvv<>>^^vv<v>v^>>^vv><^<^>>^>>^<^>>^<>><^<<<<<^v<v^>^^vv>^vv>v<>>^v<^^^v^^v<><<<^^v>>v>>^<<><v>vvv^>^^<^>v^^>v>v^vv<^v^vv<^v>^>>^>v<>v^<vvvv>v><<v>><v>^^<^^<^vv>^vvv^v<v><<^v^>>>>><><v>^^^vv>^v^><<^>^^v<<<>v^<vvv>^<^^^><^v<^^><vvv>^>>v>vv>vv^^>>v><^v<>^v<^^^<<^>v^v>>v<^v><<>>^^v<v^^^v<^vv<v^^<><<<vvv<>^<v<vv^^^><<>><v<v^<<<v<<<<>>v>vv>vvvv<vvvv<>v<><>>>>^vvv<<vv><^^>>v^<<^><^v>><v<<><<<^v^>><vv<<>^<^^^v<>^<><^v>v>vv^^><^>>v<^^vv^v>>v<<^^<^>><vv^^<^^>>v^><^vv>v><vvv>^vv^<^><^<^>v>v>v^>>^vv<<^<>>>>v<^^<v><^v^<^vvv>v><>^^^^vv>>^>>v<^vvv>v<v^v>^^<v^>^v^v<<<<^<v<^<^>^^vv^v<^^v^>>^>v<><<><>^<v>>^<<^<>^<>><^vv><><<vv<<vv^v^<vv>^>v<^^><>v^<>v<^<>v>>^vv>v^v<^>v^><^^>>><<v><v>><>>v<v^>^v>v<v^><^>^^^<<<>v^><<v^^v>v^^^v^",
        "^>v<v<v>><>>^vv>>>>^>^>><vv<>v>>><^>^><vv^<<>^<vv^>v>>^<^v^<^v^v<>>>><><<>>^^^v^^>>>vv<<<v<<^vv^>^>^<><v^><>>>vv^^<<v<vv^>^vv<><v>^<^^>v>v><<^vvv>>><<v^v>>v<^vv^v<<v^<^^v>vvv<<>>v>><>>v<>^^<<>>><^<^v^^^v<^<^>v><<>v<<^>><^<^>><vv^^v<^v<><<^^<>^v<>v^v><>^>>>^><>^^>v<>^<<^v>v>><^vv<<>^><>^<v>^<vv<><<<<>^<><^v^v>^<<^><v<<>>^>v<v^^^v<^><^<v<^^<>^^v><>><>>>v>><>^>><v<^v<vv><<<>><><>v^<v><<<>>>>^<>>^<<v<<v<>>>^^<<>v<v<^^v<v>v>>v>>v>><^>vv^v><^v>v^v<<^<vv<v^<>^<>v>><^<^v>v>v^<^v>v^>v^><<>>^>vv<^<>>>^v<^v<v^vv><<^>^^<>>v>^^v^vv>^^^^>>vv<<<v<^^><>^v^^^^>>^>^v^v^v<v<^v^vvv<<><>^<<>>vv^>>>>v><<v<v<>><v^vvv^v<>>^v<<<v^^<<>><^<^v^v<v>>>vvvv^vv><<><>>^<^vvv>>><^v<>>^v^^^<>>^^><<v^v>>^<^>>v><<>vv>><^v^vv<^^<<>v^v><^^<^<^^><>^v^^>v>v>^^<><v^<^^v<><v>>vv^v^>^v><<<^v>v>>^>v>v<^<>>v><^^<^v^v^<<vv><^^>^>v<>^^<v>vv<>>>>^><<>>vv<^^<v>>>^v>v<<v^>^>>>^^^v>v^^>>^^^>^v><^>vv>vv<>^><v>^>vv^>^<<<<v^>v^>^^vv<<>><><<^^<^^v^vvv<<^<<v^^^<^v^v>>v<>v^v><^v^>^>v^v^v^<><<vv>><<<v^<v^vv><^<^<^<>>>>v<vv>^vvv^>^v<^^<v>>^v><v",
        "><v>>>^^>^v>vv^v^v^><^v<v<>vv^>>^>>vv><>vv^^>^><>^^v<v^><v><^^^v><>><<v<vvv<^><^><>^^v<>vv<v^<>^>^<^vv^^<^<>^>^v<vv^<<^^<<v>^>>vvv>^v<><vvv>>>>><<v^<^<<<^><^>^>v^^><<<v<v^<<v<>v><<>vvv<<<v>vv>vv^>^>><>>^>><v^<<v>^^><^v<<^<^>>^^>^vvv<<v>>^<>>^>^><v><^<>v<<<^><^^^>^^>>^<^<>>^^<<vvvv<>^>>^v<>^v^v<><v<vv^<^<^^>v<^>^<<<<<>^<^>><v^<v^^<<>^v^>^<<><><>^<<vv^<^v>v<><><v>^^v<v>v>>vv^>>><<><^^^><^<v^><^vvv<>v>>^<>>vv<v<<>^^><^^^^^^<vv>^><^^><>>>^<^^v<<v>v^<>>^v><^><v^^vv<>v>>^v^vv^>>^<^vv><><>^^<vv^^<vv^v^^^vv^<<^^^>v<vv><>^>^>vv<^^^^^^<vv^^<<>^v<v^<^>vv><>>><><>^<v>v^v^vvvvvv^^><<<<><^^^^>^<v<vv^v^>v^v<<>v<>^>>^<><^^>v<<v^<<<<^>v<>v<^<<v>v<vv^>^>>v<^^v<vv<^<^v^><>^<v^<<><<>^^>^>>^^v^v><^<>v^<>v<<><><v^>>v>vvvvv<>^<<><^v<<<><<<v>>^<^<<^><^>v>v<>^v<v>^<v^^^<<<vv^<v<^v^<>>>v<^^^^^><^v^v^<v^<v>v<v<>vv^vv<>vv<v>>vvv>><>^v>v^<vvvv>^><<v>vv^v<v>^v>v^><>^>v^>v>v<vvv<>v^>v<^>^vvv<<vvv^<v^>v^>><v^<<^>^><><v>^<>^v>v^vvvvvvv>v<>v^<>>>^^>v>vv^>v^>><<<><<vv^<>^vvv^>v^^>>>^>v<^v>^^<>v<^v^^><^v<vv>>^v<><vv^v<><",
        "^v><v<^v^^v^>v><<>v^>vv>v^vv^<^^><<^<<<<>>>><^^>v><vv<vv<<^>><>>>>v^^^>v^v^v^vv<^vvv^><<v>v<<vvv<v>>v<^><vv^>v<v>v^<<<v^>^v><^^>^>^vv>v<<<>v><>><>v^v^>vv<v^>v^vv>vvvv<>>^>^vv<<<^^^^v^<>^^<v>^><v^^><^v>v<v>>><^>>vv>^^>>>v<v<v<^^vv^>^<>v<><v^><v>>v<^v^>v^v><<>v^^^^^^^v^>^^^<^vv<<^>><<vvv>^>^>v<v<<>^<><<>>^>vv>vv>^>v<vv<^^>>^>^v>^v>><<><^^^^<v^<>>>^v^<v>^v<>>>v<v<v<<>vv^v<v<><v<><vv>>v>v<vv>^<>vvv<<>>v^<v><><^v><^^^vv^v<<<>vv<<vv^v<v^>v>^^v^>>><v^><<<<<^^<^^><<v^v>^v<^<v^<<><v<^<><<v>^v^<<^^<><v>><v^>^^<<<><>v<v>>vvv<<>>><^<v>>^^v>^vv^>v^<<^^^^>>>v^^<>><^<><vv^>>^vvv<^v<<>>^><^^v^<<^^^^<v>>><<<v^v<>>^v>><v<>>vvv^>><^vvv>v>^v^^v<>><^>><^>><<^>>v><>^>>^>v^>v<v<<<>v^vv<^vv>>v<v><^vv>v<^^>v>v>v^v<v^vvv^>v^<^v<v<>v^>>^<>v><>^><<>><v<>vv>^^<><^<><><<<>^>^^vv<><vvv>^>>><^v^<><<<v>v>v<^>>v<><^<^<^>v>^<vv<v^>^^^>^><<^>>>v<v<v<v>v>>vvv^>v>v<<^>^v^<^^^<<<<<^<^^><v>v^<v<>>>><v>v^<><v>^^<vv<vvv<vv^^<><><^><v<><vv^^^<^<<<>^vv<<^<v>^v>><v<vvv<^^v>^v^^v^vv^v^^><v<v^<>^<^v^>v<vv>v<v>^>vvv^>^<v<^^><>>v<<<v",
        "^>^v<<>^<v<v^^<v>>vvvv^<v^v><>v>>v^^v>>><>>v^<><^>v><<v^>^>>><>v>vv^<v^>>>^<^^<><><v<>v^^>v><v<<vvvvv<v><vv<<v<v^^v<>v<^v^<^^><^^<v^<v><<^<>^^vvvv>^v<>^^<^v<v^v><v>>vv><v^>^>v<^^<^^>>v^v^^^v>^v^>^>>^vv^v>^<v<<vv><<>^><^^^v>v^><>>v<v^<v^^v>v>><vv^<v><>v<>>vvv^><>><v<<vv^<<^<<^>>^^>v^v<<<>v>v<<v>^>v><><<^>><<^>^>v><v>v^<^v><<v<^>vv^<<vvv<vv<>^>>^<v><<>v^^>>>vv^>^<>^^<<^^><>^<>^^><<^^<><>><<>>^^^<^^>v<>^^>>^<><<<v^^v<v>^vv^>v<<^>v^>^<><<v<><<>><^^^>>^><^v^<^<vv>>>v<vvv^^^<^v>v>^^vv^<v<>>^vv<>><><^>v>^><><^v><v<v^v<<<<>vvv<<^>^^^v>v^>^>v>^>^^<>v<<^<^<^><vv<v^v<v<<>>^><<>v^^><<^<<<vv<>vv><^^>><>vv<^>^>>><<^v><<^>vvv<^>vv>>>^^vv<><<^><^><>^>v><<^>^^^<>v>v<vv>^><v>^>v^><>>^<v^><<<vv>^<^vv<<<^v^<>^<<>^>v>>><<^^v>>v<v^v<<<vv^v^v>>v^^>vv<v^vv^v<vv>v^<<^<^^^v>>^>^>>v^<v^>^^vv>v<^>>^<v^>^^v<^^>vv<^v><>>vv<>>^>v>vv^v^^^>^v^^>^<<^<<^>>v<v<<>vv<v<v<^^v<v^^v<>><<<v>^>>vv<v>^^^><vv^<<><>^<<v^<><><>^>^vvv>><<<v^<<v^^<<v<<^<v<^<<<><^vvv><<vvv<v<<<>^>^<>v<^^v><<^><^><>v><^<^<>vv^^<vv^v>v^^^<>><vv^>vvvv<v^",
        "^v<>vv>v<v<vv>>>v^^>>^vv>v>^v^^v><><<^<>>^v^>v<v><^v>^v<>^>>>>^>v>>v^>^<^^>v^^^vvv^v>^>v^^^^vv^^><v<v<>^<v^<vvv^<^>v^<>><^<<<><^^^v^v>v^<><<>^<>^vv<vv<^^^<><^^v><>v><v>v<<^<^v>^v>vv^^>vv<><<^>^<<v>>>v^<v<<>vv^<<v>v>><^<<v>><^<vv<v>>>>^<<><^<v<>^<><>vv><>v>v<><>^^<vv^<>>>^^vv^v<>vv<>vv<^v^>v<v^^v>^>^<^>^<^>v<><^v<>v^>>^<v<^v<v>>>v<vvv<^^<vv>>v<<>v<><<><<>^^<<^<v>^^>v^v>>v^vvv^<^>^v^^>^v>>^v^v^^^vv^^<<>^<<^<<v^vv>^>>^<<<^>vvvv<<>>>^<<>vvv^v>^>vv<<^>^>vv<vv>>v<v><vvv^^v^<<><><<^^^^^v<^<v^^^^vv<^>>><v>vvvvv^>^>>v<^>><>v<vv><^<<<v>v^<^>^^^<>>^^v><<>v<>v<^^<>>^><>>>^v^^v<<<<^<<<v^^v>^>v<>v>>^>v>^^<v>><<><<^>v^^^>^<^>v>v^>v<<^v<^<^v<><>>^>v^<<v>>^><<<^<<vvv<<vv><^>^>>>>>vv^v<v<^<v^<<<v<>v<vv>^>>>v>>^<<>>>>>><>vv>><vvv<><v<v^^>vv^<^>>v<>>^<>^v<>>v<>><^>^^^^<>v<v^>^^vvv>^^><^v>v^v<v<>>>>v><^^>^<><>>v^<^^^<^<<^v^v^vv>>v^<<^>^<>^^v^>^>v^^^>^^^<vvv<<<>v>><<>>^vv^^v^^><<>^>^>>^vv^v>^^<>^v^^^<>^v<^>v^^^><<v^^^>>^><<<^v<^v^v>v^>^<<><vv<<>^>^<v<^v<^><<^>v^<v<<>>><>^v^>v^^<^<vv><><><<^v<<<><v>>vv>^>^><",
    ]
    
    func split(input: [String]) -> (map: [String], moves: String) {
        let idx = input.firstIndex(of: "")!
        let map = input[..<idx].map { String($0) }
        let moves = input[idx...].map { String($0) }.joined()
        
        return (map, moves)
    }
    
    // intentional reference type
    class Pos {
        var x: Int
        var y: Int
        
        init(x: Int, y: Int) {
            self.x = x
            self.y = y
        }
    }
    
    func parse(map: [String]) -> (walls: [Pos], boxes: [Pos], robot: Pos) {
        var walls = [Pos]()
        var boxes = [Pos]()
        var robot = Pos(x: 0, y: 0)
        
        for (i, line) in map.enumerated() {
            for (j, ch) in line.enumerated() {
                switch ch {
                case "#": walls.append(Pos(x: j, y: i))
                case "O": boxes.append(Pos(x: j, y: i))
                case "@": robot = Pos(x: j, y: i)
                case ".": continue
                default: fatalError()
                }
            }
        }
        
        return (walls: walls, boxes: boxes, robot: robot)
    }
    
    func printAll(spltMap: [String], boxes: [Pos], walls: [Pos], robot: Pos) {
        let H = spltMap.count
        let W = spltMap[0].count
        for y in 0 ..< H {
            var line = ""

            for x in 0 ..<  W {
                if boxes.contains(where: { $0.x == x && $0.y == y }) {
                    line.append("0")
                } else if walls.contains(where: { $0.x == x && $0.y == y }) {
                    line.append("#")
                } else if robot.x == x && robot.y == y {
                    line.append("@")
                } else {
                    line.append(".")
                }
            }
            
            print(line)
        }
        print("------")
    }
    
    func dowork() {
        let input = input2
        
        let splt = split(input: input)
        let (walls, boxes, robot) = parse(map: splt.map)

        let dirs: [Character: (dx: Int, dy: Int)] = [
            "^": (dx: 0, dy: -1),
            "v": (dx: 0, dy: 1),
            "<": (dx: -1, dy: 0),
            ">": (dx: 1, dy: 0),
        ]

        for d in splt.moves {
            let offset = dirs[d]!
            
            var boxesToMove = [Pos]()
            var toCheck: [Pos] = [ Pos(x: robot.x + offset.dx, y: robot.y + offset.dy) ]
            var hitWalls = false
            while !toCheck.isEmpty {
                let current = toCheck.popLast()!
                
                if let box = boxes.first(where: { $0.x == current.x && $0.y == current.y }) {
                    boxesToMove.append(box)
                    toCheck.append(Pos(x: box.x + offset.dx, y: box.y + offset.dy))
                } else if walls.contains(where: { $0.x == current.x && $0.y == current.y }) {
                    hitWalls = true
                    break
                }
            }
            
            if !hitWalls {
                robot.x += offset.dx
                robot.y += offset.dy
                
                for box in boxesToMove {
                    box.x += offset.dx
                    box.y += offset.dy
                }
            }
            
//            print("Move \(d):")
//            printAll(spltMap: splt.map, boxes: boxes, walls: walls, robot: robot)
        }

        printAll(spltMap: splt.map, boxes: boxes, walls: walls, robot: robot)

        let result = boxes.map { $0.y * 100 + $0.x }.reduce(0, +)
        print(result)
    }
}
