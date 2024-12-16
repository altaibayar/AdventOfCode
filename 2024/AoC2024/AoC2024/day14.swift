//
//  day14.swift
//  AoC2024
//
//  Created by a on 16/12/2024.
//

import Foundation

class Day14 {
    
    let input1 = [
        "p=0,4 v=3,-3",
        "p=6,3 v=-1,-3",
        "p=10,3 v=-1,2",
        "p=2,0 v=2,-1",
        "p=0,0 v=1,3",
        "p=3,0 v=-2,-2",
        "p=7,6 v=-1,-3",
        "p=3,0 v=-1,-2",
        "p=9,3 v=2,3",
        "p=7,3 v=-1,2",
        "p=2,4 v=2,-3",
        "p=9,5 v=-3,-3",
    ]
    
    let input2 = [
        "p=64,86 v=9,40",
        "p=82,101 v=51,65",
        "p=98,58 v=-52,74",
        "p=63,66 v=-79,-35",
        "p=21,89 v=-51,83",
        "p=23,63 v=90,9",
        "p=93,9 v=14,-12",
        "p=97,25 v=40,-34",
        "p=88,81 v=67,41",
        "p=41,100 v=34,-63",
        "p=67,88 v=-22,93",
        "p=63,98 v=29,-20",
        "p=95,87 v=53,74",
        "p=81,102 v=-72,40",
        "p=20,47 v=-72,90",
        "p=5,44 v=-46,-8",
        "p=27,41 v=-42,-75",
        "p=38,96 v=-18,-44",
        "p=37,82 v=88,-53",
        "p=80,7 v=92,38",
        "p=46,20 v=-13,89",
        "p=87,66 v=87,-74",
        "p=44,45 v=12,44",
        "p=60,48 v=-76,-67",
        "p=83,34 v=29,-85",
        "p=51,8 v=29,-67",
        "p=65,37 v=41,-49",
        "p=89,101 v=-56,40",
        "p=35,52 v=62,-16",
        "p=12,80 v=31,79",
        "p=18,30 v=46,80",
        "p=47,29 v=67,41",
        "p=98,43 v=-62,-84",
        "p=19,77 v=-55,67",
        "p=92,84 v=55,-71",
        "p=94,89 v=71,-30",
        "p=18,95 v=-33,91",
        "p=64,25 v=9,89",
        "p=59,12 v=-89,-4",
        "p=42,18 v=-10,96",
        "p=74,27 v=-28,29",
        "p=76,46 v=54,95",
        "p=63,80 v=-19,41",
        "p=96,27 v=93,72",
        "p=3,71 v=9,51",
        "p=98,17 v=-72,-5",
        "p=23,5 v=43,39",
        "p=50,32 v=-51,37",
        "p=48,39 v=6,-58",
        "p=100,30 v=96,3",
        "p=41,16 v=-76,90",
        "p=82,99 v=10,-99",
        "p=33,34 v=43,-23",
        "p=66,26 v=19,-91",
        "p=24,64 v=-67,-90",
        "p=59,26 v=25,-23",
        "p=9,89 v=-8,40",
        "p=83,21 v=1,-4",
        "p=22,47 v=14,61",
        "p=42,88 v=-16,-36",
        "p=71,73 v=-63,-12",
        "p=92,43 v=64,95",
        "p=96,15 v=42,4",
        "p=17,34 v=52,-83",
        "p=56,38 v=47,96",
        "p=73,51 v=-85,69",
        "p=34,41 v=-63,30",
        "p=72,92 v=-6,-54",
        "p=28,99 v=53,15",
        "p=89,96 v=-44,7",
        "p=13,63 v=-25,-12",
        "p=21,30 v=-36,-15",
        "p=71,9 v=-63,-56",
        "p=3,4 v=52,91",
        "p=88,35 v=-84,-91",
        "p=55,43 v=-48,-23",
        "p=26,60 v=43,8",
        "p=71,8 v=-41,39",
        "p=39,30 v=-26,97",
        "p=54,36 v=-86,-41",
        "p=3,40 v=58,-67",
        "p=26,7 v=-20,-55",
        "p=62,22 v=-8,-37",
        "p=53,84 v=-50,-61",
        "p=67,82 v=97,95",
        "p=83,8 v=48,-39",
        "p=0,56 v=1,36",
        "p=0,76 v=-81,-18",
        "p=40,58 v=-77,-19",
        "p=21,12 v=-82,-87",
        "p=92,74 v=-94,59",
        "p=71,47 v=-47,-93",
        "p=21,97 v=-17,-13",
        "p=43,91 v=37,76",
        "p=27,70 v=-74,-95",
        "p=6,76 v=-43,-76",
        "p=42,64 v=-13,1",
        "p=36,68 v=-8,81",
        "p=72,67 v=95,-27",
        "p=85,77 v=-34,16",
        "p=9,67 v=71,-25",
        "p=48,48 v=-91,-6",
        "p=4,64 v=29,-24",
        "p=55,62 v=52,-30",
        "p=8,62 v=-70,-68",
        "p=26,40 v=-89,4",
        "p=87,30 v=86,11",
        "p=56,102 v=85,23",
        "p=16,44 v=-90,-33",
        "p=85,31 v=86,-92",
        "p=70,4 v=-19,-31",
        "p=83,14 v=20,46",
        "p=29,66 v=-60,-94",
        "p=69,19 v=83,81",
        "p=97,67 v=-59,34",
        "p=91,10 v=7,13",
        "p=54,51 v=-95,-51",
        "p=51,45 v=50,-84",
        "p=90,22 v=-85,4",
        "p=54,37 v=91,-32",
        "p=27,84 v=81,-19",
        "p=34,27 v=54,40",
        "p=71,85 v=63,52",
        "p=54,16 v=-63,71",
        "p=5,78 v=-93,96",
        "p=61,31 v=46,57",
        "p=16,52 v=27,44",
        "p=11,17 v=-58,-81",
        "p=67,71 v=-57,9",
        "p=46,63 v=15,-43",
        "p=1,48 v=-6,-32",
        "p=27,75 v=11,77",
        "p=23,73 v=-45,-43",
        "p=45,16 v=-92,21",
        "p=12,75 v=33,-36",
        "p=6,57 v=52,-68",
        "p=7,25 v=-78,79",
        "p=43,18 v=97,-81",
        "p=77,69 v=13,17",
        "p=83,102 v=20,91",
        "p=41,18 v=-76,-75",
        "p=88,69 v=35,84",
        "p=60,84 v=-39,30",
        "p=16,46 v=-93,18",
        "p=72,91 v=54,-63",
        "p=39,43 v=-89,-67",
        "p=100,10 v=80,-13",
        "p=60,92 v=-29,39",
        "p=57,26 v=28,-31",
        "p=43,26 v=-15,15",
        "p=32,34 v=-87,-63",
        "p=17,49 v=-73,48",
        "p=65,69 v=-29,-56",
        "p=89,81 v=89,-2",
        "p=58,16 v=-66,20",
        "p=7,82 v=14,-52",
        "p=64,19 v=-16,-94",
        "p=92,33 v=26,-41",
        "p=63,31 v=79,45",
        "p=49,92 v=91,-2",
        "p=59,76 v=-58,-83",
        "p=90,43 v=-18,18",
        "p=1,88 v=27,9",
        "p=91,3 v=-4,-84",
        "p=34,97 v=-1,-89",
        "p=14,4 v=-73,-12",
        "p=59,49 v=-35,87",
        "p=3,24 v=74,60",
        "p=93,45 v=61,-16",
        "p=41,70 v=-76,-70",
        "p=92,90 v=-14,-46",
        "p=0,10 v=96,20",
        "p=90,72 v=-28,-34",
        "p=21,54 v=-64,-51",
        "p=62,76 v=96,31",
        "p=91,96 v=-5,-73",
        "p=60,23 v=-4,68",
        "p=30,0 v=-45,-28",
        "p=95,30 v=-25,-87",
        "p=75,102 v=-82,51",
        "p=11,79 v=12,-55",
        "p=40,82 v=75,-97",
        "p=26,5 v=8,91",
        "p=96,63 v=-37,-52",
        "p=39,50 v=-45,-42",
        "p=41,6 v=25,21",
        "p=91,68 v=-44,-43",
        "p=18,78 v=69,-9",
        "p=26,51 v=-49,-60",
        "p=2,1 v=-87,39",
        "p=95,41 v=-49,-83",
        "p=99,102 v=58,-90",
        "p=3,94 v=72,-68",
        "p=82,89 v=76,24",
        "p=22,70 v=-38,-96",
        "p=91,12 v=23,21",
        "p=72,17 v=-85,46",
        "p=89,48 v=-2,-32",
        "p=7,7 v=-65,-4",
        "p=65,35 v=79,96",
        "p=98,75 v=-18,-70",
        "p=88,3 v=52,-6",
        "p=89,3 v=-24,-5",
        "p=53,83 v=51,-37",
        "p=73,40 v=-85,3",
        "p=64,93 v=-75,-44",
        "p=68,21 v=-40,-26",
        "p=69,33 v=-25,-75",
        "p=54,20 v=-86,-92",
        "p=70,78 v=-5,32",
        "p=17,55 v=48,20",
        "p=25,72 v=75,-62",
        "p=20,41 v=-25,44",
        "p=19,18 v=-35,-98",
        "p=17,90 v=-1,-97",
        "p=21,11 v=30,-21",
        "p=90,55 v=4,35",
        "p=85,4 v=57,74",
        "p=36,19 v=97,-14",
        "p=24,0 v=87,-46",
        "p=23,32 v=84,96",
        "p=32,1 v=8,64",
        "p=53,37 v=6,20",
        "p=26,57 v=-58,-9",
        "p=25,76 v=-36,-37",
        "p=83,72 v=-69,34",
        "p=16,40 v=-97,-56",
        "p=49,57 v=59,13",
        "p=13,81 v=49,16",
        "p=16,6 v=68,5",
        "p=100,37 v=61,-6",
        "p=100,79 v=55,93",
        "p=18,65 v=71,34",
        "p=25,29 v=-77,-39",
        "p=43,43 v=81,43",
        "p=54,39 v=-70,28",
        "p=97,69 v=-64,-45",
        "p=94,84 v=-97,24",
        "p=63,18 v=-98,72",
        "p=21,26 v=37,-75",
        "p=8,59 v=-24,-43",
        "p=29,53 v=-58,-68",
        "p=48,28 v=50,63",
        "p=0,22 v=-59,72",
        "p=5,58 v=-72,-52",
        "p=41,30 v=53,-6",
        "p=55,96 v=-22,-7",
        "p=78,50 v=-69,-67",
        "p=88,65 v=-94,34",
        "p=89,45 v=-37,-31",
        "p=72,68 v=-78,-76",
        "p=78,93 v=26,58",
        "p=13,84 v=8,-28",
        "p=76,24 v=51,-57",
        "p=2,101 v=-80,52",
        "p=35,78 v=78,92",
        "p=33,11 v=21,-90",
        "p=16,98 v=-43,92",
        "p=0,35 v=1,54",
        "p=6,45 v=-90,10",
        "p=31,58 v=-72,-99",
        "p=18,25 v=46,-5",
        "p=89,76 v=25,8",
        "p=45,40 v=-29,96",
        "p=91,77 v=-69,4",
        "p=7,54 v=-55,-28",
        "p=18,95 v=43,32",
        "p=28,79 v=-99,75",
        "p=29,92 v=-18,81",
        "p=70,8 v=-98,3",
        "p=72,28 v=9,54",
        "p=28,6 v=59,99",
        "p=63,102 v=-79,31",
        "p=76,32 v=-76,-32",
        "p=59,1 v=63,-46",
        "p=96,48 v=39,-50",
        "p=9,77 v=36,85",
        "p=86,47 v=-34,-92",
        "p=2,97 v=-43,-89",
        "p=92,51 v=-78,-16",
        "p=63,31 v=19,81",
        "p=3,72 v=68,16",
        "p=45,68 v=-28,-91",
        "p=59,90 v=89,-83",
        "p=75,7 v=-66,-22",
        "p=72,18 v=-55,47",
        "p=27,64 v=24,1",
        "p=64,55 v=57,-68",
        "p=72,66 v=19,84",
        "p=55,4 v=-60,-31",
        "p=1,39 v=67,-94",
        "p=84,22 v=4,-84",
        "p=65,7 v=-44,-98",
        "p=42,15 v=-99,-56",
        "p=19,3 v=-55,48",
        "p=9,18 v=-8,73",
        "p=54,71 v=47,-43",
        "p=93,77 v=64,76",
        "p=53,43 v=82,45",
        "p=22,0 v=10,47",
        "p=12,40 v=-99,95",
        "p=38,8 v=-67,47",
        "p=47,59 v=-3,31",
        "p=21,25 v=-58,63",
        "p=84,87 v=-72,84",
        "p=62,63 v=-57,7",
        "p=94,27 v=-62,72",
        "p=30,6 v=87,23",
        "p=69,58 v=97,9",
        "p=76,43 v=-85,-7",
        "p=76,22 v=62,11",
        "p=96,20 v=-53,39",
        "p=97,66 v=68,-63",
        "p=28,23 v=-32,57",
        "p=74,24 v=-46,-25",
        "p=34,82 v=78,-36",
        "p=48,96 v=-80,26",
        "p=76,71 v=70,-18",
        "p=94,23 v=45,-48",
        "p=47,39 v=-1,-75",
        "p=89,59 v=15,-63",
        "p=35,40 v=94,88",
        "p=14,51 v=86,-37",
        "p=71,57 v=-42,-86",
        "p=45,41 v=-20,2",
        "p=21,65 v=-46,-18",
        "p=28,77 v=78,-1",
        "p=78,101 v=13,-3",
        "p=33,81 v=65,57",
        "p=20,2 v=49,30",
        "p=80,73 v=54,-44",
        "p=25,73 v=-8,26",
        "p=42,54 v=-10,-16",
        "p=77,98 v=32,-56",
        "p=26,83 v=21,32",
        "p=30,53 v=72,-25",
        "p=16,53 v=-55,9",
        "p=68,75 v=34,60",
        "p=83,77 v=-28,-87",
        "p=17,55 v=61,-77",
        "p=91,86 v=-15,66",
        "p=31,47 v=97,11",
        "p=60,14 v=51,98",
        "p=21,40 v=-1,69",
        "p=26,54 v=-9,58",
        "p=71,81 v=-94,-95",
        "p=40,26 v=91,-57",
        "p=51,19 v=91,98",
        "p=10,72 v=8,-69",
        "p=34,40 v=-99,-35",
        "p=4,94 v=27,57",
        "p=20,76 v=-23,-95",
        "p=37,89 v=-7,58",
        "p=53,100 v=-92,23",
        "p=92,56 v=-56,-85",
        "p=38,72 v=-42,-52",
        "p=100,16 v=-81,-31",
        "p=57,23 v=-54,-14",
        "p=32,75 v=81,84",
        "p=71,61 v=57,-52",
        "p=46,89 v=97,71",
        "p=70,85 v=-26,14",
        "p=80,40 v=4,-73",
        "p=18,91 v=37,-69",
        "p=10,61 v=15,65",
        "p=71,34 v=-50,55",
        "p=88,2 v=-48,-60",
        "p=75,51 v=-15,-58",
        "p=46,98 v=-47,-97",
        "p=49,20 v=66,81",
        "p=82,2 v=-54,37",
        "p=11,83 v=-23,-22",
        "p=100,9 v=61,30",
        "p=88,64 v=-78,17",
        "p=88,13 v=4,81",
        "p=48,11 v=-62,-29",
        "p=91,100 v=77,64",
        "p=62,71 v=16,-69",
        "p=29,22 v=12,98",
        "p=7,3 v=55,57",
        "p=53,14 v=12,56",
        "p=30,95 v=-11,-79",
        "p=53,32 v=31,1",
        "p=84,47 v=-99,-99",
        "p=99,15 v=49,20",
        "p=83,89 v=-75,-62",
        "p=44,77 v=95,-8",
        "p=38,95 v=94,49",
        "p=35,4 v=-20,-31",
        "p=34,12 v=-26,-66",
        "p=73,102 v=-88,26",
        "p=58,82 v=28,7",
        "p=89,44 v=4,70",
        "p=82,36 v=48,71",
        "p=44,34 v=21,36",
        "p=88,82 v=86,-37",
        "p=70,17 v=-76,-26",
        "p=79,62 v=-69,-17",
        "p=71,36 v=-25,2",
        "p=75,14 v=-25,-73",
        "p=6,11 v=-27,-89",
        "p=5,25 v=96,-49",
        "p=38,33 v=-18,-31",
        "p=27,86 v=43,-36",
        "p=93,34 v=57,-39",
        "p=82,97 v=41,-50",
        "p=50,37 v=-32,62",
        "p=10,101 v=93,-29",
        "p=53,45 v=-45,1",
        "p=23,6 v=84,89",
        "p=5,62 v=-5,-51",
        "p=73,73 v=-44,-78",
        "p=66,55 v=-26,17",
        "p=41,26 v=84,-30",
        "p=23,40 v=-98,39",
        "p=81,63 v=29,-18",
        "p=63,100 v=-84,28",
        "p=76,81 v=79,-46",
        "p=41,20 v=39,98",
        "p=75,3 v=95,64",
        "p=42,74 v=-48,24",
        "p=93,48 v=-56,-94",
        "p=32,25 v=15,-73",
        "p=69,71 v=89,41",
        "p=8,39 v=13,20",
        "p=52,43 v=-10,-24",
        "p=20,26 v=96,64",
        "p=26,69 v=50,86",
        "p=98,32 v=-37,-15",
        "p=27,59 v=-55,-51",
        "p=8,33 v=36,-5",
        "p=13,85 v=-43,-12",
        "p=24,23 v=-55,-92",
        "p=52,29 v=47,-15",
        "p=51,77 v=-98,-87",
        "p=21,48 v=-71,51",
        "p=34,70 v=59,-87",
        "p=13,28 v=-36,-45",
        "p=66,86 v=28,-45",
        "p=37,83 v=-86,76",
        "p=61,81 v=-79,-36",
        "p=42,42 v=-7,87",
        "p=62,28 v=3,-33",
        "p=62,61 v=-60,-77",
        "p=50,45 v=-92,-41",
        "p=78,6 v=-59,63",
        "p=37,15 v=75,11",
        "p=39,76 v=-38,-26",
        "p=82,82 v=64,-89",
        "p=84,27 v=-75,97",
        "p=58,56 v=-82,1",
        "p=24,57 v=-99,-69",
        "p=27,43 v=67,43",
        "p=53,80 v=71,40",
        "p=30,1 v=90,-11",
        "p=99,73 v=-24,26",
        "p=72,56 v=-55,-10",
        "p=27,69 v=58,-39",
        "p=60,36 v=31,35",
        "p=8,99 v=-3,-5",
        "p=13,75 v=-71,-95",
        "p=51,86 v=-77,11",
        "p=40,51 v=-73,-58",
        "p=63,41 v=-69,19",
        "p=43,74 v=-80,86",
        "p=66,2 v=35,14",
        "p=27,89 v=27,-44",
        "p=46,77 v=-34,-38",
        "p=6,80 v=68,-3",
        "p=70,57 v=-9,59",
        "p=39,90 v=6,40",
        "p=79,35 v=35,-66",
        "p=34,65 v=-58,86",
        "p=98,54 v=80,-34",
        "p=14,98 v=8,-29",
        "p=94,75 v=-59,41",
        "p=37,59 v=-67,-68",
        "p=96,100 v=23,-38",
        "p=38,96 v=99,58",
        "p=70,47 v=-85,1",
        "p=46,64 v=-79,52",
        "p=7,10 v=14,65",
        "p=29,43 v=-39,71",
        "p=37,53 v=-90,92",
        "p=64,6 v=38,-21",
        "p=1,7 v=45,52",
        "p=39,85 v=24,92",
        "p=62,49 v=82,10",
        "p=17,72 v=-84,-19",
        "p=6,94 v=-37,66",
        "p=54,52 v=96,-66",
        "p=85,90 v=91,-20",
        "p=13,84 v=-66,-26",
        "p=7,29 v=82,69",
        "p=82,78 v=67,48",
        "p=90,85 v=-47,-27",
        "p=9,37 v=-59,-33",
        "p=83,0 v=29,-29",
        "p=21,16 v=-74,-40",
        "p=70,53 v=66,53",
    ]
    
    func extractNumbers(_ input: String) -> [Int] {
        let numberPattern = #/[-+]?\d+/#
        
        return input.matches(of: numberPattern).compactMap { match in
            // Convert the matched substring to an Int
            Int(String(match.0))
        }
    }
    
    func dowork() {
        let input = input2
        let W = input.count == input1.count ? 11 : 101
        let H = input.count == input1.count ? 7 : 103
        
        let N = 100
        
        var robots: [[Int]] = input.map { extractNumbers($0) }
        for (i, robot) in robots.enumerated() {
            robots[i][0] = (robots[i][0] + (N * robot[2])) % W
            robots[i][1] = (robots[i][1] + (N * robot[3])) % H

            if (robots[i][0] < 0) { robots[i][0] += W }
            if (robots[i][1] < 0) { robots[i][1] += H }
        }
        
        var result = [0, 0, 0, 0] // lt, rt, rb, lb
        for robot in robots {
            if robot[0] < W / 2 {
                if robot[1] < H / 2 {
                    result[0] += 1 // lt
                } else if robot[1] > H / 2 {
                    result[3] += 1 // lb
                }
            } else if robot[0] > W / 2 {
                if robot[1] < H / 2 {
                    result[1] += 1 // rt
                } else if robot[1] > H / 2 {
                    result[2] += 1 // rb
                }
            }
        }
        
        print(result)
        print(result.reduce(1, *))
    }
}
