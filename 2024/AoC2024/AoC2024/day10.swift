//
//  day10.swift
//  AoC2024
//
//  Created by a on 10/12/2024.
//

class Day10 {
    
    let input1 = [
        "0123",
        "1234",
        "8765",
        "9876",
    ]
    
    let input_test = [
        "10..9..",
        "2...8..",
        "3...7..",
        "4567654",
        "...8..3",
        "...9..2",
        ".....01",
    ]
    
    let input2 = [
        "89010123",
        "78121874",
        "87430965",
        "96549874",
        "45678903",
        "32019012",
        "01329801",
        "10456732",
    ]
    
    let input3 = [
        "101987698323656762989721011010987456780121243210",
        "234012567210547891078892012101072345891030984569",
        "142103454345432012367743423232161654322345855678",
        "051054965236701103456656894343450783210496764789",
        "962167850149896543245765765456980892108587053298",
        "873076701056787600130876554967821876549652142103",
        "954987432165634512021989478876782965678703234012",
        "765876541074328763145672369805493454302212547654",
        "896968953981019854236981054012349854211243478943",
        "657857762876567610765100340101238763210798545692",
        "765446891001498723834232215293045678189877632781",
        "802335432312387654923341004382167669012368701020",
        "911124701421019870110056905673458978975459345210",
        "320099876598943065232167810569898963287561276349",
        "456787756787854104343054321678107854196510389458",
        "329878941012763210454988934521256981075431343367",
        "019561030323678923567867141010345410987123454321",
        "878432321410589854543252012367894322346001067800",
        "965678798523470189630141043454387011055432108912",
        "234309657631063238745632658965296545765443297983",
        "103210545432154127030745667870101239812344589854",
        "123451236943061032121836789654320149801256678765",
        "018760147858978945412921078761012456789107967810",
        "569676546567167656503832099908901327898798856921",
        "678989432100016987434512187819832010145610765430",
        "567010498761221498729603456520743016234431254321",
        "154321343254330327018777895431654327652342341232",
        "034501656189945012310689765432343678541056540765",
        "127652783076876763423676543087652589230767439856",
        "098743692105677894534589832198101450121858921045",
        "769878901234786765109689101265012376543929012234",
        "878963210121099889278770125654321289012210430123",
        "987654323452016776308765210787430100101121522434",
        "670122014560125655419654354896508921089037611078",
        "549831009871234534328323763011017632176548902369",
        "038742789965676548933214892182126543210423098454",
        "125653656234987837654300321099234304321012167823",
        "034564540165832921020311456788765015698143456910",
        "321078939874981021011232321001298923789874301501",
        "012981543403876120102345409876387654301565217652",
        "565470034512985433201456912345401543214321438943",
        "678321127621076894398567810126918754265410521032",
        "099128938902345765487656787637829662178345621001",
        "187019878213765496567678698540134543089210782789",
        "236520569347874385438569187687238956745432893610",
        "945431450956901276329430056796549875856721894523",
        "876532321876101301210321149823456721949890765434",
        "765321012765432340343434231012545430132101256545",
    ]
    
    func num(input: [[Int]], pos: (x: Int, y: Int), reached: inout Set<String>) {
        let current = input[pos.y][pos.x]
        if current == 9 {
            reached.insert("\(pos.y)_\(pos.x)")
            return
        }
        
        let N = input.count
        let M = input[0].count
        let neighbors: [(x: Int, y: Int)] = [
            (pos.x - 1, pos.y),
            (pos.x + 1, pos.y),
            
            (pos.x, pos.y + 1),
            (pos.x, pos.y - 1)
        ]
        
        let inside: (Int, Int) -> Bool = { x, y in
            x >= 0 && x < M && y >= 0 && y < N
        }
        
        for n in neighbors.filter({ inside($0.x, $0.y) }) {
            if input[n.y][n.x] == current + 1 {
                num(input: input, pos: n, reached: &reached)
            }
        }
    }
    
    func dowork() {
        let input: [[Int]] = input3.map { $0.map { Int(String($0)) ?? -1 } }
        
        var result = 0

        for (r, line) in input.enumerated() {
            for (c, n) in line.enumerated() {
                if n == 0 {
                    var reached = Set<String>()

                    num(input: input, pos: (x: c, y: r), reached: &reached)
                    result += reached.count
                }
            }
        }
        
        print(result)
    }
}
