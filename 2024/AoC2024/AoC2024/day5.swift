//
//  day5.swift
//  AoC2024
//
//  Created by a on 05/12/2024.
//

class Day5 {
    
    let input1 = [
        "47|53",
        "97|13",
        "97|61",
        "97|47",
        "75|29",
        "61|13",
        "75|53",
        "29|13",
        "97|29",
        "53|29",
        "61|53",
        "97|53",
        "61|29",
        "47|13",
        "75|47",
        "97|75",
        "47|61",
        "75|61",
        "47|29",
        "75|13",
        "53|13",
        "",
        "75,47,61,53,29",
        "97,61,53,29,13",
        "75,29,13",
        "75,97,47,61,53",
        "61,13,29",
        "97,13,75,29,47",
    ]
    
    
    let input2 = [
        "96|54",
        "79|47",
        "79|13",
        "69|79",
        "69|67",
        "69|77",
        "15|78",
        "15|75",
        "15|39",
        "15|82",
        "39|23",
        "39|68",
        "39|59",
        "39|84",
        "39|86",
        "33|87",
        "33|35",
        "33|26",
        "33|19",
        "33|12",
        "33|99",
        "97|46",
        "97|23",
        "97|84",
        "97|15",
        "97|68",
        "97|64",
        "97|43",
        "28|55",
        "28|66",
        "28|39",
        "28|19",
        "28|21",
        "28|26",
        "28|31",
        "28|23",
        "67|46",
        "67|49",
        "67|66",
        "67|99",
        "67|62",
        "67|54",
        "67|84",
        "67|64",
        "67|88",
        "87|49",
        "87|62",
        "87|35",
        "87|21",
        "87|19",
        "87|26",
        "87|97",
        "87|99",
        "87|66",
        "87|31",
        "77|93",
        "77|31",
        "77|13",
        "77|59",
        "77|66",
        "77|47",
        "77|62",
        "77|12",
        "77|49",
        "77|88",
        "77|99",
        "78|97",
        "78|61",
        "78|67",
        "78|77",
        "78|54",
        "78|19",
        "78|33",
        "78|39",
        "78|94",
        "78|75",
        "78|62",
        "78|27",
        "54|66",
        "54|64",
        "54|39",
        "54|21",
        "54|97",
        "54|59",
        "54|24",
        "54|57",
        "54|88",
        "54|49",
        "54|31",
        "54|62",
        "54|74",
        "94|19",
        "94|69",
        "94|28",
        "94|96",
        "94|54",
        "94|99",
        "94|24",
        "94|39",
        "94|27",
        "94|62",
        "94|97",
        "94|23",
        "94|33",
        "94|61",
        "21|18",
        "21|49",
        "21|47",
        "21|27",
        "21|43",
        "21|86",
        "21|59",
        "21|13",
        "21|74",
        "21|52",
        "21|93",
        "21|46",
        "21|57",
        "21|84",
        "21|31",
        "31|68",
        "31|52",
        "31|86",
        "31|59",
        "31|27",
        "31|78",
        "31|64",
        "31|61",
        "31|49",
        "31|69",
        "31|18",
        "31|84",
        "31|57",
        "31|46",
        "31|13",
        "31|53",
        "75|87",
        "75|35",
        "75|28",
        "75|19",
        "75|69",
        "75|52",
        "75|24",
        "75|33",
        "75|79",
        "75|62",
        "75|54",
        "75|14",
        "75|37",
        "75|77",
        "75|97",
        "75|96",
        "75|67",
        "84|13",
        "84|86",
        "84|78",
        "84|68",
        "84|14",
        "84|93",
        "84|18",
        "84|53",
        "84|75",
        "84|15",
        "84|61",
        "84|28",
        "84|64",
        "84|43",
        "84|96",
        "84|94",
        "84|33",
        "84|57",
        "19|62",
        "19|12",
        "19|99",
        "19|67",
        "19|23",
        "19|35",
        "19|84",
        "19|54",
        "19|77",
        "19|59",
        "19|79",
        "19|39",
        "19|21",
        "19|66",
        "19|31",
        "19|55",
        "19|74",
        "19|88",
        "19|47",
        "13|68",
        "13|19",
        "13|14",
        "13|28",
        "13|15",
        "13|52",
        "13|82",
        "13|46",
        "13|18",
        "13|57",
        "13|33",
        "13|75",
        "13|86",
        "13|27",
        "13|64",
        "13|94",
        "13|43",
        "13|26",
        "13|78",
        "13|61",
        "53|87",
        "53|78",
        "53|18",
        "53|75",
        "53|15",
        "53|96",
        "53|46",
        "53|69",
        "53|68",
        "53|26",
        "53|43",
        "53|33",
        "53|61",
        "53|14",
        "53|82",
        "53|86",
        "53|52",
        "53|27",
        "53|64",
        "53|94",
        "53|37",
        "46|52",
        "46|18",
        "46|69",
        "46|33",
        "46|19",
        "46|94",
        "46|82",
        "46|57",
        "46|26",
        "46|28",
        "46|75",
        "46|78",
        "46|86",
        "46|37",
        "46|87",
        "46|14",
        "46|68",
        "46|79",
        "46|43",
        "46|96",
        "46|61",
        "46|35",
        "23|13",
        "23|86",
        "23|74",
        "23|55",
        "23|88",
        "23|53",
        "23|99",
        "23|59",
        "23|24",
        "23|21",
        "23|47",
        "23|49",
        "23|15",
        "23|46",
        "23|31",
        "23|57",
        "23|93",
        "23|66",
        "23|18",
        "23|68",
        "23|84",
        "23|12",
        "23|64",
        "86|94",
        "86|67",
        "86|26",
        "86|87",
        "86|61",
        "86|82",
        "86|18",
        "86|96",
        "86|43",
        "86|54",
        "86|28",
        "86|79",
        "86|15",
        "86|35",
        "86|52",
        "86|14",
        "86|33",
        "86|27",
        "86|69",
        "86|19",
        "86|77",
        "86|75",
        "86|78",
        "86|37",
        "47|31",
        "47|57",
        "47|53",
        "47|15",
        "47|86",
        "47|13",
        "47|96",
        "47|84",
        "47|46",
        "47|43",
        "47|27",
        "47|64",
        "47|18",
        "47|61",
        "47|37",
        "47|68",
        "47|94",
        "47|93",
        "47|78",
        "47|59",
        "47|75",
        "47|14",
        "47|49",
        "47|52",
        "35|84",
        "35|49",
        "35|97",
        "35|47",
        "35|62",
        "35|21",
        "35|23",
        "35|59",
        "35|53",
        "35|31",
        "35|39",
        "35|13",
        "35|99",
        "35|54",
        "35|67",
        "35|12",
        "35|55",
        "35|93",
        "35|24",
        "35|74",
        "35|64",
        "35|66",
        "35|88",
        "35|77",
        "52|96",
        "52|54",
        "52|62",
        "52|79",
        "52|69",
        "52|14",
        "52|39",
        "52|97",
        "52|37",
        "52|33",
        "52|82",
        "52|28",
        "52|99",
        "52|24",
        "52|67",
        "52|66",
        "52|27",
        "52|61",
        "52|23",
        "52|19",
        "52|87",
        "52|35",
        "52|77",
        "52|26",
        "74|55",
        "74|18",
        "74|88",
        "74|78",
        "74|93",
        "74|86",
        "74|49",
        "74|75",
        "74|31",
        "74|53",
        "74|27",
        "74|43",
        "74|15",
        "74|59",
        "74|94",
        "74|46",
        "74|47",
        "74|64",
        "74|13",
        "74|52",
        "74|68",
        "74|14",
        "74|57",
        "74|84",
        "64|86",
        "64|75",
        "64|37",
        "64|14",
        "64|96",
        "64|15",
        "64|94",
        "64|52",
        "64|43",
        "64|33",
        "64|69",
        "64|68",
        "64|26",
        "64|27",
        "64|57",
        "64|79",
        "64|61",
        "64|28",
        "64|82",
        "64|78",
        "64|87",
        "64|46",
        "64|19",
        "64|18",
        "82|19",
        "82|23",
        "82|39",
        "82|66",
        "82|47",
        "82|99",
        "82|97",
        "82|74",
        "82|35",
        "82|12",
        "82|77",
        "82|49",
        "82|54",
        "82|79",
        "82|84",
        "82|59",
        "82|21",
        "82|67",
        "82|55",
        "82|88",
        "82|62",
        "82|93",
        "82|31",
        "82|24",
        "14|67",
        "14|79",
        "14|82",
        "14|33",
        "14|61",
        "14|21",
        "14|37",
        "14|77",
        "14|39",
        "14|97",
        "14|24",
        "14|26",
        "14|96",
        "14|54",
        "14|87",
        "14|66",
        "14|23",
        "14|19",
        "14|99",
        "14|35",
        "14|62",
        "14|12",
        "14|28",
        "14|69",
        "12|21",
        "12|55",
        "12|46",
        "12|84",
        "12|18",
        "12|88",
        "12|31",
        "12|57",
        "12|49",
        "12|53",
        "12|13",
        "12|86",
        "12|47",
        "12|78",
        "12|68",
        "12|94",
        "12|93",
        "12|15",
        "12|52",
        "12|75",
        "12|64",
        "12|74",
        "12|43",
        "12|59",
        "49|15",
        "49|27",
        "49|46",
        "49|18",
        "49|93",
        "49|52",
        "49|64",
        "49|53",
        "49|86",
        "49|68",
        "49|75",
        "49|33",
        "49|14",
        "49|96",
        "49|37",
        "49|84",
        "49|94",
        "49|43",
        "49|59",
        "49|13",
        "49|78",
        "49|69",
        "49|57",
        "49|61",
        "24|84",
        "24|64",
        "24|59",
        "24|12",
        "24|68",
        "24|88",
        "24|86",
        "24|99",
        "24|21",
        "24|46",
        "24|55",
        "24|78",
        "24|31",
        "24|93",
        "24|13",
        "24|43",
        "24|53",
        "24|49",
        "24|66",
        "24|57",
        "24|15",
        "24|74",
        "24|47",
        "24|18",
        "57|28",
        "57|52",
        "57|77",
        "57|82",
        "57|27",
        "57|35",
        "57|15",
        "57|18",
        "57|67",
        "57|78",
        "57|43",
        "57|33",
        "57|96",
        "57|37",
        "57|19",
        "57|87",
        "57|75",
        "57|79",
        "57|26",
        "57|69",
        "57|94",
        "57|14",
        "57|61",
        "57|86",
        "61|33",
        "61|39",
        "61|23",
        "61|62",
        "61|28",
        "61|24",
        "61|19",
        "61|99",
        "61|66",
        "61|67",
        "61|54",
        "61|74",
        "61|96",
        "61|82",
        "61|21",
        "61|69",
        "61|37",
        "61|12",
        "61|97",
        "61|26",
        "61|77",
        "61|87",
        "61|35",
        "61|79",
        "99|43",
        "99|21",
        "99|75",
        "99|84",
        "99|31",
        "99|15",
        "99|78",
        "99|55",
        "99|47",
        "99|88",
        "99|46",
        "99|66",
        "99|57",
        "99|93",
        "99|12",
        "99|86",
        "99|68",
        "99|18",
        "99|74",
        "99|49",
        "99|13",
        "99|53",
        "99|64",
        "99|59",
        "43|35",
        "43|79",
        "43|61",
        "43|19",
        "43|15",
        "43|37",
        "43|28",
        "43|82",
        "43|94",
        "43|14",
        "43|33",
        "43|69",
        "43|52",
        "43|77",
        "43|54",
        "43|39",
        "43|27",
        "43|18",
        "43|67",
        "43|87",
        "43|75",
        "43|78",
        "43|96",
        "43|26",
        "59|33",
        "59|13",
        "59|78",
        "59|43",
        "59|69",
        "59|52",
        "59|14",
        "59|15",
        "59|94",
        "59|27",
        "59|28",
        "59|57",
        "59|68",
        "59|64",
        "59|75",
        "59|46",
        "59|96",
        "59|37",
        "59|26",
        "59|86",
        "59|87",
        "59|18",
        "59|53",
        "59|61",
        "37|39",
        "37|33",
        "37|99",
        "37|62",
        "37|67",
        "37|26",
        "37|12",
        "37|21",
        "37|24",
        "37|55",
        "37|74",
        "37|97",
        "37|96",
        "37|19",
        "37|35",
        "37|69",
        "37|87",
        "37|77",
        "37|79",
        "37|23",
        "37|54",
        "37|66",
        "37|28",
        "37|82",
        "93|59",
        "93|13",
        "93|57",
        "93|27",
        "93|87",
        "93|61",
        "93|28",
        "93|68",
        "93|53",
        "93|86",
        "93|14",
        "93|46",
        "93|33",
        "93|96",
        "93|78",
        "93|15",
        "93|52",
        "93|69",
        "93|37",
        "93|75",
        "93|64",
        "93|18",
        "93|94",
        "93|43",
        "55|88",
        "55|86",
        "55|84",
        "55|59",
        "55|57",
        "55|43",
        "55|68",
        "55|61",
        "55|93",
        "55|46",
        "55|64",
        "55|78",
        "55|53",
        "55|18",
        "55|15",
        "55|52",
        "55|27",
        "55|49",
        "55|94",
        "55|31",
        "55|13",
        "55|75",
        "55|47",
        "55|14",
        "62|55",
        "62|74",
        "62|43",
        "62|66",
        "62|31",
        "62|57",
        "62|59",
        "62|12",
        "62|49",
        "62|21",
        "62|47",
        "62|13",
        "62|99",
        "62|88",
        "62|23",
        "62|46",
        "62|64",
        "62|53",
        "62|97",
        "62|24",
        "62|84",
        "62|68",
        "62|93",
        "62|86",
        "66|43",
        "66|68",
        "66|93",
        "66|46",
        "66|64",
        "66|21",
        "66|59",
        "66|57",
        "66|49",
        "66|53",
        "66|13",
        "66|94",
        "66|55",
        "66|86",
        "66|74",
        "66|47",
        "66|84",
        "66|75",
        "66|15",
        "66|18",
        "66|31",
        "66|78",
        "66|88",
        "66|12",
        "68|35",
        "68|78",
        "68|86",
        "68|18",
        "68|37",
        "68|77",
        "68|19",
        "68|52",
        "68|33",
        "68|26",
        "68|27",
        "68|75",
        "68|14",
        "68|28",
        "68|79",
        "68|61",
        "68|94",
        "68|82",
        "68|69",
        "68|43",
        "68|15",
        "68|96",
        "68|87",
        "68|57",
        "27|33",
        "27|12",
        "27|67",
        "27|82",
        "27|66",
        "27|69",
        "27|26",
        "27|39",
        "27|37",
        "27|61",
        "27|77",
        "27|23",
        "27|54",
        "27|79",
        "27|62",
        "27|35",
        "27|28",
        "27|87",
        "27|99",
        "27|96",
        "27|97",
        "27|24",
        "27|14",
        "27|19",
        "26|19",
        "26|93",
        "26|39",
        "26|21",
        "26|23",
        "26|74",
        "26|79",
        "26|12",
        "26|24",
        "26|31",
        "26|84",
        "26|67",
        "26|35",
        "26|99",
        "26|88",
        "26|47",
        "26|82",
        "26|55",
        "26|66",
        "26|49",
        "26|97",
        "26|77",
        "26|62",
        "26|54",
        "88|53",
        "88|18",
        "88|64",
        "88|27",
        "88|14",
        "88|13",
        "88|15",
        "88|43",
        "88|86",
        "88|68",
        "88|52",
        "88|59",
        "88|75",
        "88|49",
        "88|57",
        "88|47",
        "88|61",
        "88|93",
        "88|37",
        "88|94",
        "88|46",
        "88|78",
        "88|84",
        "88|31",
        "18|39",
        "18|27",
        "18|26",
        "18|35",
        "18|62",
        "18|37",
        "18|28",
        "18|94",
        "18|77",
        "18|69",
        "18|54",
        "18|52",
        "18|79",
        "18|14",
        "18|67",
        "18|75",
        "18|78",
        "18|19",
        "18|96",
        "18|61",
        "18|82",
        "18|97",
        "18|33",
        "18|87",
        "96|99",
        "96|35",
        "96|67",
        "96|88",
        "96|55",
        "96|12",
        "96|39",
        "96|74",
        "96|33",
        "96|97",
        "96|26",
        "96|69",
        "96|28",
        "96|87",
        "96|82",
        "96|62",
        "96|66",
        "96|77",
        "96|24",
        "96|23",
        "96|19",
        "96|79",
        "96|21",
        "79|74",
        "79|66",
        "79|54",
        "79|39",
        "79|21",
        "79|93",
        "79|84",
        "79|12",
        "79|53",
        "79|55",
        "79|99",
        "79|24",
        "79|49",
        "79|59",
        "79|31",
        "79|62",
        "79|77",
        "79|67",
        "79|23",
        "79|35",
        "79|88",
        "79|97",
        "69|23",
        "69|33",
        "69|47",
        "69|66",
        "69|12",
        "69|21",
        "69|24",
        "69|39",
        "69|88",
        "69|54",
        "69|62",
        "69|55",
        "69|99",
        "69|82",
        "69|35",
        "69|97",
        "69|19",
        "69|87",
        "69|26",
        "69|28",
        "69|74",
        "15|54",
        "15|26",
        "15|79",
        "15|14",
        "15|87",
        "15|18",
        "15|69",
        "15|52",
        "15|67",
        "15|77",
        "15|61",
        "15|28",
        "15|33",
        "15|62",
        "15|37",
        "15|94",
        "15|27",
        "15|19",
        "15|35",
        "15|96",
        "39|53",
        "39|64",
        "39|99",
        "39|47",
        "39|46",
        "39|93",
        "39|66",
        "39|88",
        "39|74",
        "39|57",
        "39|21",
        "39|97",
        "39|12",
        "39|62",
        "39|13",
        "39|31",
        "39|24",
        "39|49",
        "39|55",
        "33|88",
        "33|21",
        "33|24",
        "33|79",
        "33|77",
        "33|55",
        "33|67",
        "33|74",
        "33|23",
        "33|54",
        "33|66",
        "33|82",
        "33|39",
        "33|62",
        "33|31",
        "33|97",
        "33|47",
        "33|28",
        "97|57",
        "97|93",
        "97|88",
        "97|47",
        "97|86",
        "97|12",
        "97|24",
        "97|13",
        "97|55",
        "97|21",
        "97|59",
        "97|53",
        "97|99",
        "97|49",
        "97|74",
        "97|66",
        "97|31",
        "28|24",
        "28|77",
        "28|35",
        "28|54",
        "28|79",
        "28|12",
        "28|99",
        "28|88",
        "28|47",
        "28|82",
        "28|67",
        "28|74",
        "28|87",
        "28|49",
        "28|97",
        "28|62",
        "67|55",
        "67|13",
        "67|24",
        "67|59",
        "67|47",
        "67|23",
        "67|68",
        "67|97",
        "67|93",
        "67|31",
        "67|53",
        "67|21",
        "67|39",
        "67|12",
        "67|74",
        "87|54",
        "87|84",
        "87|24",
        "87|77",
        "87|12",
        "87|88",
        "87|74",
        "87|39",
        "87|82",
        "87|67",
        "87|23",
        "87|47",
        "87|79",
        "87|55",
        "77|55",
        "77|23",
        "77|67",
        "77|64",
        "77|84",
        "77|74",
        "77|39",
        "77|21",
        "77|46",
        "77|97",
        "77|53",
        "77|24",
        "77|54",
        "78|37",
        "78|69",
        "78|28",
        "78|52",
        "78|96",
        "78|35",
        "78|82",
        "78|14",
        "78|79",
        "78|23",
        "78|26",
        "78|87",
        "54|84",
        "54|99",
        "54|46",
        "54|12",
        "54|93",
        "54|13",
        "54|23",
        "54|47",
        "54|68",
        "54|53",
        "54|55",
        "94|52",
        "94|82",
        "94|14",
        "94|26",
        "94|87",
        "94|37",
        "94|79",
        "94|67",
        "94|35",
        "94|77",
        "21|55",
        "21|94",
        "21|53",
        "21|75",
        "21|78",
        "21|64",
        "21|88",
        "21|15",
        "21|68",
        "31|15",
        "31|43",
        "31|96",
        "31|37",
        "31|93",
        "31|14",
        "31|75",
        "31|94",
        "75|82",
        "75|26",
        "75|39",
        "75|61",
        "75|23",
        "75|27",
        "75|94",
        "84|37",
        "84|59",
        "84|46",
        "84|52",
        "84|69",
        "84|27",
        "19|97",
        "19|53",
        "19|93",
        "19|24",
        "19|49",
        "13|96",
        "13|87",
        "13|69",
        "13|37",
        "53|13",
        "53|28",
        "53|57",
        "46|15",
        "46|27",
        "23|43",
        "",
        "78,18,57,52,59,14,87,53,15,28,94",
        "55,88,31,49,93,59,53,13,46,57,86,43,15,18,78,94,52,27,14",
        "33,19,35,67,62,21,47",
        "49,93,59,53,13,64,46,57,15,94,27,96,69",
        "47,31,57,86,78,14,37",
        "21,99,28,39,66,31,82,23,47",
        "68,86,43,15,18,78,75,94,27,14,61,37,69,28,26,82,19",
        "15,53,87,37,61,96,57,27,26,68,43,94,69,18,13,86,64",
        "55,88,31,93,75,52,27",
        "75,94,52,27,33,28,82,67,39,62,23",
        "53,57,86,15,18,75,27,37,96,28,26",
        "93,24,21,82,62,66,99",
        "55,31,49,13,46,68,86,15,75,94,14",
        "24,99,12,21,47,49,93,13,64,46,68,57,43,15,18",
        "14,37,69,33,87,26,77,39,97,24,99",
        "15,86,68,87,13",
        "94,55,18,12,46,84,68,31,49",
        "64,46,57,43,15,18,78,75,94,52,27,14,61,96,33,28,87,26,19",
        "54,78,39,94,97,14,52,62,79",
        "99,66,12,21,74,55,47,84,93,59,13,68,57,43,15,18,78",
        "37,33,87,26,19,79,35,77,67,24,99,66,12,21,74",
        "14,96,69,28,87,26,82,79,77,39,62,97,23,99,12",
        "84,93,13,68,86,18,78,37,33",
        "49,84,93,53,13,64,68,57,43,15,18,78,75,94,27,14,61,96,69",
        "49,84,53,64,46,68,57,86,43,15,18,78,75,94,52,27,37,96,69",
        "12,74,53,18,75",
        "46,14,37,15,75,61,59,52,43,47,13,27,78,94,49,57,84",
        "46,68,57,86,43,15,18,78,75,94,27,14,61,96,69,28,87,26,82,19,79",
        "61,37,96,69,33,28,87,26,82,19,79,35,77,67,54,39,62,97,23,24,99,12,21",
        "26,82,79,35,12,47,84",
        "55,93,86,59,84",
        "93,28,52,43,86,78,61,57,13,68,75,18,15,64,53",
        "74,55,47,49,59,13,64,68,57,86,18,94,52",
        "59,21,86,99,18,57,49,74,12,66,84,31,24,68,46",
        "82,28,13,78,52,14,33,86,46",
        "68,57,86,94,27,37,96,87,35",
        "57,46,84,94,75,15,47,64,12,53,59",
        "66,33,74,35,88,69,12,19,79,28,87,54,99",
        "77,82,35,99,24,31,62,93,21,39,67,79,54,19,66,23,97",
        "12,67,23,39,47,62,66,99,88,21,24,74,64,59,53",
        "39,19,62,87,77,35,14,26,28,96,99,23,61,24,66,27,97,67,69,33,54,79,82",
        "13,64,46,43,15,18,94,27,14,61,37,96,69,33,28,87,82",
        "19,62,47,49,84",
        "47,23,53,46,31,93,54,64,67",
        "18,93,21,57,15,84,68,64,86,46,88,13,24,12,53",
        "33,87,82,79,67,39,24,66,47",
        "94,75,82,33,37,27,61,86,69,43,13,15,68",
        "79,77,28,57,26,87,69,19,96,82,18,52,61",
        "94,52,27,14,61,37,96,69,33,28,87,26,82,19,79,35,77,54,39,97,23",
        "66,31,24,84,47,68,74",
        "88,31,49,84,93,59,53,64,86,43,15,18,78,75,94,52,27,14,61",
        "78,86,93,94,46,61,75,47,64,88,52,27,59,18,31,49,57,15,14,43,84,53,13",
        "35,99,24,77,52,14,23,79,69,67,33,82,61,26,28",
        "99,97,31,43,23,55,84",
        "88,23,43,99,24,84,31,12,68,46,93,55,15,21,47,66,57,64,59,53,74,49,13",
        "19,79,35,77,67,54,62,97,23,24,99,66,12,21,74,55,88,47,31,93,59",
        "31,93,59,46,68,43,18,78,94,14,61,37,96",
        "19,54,62,23,99,12,21,55,49,93,59",
        "37,26,75,78,86,64,18,94,82,33,68,87,52,43,57",
        "14,33,87,77,67,54,62,24,12",
        "79,55,97,54,21,74,28,35,96,26,62,67,82,66,87",
        "78,75,94,52,27,14,37,96,69,33,87,82,19,79,35,77,67,54,39",
        "62,97,66,74,31,84,93,59,86",
        "86,75,94,61,28,35,67",
        "53,64,78,94,96,28,26",
        "59,53,64,86,18,27,37,96,87",
        "77,67,54,62,97,23,99,12,21,74,88,47,84,93,59,53,64",
        "13,64,46,57,86,43,15,78,75,94,52,27,14,61,37,96,69,33,87",
        "74,55,88,47,93,59,53,64,46,68,57,86,43,15,78,94,52",
        "99,66,12,21,55,88,47,31,49,84,93,59,53,13,64,46,68,57,86,15,78",
        "68,57,94,52,27,96,69,33,28",
        "62,97,23,74,47,57,86",
        "23,24,99,66,12,21,74,55,47,31,49,84,59,53,13,64,57,86,15",
        "86,43,15,18,75,37,96,33,26,19,79,35,67",
        "12,74,88,47,49,84,53,46,86,18,94",
        "67,54,62,97,23,12,21,88,31,84,93",
        "53,43,78,18,84,75,57,52,94,21,47,68,93",
        "87,78,96,86,35,82,94",
        "97,74,54,28,77,88,19,67,24,62,69",
        "47,43,66,97,21,99,53,46,74",
        "31,74,49,39,99,88,77,79,54",
        "23,24,99,66,12,21,74,88,47,31,49,93,53,64,57,86,43",
        "77,62,21,49,93,13,64",
        "18,99,86,15,59,78,47,21,64",
        "86,75,94,27,37,96,33,28,26",
        "77,67,39,62,97,23,24,99,66,12,21,74,55,88,47,31,49,84,93,59,53",
        "54,62,99,66,12,21,74,47,49,84,93,13,68",
        "31,78,53,18,15",
        "94,52,61,37,96,69,28,19,77,67,54,62,24",
        "37,96,69,33,28,87,26,82,19,79,35,77,54,39,62,97,23,24,99,66,12,21,74",
        "84,59,53,13,64,46,68,86,15,18,78,75,94,27,14,61,37,96,33",
        "33,28,87,26,19,79,35,67,54,39,99,66,47",
        "55,13,64,57,43,18,27",
        "43,78,75,94,14,61,37,69,33,26,35,67,54",
        "57,86,43,15,18,78,75,52,27,14,61,37,96,69,33,28,87,26,82,19,79,35,77",
        "43,15,18,78,75,94,52,27,14,61,37,96,69,33,28,87,26,79,35,77,54",
        "67,77,54,84,21,62,49,66,35,31,88,79,26,74,97,82,24",
        "79,28,37,74,54,35,21,82,87,12,19,67,23",
        "69,33,26,19,79,35,67,97,23,21,74,55,88",
        "87,96,61,67,19,12,28,35,26,24,97,37,82,99,66,69,62,23,21,33,54",
        "15,18,78,75,94,52,27,14,61,37,96,69,33,26,82,19,35,77,67,54,39",
        "26,79,77,67,23,47,31,49,84",
        "19,66,62,79,35,69,28,33,67,24,37,23,14,27,77,61,99,96,54,82,87",
        "26,82,61,77,87,37,69,54,79,67,27,18,75,14,43,52,94",
        "87,18,19,33,78,94,69,35,75,27,14,79,43,37,54",
        "59,13,64,18,78,75,94,52,27,14,61,37,96,69,87",
        "86,18,78,94,14,61,37,77,67",
        "97,12,61,33,26,77,28,24,66,37,39,21,69,54,35",
        "61,33,62,96,52,94,82,18,79",
        "67,23,21,74,55",
        "47,23,26,88,82,28,87,66,67,99,55,21,19,54,79,39,31,24,97,12,74,62,35",
        "12,31,84,53,57,86,94",
        "18,52,28,94,93,86,53,68,13,64,27",
        "24,99,66,12,21,55,88,47,31,49,84,93,59,53,13,64,46,68,57,86,43,15,18",
        "88,47,31,49,84,93,59,13,68,57,86,43,18,78,75,52,27,14,61",
        "79,77,67,54,62,23,99,66,74,55,88,31,84,59,53",
        "61,43,33,18,52,28,13,15,64,78,57,96,27,94,87,59,37,69,53,46,86,14,68",
        "31,49,84,59,53,13,64,46,68,57,86,43,15,18,78,75,94,52,27,14,61,37,96",
        "68,57,78,94,96,26,19,79,35",
        "96,33,28,87,26,19,79,35,77,54,39,62,97,23,24,99,66,12,21,74,55",
        "55,64,15,75,59,66,78,74,68,46,47,88,18,12,84",
        "59,13,15,18,78,94,69,28,87",
        "86,46,66,12,99,13,47,68,15,93,88,43,59,24,21",
        "12,47,93,43,21,53,88,55,59,31,13,74,49,94,15,18,46",
        "97,37,52,67,39,99,69,14,87",
        "62,46,39,64,12,99,59,13,66,23,54,88,74,84,24,21,47,97,53,31,67",
        "77,67,54,62,24,12,21,55,49,84,93,13,64",
        "69,28,87,19,35,77,67,39,62,97,23,24,99,66,74,55,88",
        "35,77,67,54,39,62,97,23,24,99,12,74,55,88,47,49,84,93,59,53,13",
        "37,96,69,26,54,62,97,23,24,99,74",
        "14,93,15,68,13,46,57,27,59,52,64,75,84,43,86,18,47,78,37,49,94,31,61",
        "93,59,53,13,64,46,68,57,86,43,78,75,94,27,14,61,37,96,69,33,28",
        "67,84,54,19,99,49,62,77,93,66,47,97,74,79,12,35,23,59,21,31,39",
        "23,24,74,88,59,64,86",
        "74,55,88,47,31,49,84,93,59,13,64,46,68,57,86,43,15,18,78,75,94,52,27",
        "69,26,75,94,86",
        "93,55,78,47,15,74,52,21,31,64,18",
        "23,24,99,66,12,21,74,55,88,47,49,84,59,53,13,64,46,68,57,86,15",
        "97,67,55,96,74,87,82",
        "35,67,54,39,62,23,24,99,66,12,88,47,49,93,53",
        "39,97,23,24,66,12,74,55,88,47,31,49,84,93,59,53,13,64,46,68,57",
        "74,55,88,31,49,93,59,13,64,46,68,57,86,43,15,18,78,75,27",
        "24,66,12,74,55,47,31,84,53,64,46,68,86,15,18",
        "15,14,93,27,75,43,53,28,13,69,18,33,57",
        "68,15,78,52,96,69,33,28,35",
        "64,86,18,94,52,27,28,26,19",
        "18,78,75,94,52,27,14,61,37,96,69,33,28,87,82,19,79,35,67,54,62",
        "77,24,88,47,31,59,64",
        "47,93,59,53,13,46,57,86,43,15,78,52,27,61,37",
        "26,82,19,79,62,23,24,66,21,74,88,47,31,49,84",
        "52,68,27,18,78,94,28,43,87,75,86",
        "55,47,31,53,78,75,14",
        "46,57,86,43,15,94,52,27,14,61,37,28,87,19,79",
        "96,69,33,28,87,26,82,19,79,35,77,67,54,39,62,97,23,24,99,66,21,74,55",
        "28,79,35,24,66",
        "53,86,18,33,14,78,96,37,46,69,27,57,64,52,43,13,28,61,59,93,68,15,94",
        "43,15,18,78,75,94,52,14,61,37,96,69,33,28,26,19,35,77,54",
        "62,33,87,37,69,67,26,74,12,39,28,35,23,97,19,79,24",
        "79,35,62,23,21,88,93",
        "87,82,19,35,54,62,97,24,66,12,88,31,49",
        "53,64,46,68,57,86,15,18,75,61,37,96,28,87,26",
        "43,15,18,78,94,27,14,96,28,87,82,19,79",
        "66,12,21,74,55,88,31,49,84,93,59,53,13,64,46,68,57,86,43,15,18,78,75",
        "87,62,88,35,47,24,28,26,66,33,23,99,67,39,97,79,19,74,77",
        "31,52,49,78,59,57,21,84,86,18,15",
        "15,18,78,75,94,52,27,14,61,37,96,69,33,28,87,82,19,79,35,77,67,54,39",
        "64,93,13,84,49,43,86,47,74,12,68,59,23,21,15,88,57,66,24,99,55",
        "77,67,54,97,99,12,21,55,88,49,84,59,53,13,64",
        "35,67,54,97,23,66,12,21,74,55,88,47,31,49,84,93,59,53,13",
        "43,33,37,77,54,96,18,94,75,52,14",
        "26,79,67,39,97,23,66,12,21,74,55,88,47,49,84",
        "62,93,64,86,46,21,47",
        "67,54,39,62,97,23,24,99,66,74,88,47,49,93,59,53,13,64,46",
        "31,93,68,75,94,14,96",
        "94,14,61,96,33,28,87,82,19,79,35,77,67,39,97,23,24",
        "99,66,12,21,74,55,88,47,31,49,84,93,59,13,64,46,57,86,43,18,78",
        "37,96,33,82,39",
        "79,35,77,97,99,66,47,31,53",
        "49,84,93,53,13,64,46,68,57,86,43,18,78,94,52,27,61,37,69",
        "18,78,94,14,37,96,33,26,77,54,62",
        "74,55,88,49,59,13,64,46,86,43,18,75,94,52,27",
        "93,59,53,46,68,18,78,14,96,33,28",
        "75,94,61,69,33,28,87,77,67,54,23",
        "97,47,24,31,68,12,54",
        "13,46,68,86,43,15,18,75,94,52,27,37,33,28,87,26,82",
        "35,87,26,33,96,18,78,15,61,54,69,39,67,94,75,77,82",
        "78,94,52,14,28,82,79,77,54,39,97",
        "77,62,49,59,53",
        "87,82,77,67,54,62,66,12,21,74,55,47,49",
        "68,57,43,78,75,94,52,27,37,33,28,87,26,82,19,79,35",
        "12,31,84,47,24,66,13,93,67,97,21,35,55",
        "86,43,15,75,52,37,96,33,28,87,26,82,79,77,67",
        "14,61,37,96,69,33,87,26,82,67,54,39,62,23,99,66,12",
        "47,31,49,84,93,59,53,13,64,46,68,57,86,43,15,18,78,75,94,27,14,61,37",
        "62,24,99,66,12,21,74,55,88,47,31,49,84,93,59,53,13,64,68,57,86",
        "39,79,69,77,75,82,78,15,18,37,61",
        "39,21,28,54,77,82,88,74,87",
        "69,33,28,87,26,82,19,79,35,67,54,39,62,97,23,24,99,66,12,21,74,55,88",
        "86,43,15,18,78,75,94,52,14,61,96,69,33,28,87,26,82,19,35",
        "66,12,47,49,84,59,53,13,64,15,75",
        "46,68,57,86,43,15,18,78,75,94,52,27,14,61,37,96,69,33,28,87,26,82,79",
    ]
    
    func parse(input: [String]) -> (Set<String>, [[String]]) {
        var rules = Set<String>()
        var pages = [[String]]()
                
        var rule = true
        for line in input {
            if line.isEmpty {
                rule = false
                continue
            }
                        
            if rule {
                rules.insert(line)
            } else {
                pages.append( line.split(separator: ",").map { String($0) } )
            }
        }
                
        return (rules, pages)
    }
    
    func dowork() {
        let input = input2
        var result = 0
        
        let (rules, pages) = parse(input: input)
        for page in pages {
            var valid = true
            
            for (i, p) in page.enumerated() {

                if (i > 0) {
                    for j in 0 ..< i {
                        let prev = page[j]
                        let curr = p
                        
                        if (rules.contains("\(curr)|(\(prev))")) {
                            valid = false
                        }
                    }
                }
                
                if (i < page.count - 1) {
                    for j in i + 1 ..< page.count {
                        let prev = page[j]
                        let curr = p

                        if (rules.contains("\(prev)|\(curr)")) {
                            valid = false
                        }
                    }
                }
            }
            
            if valid {
                let middle = Int(page[page.count / 2])!
                print("Valid: \([page]), Middle: \(middle)")
                
                result += middle
            }
        }
        
        print(result)
    }
}
