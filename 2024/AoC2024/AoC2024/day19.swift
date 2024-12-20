//
//  day19.swift
//  AoC2024
//
//  Created by a on 19/12/2024.
//

class Day19 {
    let input1 = [
        "r, wr, b, g, bwu, rb, gb, br",
        "",
        "brwrr",
        "bggr",
        "gbbr",
        "rrbgbr",
        "ubwu",
        "bwurrg",
        "brgr",
        "bbrgwb",
    ]
    
    let input2 = [
        "rwgw, ruwgb, urwbr, wu, uurbubr, gbbr, uwwb, rubgwu, wggwbwr, rugubuww, uw, rgru, rgrr, rrg, rbb, uurbrww, br, uwrwrwgb, bwbw, wgbu, wggu, urg, ugr, ugur, gurrbrr, ubgrruu, bb, rburguu, urgg, wggugggr, brww, bwwgr, wugub, grgg, ugw, grubw, gbwru, rww, wbu, ggwbu, ugurw, ggwb, uubuwgb, bbugw, rgg, wurr, bwbb, wburbb, rbrb, bbrwgw, gwbb, ubggr, gurr, rrr, rburg, uug, bbrubu, bwgu, gwug, guw, buwurgw, rruwggg, ubb, wwb, wbrg, wgr, wgrw, gubrr, rrwru, gbub, rbr, rwr, rubwu, ub, bgwr, gu, ggggwrbr, wrw, grg, rbuwu, bgbr, ugww, wrg, brwub, gruu, gbwbw, wubw, wur, grggwb, uuwuug, wug, rruuw, wgwg, uww, gbgu, rurr, gwguu, gwrwbw, guuww, rbugw, gg, uwbw, ubgrubur, wurrb, rgugurr, wrr, buggb, urwrb, ubuu, rgu, gwggb, uuu, uub, bruubb, bww, uwgb, rrubwg, ubwu, ugu, buwrrbwr, bbr, rbrww, ubuwg, bwwrr, gbwg, bw, gguugu, bgbbw, ggb, wrruuwbr, rug, uur, rgw, gbb, wuwg, r, guug, gwb, wbgr, bbbw, grwgwr, gwg, rurur, bubu, rguu, brb, ugbbbrr, wugrrr, bbw, bbru, bgrbubg, ubw, uruu, wgrgrwwr, bbwrugu, gbbbwur, rubbwbuw, wuwrwbu, brwbru, wub, rbrg, wwbwrbu, grbbu, ubbbwb, urw, gwuw, uu, urwugu, bgw, gw, rbwwwurg, gubr, bbu, rur, rburwgr, gwwgr, gb, rbur, rbw, ug, wurur, gbbrrb, ruuuwugr, wwrgug, gbrugu, wrww, wuwbgw, uwwwgrgb, gww, grwwu, ggu, rrurr, bgr, ubugwu, wwgwur, urrrbw, bwr, wrbgbu, wrwbb, gug, bwu, ruurw, rw, wbb, bbwgwrr, wgg, ugwu, wr, wwwr, w, wbwbuw, guugg, bug, bbbb, brbb, brur, rbg, wuu, wurwgb, rru, urrrbugr, grr, rubu, uugrwbb, bgbrurr, wgw, gub, ugwwgr, urwr, wbwbg, wrrb, rwrgg, ggwgrgw, bwbu, uwb, rg, urr, brrur, wg, u, bu, ubbbrw, brgbbbbu, wgrgu, bgb, ubu, uugubg, bub, rwrr, gggbrw, gwwrww, grub, urgrgw, bru, wgwgb, wubrg, ugrwwbb, wbgwrru, gbwb, wugu, uwwwg, ubr, gwr, bguwb, guwbw, wrb, grw, gwwgbb, wbwwr, grbwub, ubg, bwbgw, rwu, uurb, rbwgur, ubbr, grrr, ubwg, rgwuug, rgb, grrbub, bwb, uwuuubg, wrugb, brurub, wurg, urur, uru, bwwrrr, urwub, uwr, brr, ggg, bbg, bgg, guuruuu, ubwb, uburgbb, gbgrgug, rbwr, uwu, rwwbuugr, ubwwg, wwr, brg, wruububu, bgbb, ww, wrgbu, ugb, gru, bbwgbr, brw, bwwbb, wbr, grbg, wbbb, brbrwwbw, gbgwrrub, wwu, wgb, rruruu, wuggr, urb, bwg, wbg, rbu, wwg, wuw, wrbbugg, rb, rrgrbrg, guu, bwwugr, rwrb, gwbrb, wrugub, ubbrwu, uggbb, ggr, wwru, rgbb, bbgbgrr, wuruw, gbg, ubbwrg, bur, wuwuu, bgu, ruwgur, gbu, wwuwb, ggbgg, ugrbb, bugw, rggrb, rrw, rgwru, ubru, grbbuw, wbrr, wruu, ggw, wbgguuw, rggrugw, gbgwwg, gwwru, gur, rr, wbgb, burbwr, rggu, wgwu, rwuug, gwrbr, wbbwbgb, wurb, gbbuggg, gbbgbg, ur, ugwwu, wgu, bg, urrbgr, gurwg, bbb, urrr, bwurbrr, gbr, gwurb, ugg, uwbbrr, buggr, rub, bwrgbw, uwbb, ububggw, uuwrbbu, rrrwr, ruwgub, bugb, wwrw, gwbg, wwwrrr, urgggwb, gwuwr, www, g, wgrg, wbuwb, grwrg, uuw, wuwgb, buru, rgr, rrgu, urbgb, wgrr, gbuwww, rrgrgw, rgbrg, gugbuw, rrb, rrgbug, ugwbrgw, rwuw, grugrrbr, gbgww, ruw, wubb, gr, ruu, ubbg, brgurb, rwg, gwu, ruwr, grb, uwg, wgww, bgbbrww, buu, rurbgr, rwbw, gwwr, rwwbbugu, grgbr",
        "",
        "rubbgwuwbrwgrgrgrbrbbubgbggrbwrurwuggggwrbrgwbrrwb",
        "urwgurrubuguruwuuuruwbbgrbbuwrbwrruuuubbuububuubrw",
        "gguurrubwbuwgrbrrurrgbgburbrrurwbrrrubburuggbbgb",
        "rgbuuwwwgbbwgurrwurgwgrgrbbbuggwgwugbrwb",
        "rwggurbrgwrrwuururwwubgrurwwrubgguububururwb",
        "ggrgrruwwwgrwuubgrggbbwrrgbrwrwgwwububrubguurggbrwbg",
        "ggurrgrggwrwruuwrbrgbrubrbuggugwgrwgwurbub",
        "wwwwuburrwbwugguwuwgwwrbggbwuwuuuuruwwurbwurgbwbggrr",
        "urburguuwwwgrbrbgbbgbgrbgbubguugwubugwgrruuuugbbbbgubggu",
        "guurrgwububururwgugrguuubrwrguurbuuuugrgbuwru",
        "urwuwuuguwwwgrgbuwbgubwuwuurwuwggbwgubrbrguurrgrwb",
        "bwwbbwuwbubgrbbgwuubrrbwgbggubbrbbwrwuuuguugwrwbub",
        "wwwguwbgrrgbrgggwrgwuuwwwgwgwrgbrbgwgwruuruguubruug",
        "gruuwuwbugubrwbbubrubgrruubuwugurbggrrbbbbg",
        "wurubbwuggrrurbwwgrwubgbwguurbrwgwwwgrwuuuggwbguwwr",
        "ggbguwrwguguwubgurgggrguuwugbuwbwwgwburgbwwuwgbrwbub",
        "gwugrwruguwuugubbbrubbwbuwwwrgburrbbguwbgbgwrwb",
        "grgugwwrgggbbbubububwuggrrgwruwrubwbrbbgwrwrggbuwrururrrrg",
        "guwgggwrwrggbgwrrubrwburbuuububrbwrrrgurwugwggr",
        "wuwwugwrbbuuburuururuwwrggbubwwugbuwugbburrwuwbubgbw",
        "ugbggwbgurubbwrgwgggggwggrruubrgrwrgugwwgurrrbwbrwwur",
        "wurubwrrbbgruurbbgurbbubuggubrrwwgbgwrwuuuwrgwbbrbw",
        "rwwbruubgwrrugggwubgwwubwruuwggwrbwwbbrrwb",
        "ugwgbguggggwwbwgwwuggurbwwgrbbuwurugwwrrrgugburruwb",
        "brrrugbwrwbwwurbgbwwuugrbwbrgwgrgrbgrurwgwurgwruuguwbrurwu",
        "rruwrrbgubguurwwugurrgrwbbuuwuburrbwwbbrggwuwr",
        "uuwrburgruurrbuwwguurwbwwbwggrbubrwuuwuuwrbbg",
        "gbbrrwgggbwwggwgwuurubrrurgwgwgbwgubwggrrbggug",
        "wrwuggugbrwuuubbgrbugubbgurgrrburgwrbugrwb",
        "bbbwgbuwbgrgggugrugwwwbwgrrbbbuubuguuugwburrrwrggwrrruwug",
        "urbwwguugwrgbrrrrrrrbbwggrrubwgwugbbbuurugggrg",
        "uugrugurbbruubwgbwbbbwubbrbbgwuuuwggwwwuubrrrwuwubrgrbrw",
        "wbrugrwrwrrgugwugrrugugwubugrrrwbrwbwrggbwurrbgubgwbgbbgrwb",
        "uwwbbubgrrrurgwrbgurugwbbrbbburggguugbwbrbgwbubuwbbgubgwg",
        "rrbwbrbruwurwbwgggwrguwbbubuwuwurwubgwbwwgbubggwbbubbrbr",
        "wwrwggbwwwrgubwrbwuuwbuuuwbrgwwrbrbrguruwrwbrrgrugb",
        "wwbwrrubbbgwurbrbubwwbbbgbrbgbwbbuggrurbrwgwbubguurrwrwwb",
        "rwurrgwuugrubggwbuubrbuwrggguwbgrbbgrgbbuwggbgwrbwgwbuuru",
        "gwrrugbuurgrrwgbggwggguwwrrbgrbwwrrgwwbwubwbwrgbrgbgwwbgu",
        "brrrwbururwwrwwrrgbwbubgbwgrgwwruuuwgugrwwrgbubru",
        "uugbwguruwuwubburrgbbgbbrwrrbubuguugwgwwbw",
        "gwburgbrwgwwubugrrrbuwugrbbwrrguwrbgbbgrggggbwuuwwgwgbww",
        "rwwwbgwuubugurwbwururgbwbwwrwubgwuuruurbwbwgbwwbuwgg",
        "bwwwbuwwrwgurbbwbguwwgwubwuwgwwubbwwwuwuuubbwr",
        "urugrwggbbrburugwggbwbbuubbrbguuggwurgbrbbbgrbwuw",
        "bgrbrbgbgwrrwgugbubbgbrurwrrgbwbbgrwrwbwwb",
        "gbwubwgurggwbbgwwgbrrubguwgwwbrgwgrgwwwgwwbruwrwbuurwb",
        "wuuwrwrbugruurrrrgwurguggbgwubugrugwwuguwwruuwbrrrwwruggb",
        "ugrugbrrwuuwrwuguggwwgggubuwrrbwrugwwuugwbburrbrwb",
        "wrrggbggbrgurbwguurugbwgrgwwgbwbgrbgwrbrwb",
        "bugubbrwbuwugwwrwbgwugbuuubrwbugwrugggbwwrbgbwuurgw",
        "bwrrwbrruuuugugggwgrgrwwrwwgwwgrbggwruwrwwwgrurwgggwbbw",
        "gwwuwbuwwgwuurwwwgbruwuugruuwrgbbwugwbbwbguguw",
        "uwrwwrurwwuwwwuwuubbbwbbrrwwbrrgbwbwggwgwruurrwb",
        "rguuugbrbgrbwbbrwuuwwubwrrwggrwrgwwrgwuubwgbbwubbwbgbrruwu",
        "gbgrgrwgbbbrwgubugwwuuwrrgbwbwgbwuwrugrbururbwrwrwbubrr",
        "ruwrgurgguuurrggrurbuurubrbbguwbbrrbuuuwrgrwb",
        "guurwgbwrbuurrrbugrbgbbrurbubbuugrgbwugbru",
        "uggbgwrrgrrubgbbgwubwurgbbugububwrwbrgwbbbwwrwb",
        "gwwgbbrrurbwwwrrrbruurbruggbrgwbgurbrwggwbrgurbbbwubbuw",
        "wbgrwbuguguwrbbuurbubgubwgwwbrrrrbugurgggbbgb",
        "buurgwggbbwgrrbruwuwruububuubrrbrrwrgbwbbwbwwururbgurbrrgrwb",
        "rbgggbwrugrgwrwgwurggbrbgwgwgwwrbubbrwrbbuurugrrgwbrggbu",
        "grrbbbwwguwbruwggwruwurrgrbgwubbubggwuugwubuwrrugurwb",
        "rrbububbrrbbuwwuuwggbbwuwuwwrwgwwgwgrburbgrgrw",
        "uuurugrbrrgwbrrggurrbubbuwguwuwgrurwbrbgwurwurw",
        "rwubrwbuuuwbggrbwrwgwwrgrbrrbbwgrrwrwrrgbruggwwwgbbrwuuwrg",
        "bburuwbugrggrwggrwbgbbuurwubuuugrbrrwgwgbrggrgggwbuuwbwbuw",
        "wrbrbugwgrbuwrubwgwuwugbrgbwrwrgwururwrrrggrgurrwb",
        "rggrbururgwuuwgbuwuwrruguugwbgubuwrubuwbrggbggbggrwb",
        "gwurbruwrrgrrwbbwuwbgwrgwubbbuburrgbwrwrwb",
        "urbrugbrwurgrgbrruwrbbrgwbrrbrwurbbbugwuugrwguwr",
        "brrgurwwrguuubrggbggwwbgbgrrwwbburwuwrrwggbwubrrbggugubu",
        "rwgwwuugbwrwrguwrrbrgwrurbwurrggwuwuwbgwgwwguurgrwb",
        "guggggubguggwugbgbbwwgurubwugrbwgububbggbbrwb",
        "wgwrguwggbugwwgrrrrwgwwwwrwwubgugwugbwgwggubwubrwb",
        "grwwgbrwbubbwrwwwubugbgrubuuwbgurwurrugbwrgrrr",
        "uugwwbuubggggruwugrurguwwwbrggggggrwwwrbrgugu",
        "rgubgwbwurrguwgwburwubgrgbubbrbrruugrugbgrwwru",
        "wbwwrubbbguggwbuugrgwguruuggurwggrrbruwbwrgbuw",
        "rgugbrwuurrrrrurubrrgguuwbrrwruggubbbubgbwguurburggbrwb",
        "rbuuggwwurwuuwgubgrbrruwrburugurwuubbburrguuruwr",
        "rwurwrbbubgrwgggwwwbruuubwrwuwuwgrgbrgrgbugwrubrrbwbwbwrwb",
        "gwrgbggrwrgbbbuuggbgrrgrrrruurbrwuugbubgbwur",
        "rrurrwuuwuguuwbububrrwugbwuurbbgguwrwrrgrwwgbrggrburwg",
        "ubruwgwbrubwrgbbrbbubggggwrggrgwbgggbgrburuwrbbrurgrgbbww",
        "wrwgubgbwruugwubbggwugbgwwugwrbruuuwrwbbrrrru",
        "rwubrrgbwrbgrbrwggugbbuugrguruwwwugrgurwb",
        "wrgruuwrgguwwbrurbbugbrgruwrgrwggrbwwbwbgwrbrwubwubrwb",
        "bggwugbrbwbgugwuwwurrwrrrwrgrguwuwurwguggwbrrbugrwr",
        "ugubbwurburwrrbbbgwrbgwuwgbubrrgwgubrubrgrbb",
        "gbwuggwruuuguurrwuurubrbwwbbwwuburgwgwurbbubg",
        "uubwugrgburwubbbuururrwrwrgwurbwrrwurrubrwb",
        "urbrwgwbuugbrwgbugggbbwwbuguuubbubwbguuubgbrrbububrru",
        "rrbwwwbgrgwgurwwuwrbgwrwgrruwbgwbgugurwgrbugrbgbrbruw",
        "ugrwbgrbrburugwbgugwugurrgwgrgwwrbgguwgrwrwb",
        "wwbgbrgrwgggrbrugwwrwrbgubgrwguwbwubwwbgguggbbrgugbugrbbr",
        "ubrwgwuwguwbwgguugrrbwuggwubbwwrrurbwruwbuw",
        "gubrwwrbbrwwbuugrbwwugbgwwbbbugwrgbwbwwbwguggb",
        "rurwgbbggugrwbubugrrwugrubuwwwwrwububgwwrwgwbr",
        "wgbbrbbubgrrwwwgugugurbrubbuwbgwwwgwwgwrbwbw",
        "ubgubwgwrwbuubgbbgrwbubugbbbrugrgwurubwgubguwugrrbu",
        "gruuuwggwwwguwwguubggbguguuugwugwwgugwrwb",
        "wrwbrgbgurwgbrbgurbbbggrbgwgubwbbggwrbwgbbu",
        "bggubwbggbgrrrrggwbwbbgrguurrrggwbgurgrgwbuwbwurg",
        "wuwbggrwwwbubrbwgrgrwgbrurggwwwubwwgwgbwuwwuguuwwgggbb",
        "rwrugrubggrbururrwuwurbrwbuuggrbrbuugrwubbruggrbwuuru",
        "wbrgggbwgrwwubbbguuuugrburubbrbrrrwubwgwguu",
        "wrugrwruurrbwwwurggwbbwbuggrbwuruugwrburrwb",
        "rburbbrwwrwgwbrubgwgwrwgrbwurgubuguwwwruuggbbuwwwggrwb",
        "gwuugurgwwwrwwgbrbwwugwgurwbbbrwuwwwgrgbwbbgbbgruwgwwgwrb",
        "rruwgbbwwrugugugrwubgrguguuwggbrrbrbubbwugurbgbubb",
        "uuubwuburgrrwuugububuuwwrwrgbwbbgwgubwwgwgubrrbgbruggbu",
        "wgrwuruuurwwbrwbwgrrwwrgurrbubwrwbgwrggbrrgugbuu",
        "ugwbrgbbbwrgrgwbrguwrbrrgggbbuubgwbwgbgrwbrrwrrrgbrbgg",
        "rgrggguuguwgbgrgrrgwrbbwbgurrrgwbwwguwbgggrbugugrbrurwb",
        "bbwuwgrbbbbwrbrgbrgbbbburgruggrrrrbwrbbrwb",
        "wbwuuwrruwggubggbgwbwwbggwbgbrrruggbwrrrbrwrb",
        "wuubruggbruggbwbwuuugwrrwuwrgbwwbwuwwwrrgwrr",
        "uwwgrbuubwbwbbrwburbrggburubwgguuwbwgbwburggwrgbrwb",
        "ggbrubuwuurubruuubrbrgwuubguwbgbgwrrubrrrwb",
        "rwgbbburwggwwgbbbrruuurbgrgbggrbgruuggbrgggg",
        "rwwbwgwgwwbrbugbuuwbgggggwgrurbgrgwgwrgbbbuugbbgruwgwwwbg",
        "rbwubbwuugwggrruuuugbruwwwwuuuuurgbgwwwgwbggwgbrurww",
        "rwguwwrgugrbuwrwwbbugurrrwubruwugbrwubrwrgrbggbgr",
        "ubbbugrbugrwgwggbwugwwbgwguubugbggbggrbuuwwbbbbbwr",
        "gburuuwbrwrguwbrubgbwgruuwrwgbrwbrwwgwbgwggw",
        "ggwwwguwgbuwrggbugurrrwwwrbrrbgurbbbgbruwrwwrbgrwwbuugrwb",
        "rgbgrbrrubwuggruuwbgggwguuwwwrrrwuwrrgrubbbgrr",
        "uwwgrrbugrrbwgggwuruwuuwggwbgwggwrbbuwbrrruubuguwugbrurwb",
        "brwruwruwggrrubrwugbgbwwuggggruubrruugbgurrgwwugrurbrr",
        "rgbbrrrbubrgbbbuuggruuurguubwgwgrwwgrbbwruwwb",
        "rrbuuwgbuwwwbggrgbuurrbwwbwbwbrwwubuurrggrbg",
        "urgbuwuwwugbrbguugbrbbggwggwgburgwgrwgurrbwwgrbbgw",
        "uubrrugwggwgwbgbbwggwrrwbruwbrwuurgwwugrwgrwg",
        "rgrguwguwrgwwgruggbwwbugbruubgurgrwuwrugbbggbuwrrggrwuug",
        "uwubrubgbbwrgbgugwwwwwubwwubrburbbuurgwrrbwbubrbw",
        "rgrbbwggrbgrrggrgbububggwggwwwwbrubguwgbuwbruwgugrgwrww",
        "bbrwwrwgbgbgbrwwubbrgwuruwbrbubrrburuurwb",
        "uuwgwgubwwbburwgrrbwgwrugrbwwgbggrurgwbuwru",
        "uuggrgwuguuwwrbwrbuwrbrbgbuburuwwbbgbggbbugwwbu",
        "bwbgwgwbrbbbwwbwrwgwbwgurggguwugrubrubrbrbuwwuugubru",
        "uwuwrgwuubbruurbbbururrurrrbrwggbgbbgwrbuwubgbrrgwuurwb",
        "bwgbbrgbbbbuugurgrburrrugbuubgbbwwwwgbuuwuggbgwguubb",
        "uubwbuurbbwgbrgruwbugguguwbubbgrgbbgwbubggrrbwrwb",
        "rrrguwbgwuwwbrrwrrwguwurbgbrburrwgrrburgwbbrruwwrrwbwrb",
        "rruguburbgwgrgbguggggrugrgwbwwbwrbggwwgbruwuwrwwbubgburgr",
        "rurgbwbugrbrgbgrurruwbubugubbgwuubgrwgrwwwgwbwrwbbwb",
        "bbgbwggwgbbwbuugrrubbubgbrbrgubrugugrwbrwwbg",
        "gwgugbburwwwwgbwwubwrwrwuurruuwuwwurugrrrgb",
        "wwwrrrgruwrrrwuubwbrrurwbwrwrwbwggggrrbwuwggg",
        "gbwrwguguggbwwrrbwgwwbwgbbbgwbuwuwrgwwrgbwuurb",
        "guguuugbrbgruwbwbubwurrwggrubruwwggbwwubguub",
        "uubbrubgrwwwuwrwgugbwbgurgrbbrugbrurguwrwwbbuguuuburwb",
        "gubbuuuuubbwubgrwwguruggrbrgrrubuuuurrwrwb",
        "uwwgbgrgrbrrgrguwgubuuwbwgguwbgurbwugbbrgguw",
        "buwbgrggwwubrgrggbwurubgrbuuuwurrbuwurbbbbbrubgbrbuwwwrw",
        "uwbrrbbwwruurgrrgrwruruwuubrgbrwwgwbugrbbrggrbwwbgrrwb",
        "rbwgwbrguubbbugwguwrgrgbggbrruggrwubrwbgbwwuuwrrgwg",
        "rbrbbgwggwuuburggwwrruruuruggwubruwwbrurubwbu",
        "rbubuuurbwrugurggbwwbugbguuuuuwrubbguwrwb",
        "bbwbubwrbuwgubguwrwrwgbgrrwwruurwwrbugrrurwb",
        "bbuguurruwrrbguuuugwrguubwuubrbggrwubgugbwbwrrurugrugrwb",
        "gbuuwurrbrwwrubgurbuubugrrbwubuurwuwwwgbbgbrwbrrrubggrwbgwb",
        "grggrugrrbruuwbbbrrugbbbbuwbrwurrwgbwbuwrwb",
        "bguurbwgwgbgbgrgrbbwgbbwubbwggrbubrwrbrubrbrgrwbburwb",
        "grrrbrrwubuuggrgrurruuwwubwuuwubrrbburbrwwggrwgurgwgggwr",
        "wbgubuuubwuwbrububrbwgrugrrbrrwbugguwwuuugu",
        "rrgwgrguwruwgrwwrbgrgbbbbbwrgbugbggbrrwb",
        "gwbrrgrruurwurburwbgrbggruuurbrbwubguwgrrburbgwwwu",
        "bwwbugbruwrrguubruwbruuwrrwuwbruwgrwgwruwurgrbgurgruguwbg",
        "brgrrbururwguwbburgurgrggbgubuwgruuuurbrrrrwugg",
        "uwrbugwwrwuwgwwbuugbuurbwwbrwwrgrbggbgwwwrbrbwrrubbgrugw",
        "uuggwbwrrwgrruwgggbggbgbubgwgbugwwrggrgbrgrururgugur",
        "bwwwrugrrgbggbggbwubburrgubgwgwwrbwwgwbgurw",
        "gburbuurwgbwgwwgggwbguwuwruububuwububwuwbgg",
        "gbwggbgguwggbgwwrurwggbuburwrrgrbgbbuwuuuwrggwggwb",
        "gbbwwwgbgwurgrbbwbgguwrwrggguwbugwbrgbwurgwuwgrrug",
        "rgbugwrgugwbbbgggrwgwubbbwuurbrbrwbrgrwuurwgrg",
        "ruwbuwurgwbuwrrrgwbrwrrruwwgggwugbwwrgruwgwubbgrwrrrwu",
        "brrbwbbgwwwuururbrbuuwwwuguwwburbrurwuwgbwrbuubrbbww",
        "rrrwrwugurubugbubbgwgrggwbbggbrugwbwrbggburgbrwr",
        "ubrggrgbgwgruggrgrrwbruubwrrurubrbgwrwbggbrgbbrgwbbbr",
        "ggrbbggrurbrbruwwugwrbrwrrbwgbrwwgubwrbrrgrbbwwwruwggww",
        "wugbrbgwwwwrbugbwwrrburuwrbruruwuuuurbuwwwbgrgbrwb",
        "bbgbgruurgbubburgwruwgrwuuubbwbwgugwbrbuuwwgurrurgwwrrb",
        "wwburbbgbwurubrbrurwwgrwgubbgwbgrguuugurbwuwbuwuwuru",
        "bwrgbuwrrrbubbwugbbrrgwgrbbbuguugrwbrurwrugguubbrubuggrwb",
        "rgrwugwgbuuwubwrguuburuuuwuwbgguwuubggrrbugrbugwbgwwubwwbb",
        "wbwrgurwrwrgggbbgggwwrbrbgurggubbbgrgbwbug",
        "rbwbuwgurbbbgwuubwbgrwwubwbbwbgggwurbbbgbuu",
        "wbburugwgrwwwgwwrwrbubrwuwrbgbwgbbwbrrbwbubbwbruubgrug",
        "wrwggwgwwuuubbgrrwggrguubrgurrwuurubwurggwbrbbbugwuuwubwgu",
        "bggrgbruwguurrurrbwuuwgugbrbwbuwwgwrgurggwburbbwgbuw",
        "wwwbbugrrwwbrbwwgwububbuggrgrurggrwgrurruggbburwwgwurwb",
        "rbrrwubgrwrbrbrggwwrurrwbwrurbwgbubggbrrrwwrwb",
        "wuburwgwrwuwggbwwrgwwwugbwbggrurgbrurruwburuugwrwb",
        "gwbwurbrbuurgwwbuuurrubbbrbwgruwuwuuuugwgbbb",
        "wguwrbrbrgbbbggbggbgbgwgwbrggbggwguwurwwbbwbrrrrbwrwgrwb",
        "wwwbruruubrurbugrrwwuburubbguwwrrbbwbbbrgbbubuwrurugr",
        "brurrgggruwgrburwuggugrrbwbuuwbwuubgurwubruwrgwurbrwb",
        "gwrruuwbrbwwbbbuwbwgrgubgggggwubgugubrbgugwuuburubugruwu",
        "uubwruurruwwbrwburwggugggrguuurrgbbwbuggbwbuuurbgrwb",
        "ggwrurbgrwgbbbruuurbbuubrwururgwwbuuwgrgwrgbubugrbrrgg",
        "gubrurubwbrgrwwgggwwbwwguubbgggbggwbwwrguwrgwuggr",
        "rwwugrbggburrrrbgwwgwgrurbbrguwrrbbbruwubgrgbrrwb",
        "bgrrrbbgrguwgwwgurwwwrwugwwgrgrrwwguugbbruruuuwburbbuur",
        "gwrgubrbubbbbrggrrbgwuwwbgbbuubugwgrwubgbbr",
        "bwwwgwguwrrguruugwwbwgrgrwwbbwbrrgwbburuubbugbbrgggw",
        "wburrbwwgubwbbwrbrgrwrbwugwuwwgwuugwwwgurgrguwuwgrgruu",
        "wggrrrbgbgwurwrrwbrubbwbrwgrrwuugbrwwuwgruwwurw",
        "rrbwggggurwrbwrrwubbrrurwwgbbrwuuwrruuwbrwb",
        "ugwwwrbrbugbgrbuwbubwuggbwwugbgwrrwurrrwrrbgwrub",
        "gbwgguuguuuugwgbuubggwuwbgrrbrbgwwbgugguruwrwggwwrwgwgu",
        "wuubbbugwgrugububgrbgwugrurruwbwrbggwbgbbgurgrgbw",
        "gwugwbbrwbwgwrwbrgurbwuwuugrrrbwwrburubgwrwwbbg",
        "wwrgrrbubbuuwwbuwgrrwrrgggguwrrubbugrgwwbbug",
        "gwubbruruuuwbbgrugbbbgbgwurwgwgwbwbwugggugbwuburwb",
        "grgwgwrugugbgbwwbwubgwgbrgwguuwrrwwwugbgwgbgwruwwrwgwwrwb",
        "rwrggugrwbbwgbubuwuwrrrgguguwrggbwbbwrrwb",
        "rbgbwuwbwrbbwbbgugwgbbbwbrrrugwbrbubgruburwgwrrwb",
        "wrrgbbbbwwuwgrgrrrbgurugbuwuubrgbgrbbbrrwb",
        "ggrbwgwgrugrbrrwgugwguuwubuwwrugbbwwbbwuwggwuu",
        "rwuuwwbugruwrruubuwuruuwubrugwrrwgruwrwrubbruruuwwg",
        "rwrwuwbuwugbubgbbrguwgubuubbuwbwbgurubggbgubgwu",
        "ugrrrruuwruuguwggubguwwwgrwuuwrwugwruwgrrbbw",
        "ggwgwgurwrggrrwgwruuguwrugubrbuurwwruwbgrgrwb",
        "rwbrrwuwbbbgbrrbwburwbbgbggwbbggwggugggrrrwbugg",
        "ugbruwrruwgrbwuggrwwbruwwubrurrggbubgubugbgruugrrwb",
        "wwwuubbwubwrubgubwrugrurbugguurburrrrwgguwwuggugurguwurwr",
        "bwwbrruwbugbwguubbgggbrwbbrurgwbrwgggbgugbbgrbww",
        "brgbwwubgubguwugwwuruubggwwuuwgwgwggbbwwbubbbggu",
        "rbbrbbrurbuwwwguggguwgwggburbggubuwwbrbbubruuwwbgbru",
        "rwuuugbwgwuugurbwrrwwbugbggbuururrbgwbwuuurggrurbgwbgggrrwb",
        "bbgrgwwugwbwugggbugbgubgbgwbbuwrruurbwurwrgwurwb",
        "bgwgguuwggrbbugbgwwwrwurrrbugrgguugrbgwbgwgwggruwwggwwgrwb",
        "urrwggrubuwgbwggbbuwwbwbbwwrrgwrwbgurwurru",
        "uwwbugruuuwggrrrrrbrrrbrurgwrrwwrrwbwbruwbbbuggwuu",
        "wrururubbrugbggubggrbruuuubuubwuggggwwwubbwbbwbgbgbbgurwb",
        "ubrubrbrgugurbuwrwuuwgbgwwrrwrrbbgwgbwruwrrrggggr",
        "rbwguruwbgbgbbbbubbrrrugrruggurwwgrrrbrwb",
        "rurgwubwbwgubwrbgguugrruururgwgbuwwurgugww",
        "bwugrgruugguguwbgrbbbwuuwrrgwrrwrrubgrbrgbrggbww",
        "rrgwbrwggbbgrggugurwgrgbrgwgbwrruwgwggwgrwuwrwbburwwbu",
        "uurbwggwubwgwwguwbbgwwggugrrruggbgwbrrgwrr",
        "grwbwbwrgrwrrubbbgwgrbbwrbgrurwrguwwwwggrbwbrwubbwrggr",
        "gbuwbugrgubbrrbwwrbgwuwrwrbrbrwwbwbwrwuurrruurwb",
        "ubrwurrrwwrbgwwgguubuwwgwbguwggurwbbgrugwbbrubug",
        "rbugbwbguwggwwrwbbgwwuuruwwbrububbrurbubrgwwrbugugwbubggru",
        "uuguruubgwwrrrwwugwurbgwbubrgrurrgwuuuuuggwbgrwbugu",
        "gwwbugrrburuuwbwwbbugguubuuwwbuwbuwgubuwbruuugrgurgbuuubbw",
        "ugwwgubwubbrubbrugbbbrurwgrgubgubugururgwgwwburgr",
        "uggrgbruwrrbwrwgrruurwgguguwrwrwgbrggububgwrbguwbugwwguw",
        "gruruurbgwrggggbrrugrbrgubrurrgugbbgrbgrwwugbrubw",
        "ruggggwgbubuuubbgbburuwwgbbugrwubbrubgbrgbggrgubrb",
        "wrguwbuwbrrbbbwbwrbgrrubwggbuwrrrgugbbrwbrguugrbrwgbrgg",
        "rrgrwbgurgbbrgrbgugwrgrruruuugrgrrbbrrrwb",
        "uuggrwugruuggrurbwggwgrwbwrgrbbbgbwbubugwg",
        "rwwwrwrrbgrrgrgrwrgururgwrwburubwgrguwbuwwrrugugbbrwb",
        "bbgguuwwuwbbuuwgwgurrwrwgbbrgurwgbrrbwrwbrwrbuggbwwrwrbuw",
        "wrwwbgwgwruwrubbwrrwurwubgrrwrggbbgbbbgwwbgwggrbbwbrbbgbg",
        "wgggrbrbwuwgubrguubgrguwrwuuuwbwwubuuwgbgrgbruubb",
        "uggrwrwwbguwurbbburrgwgwururgwrgruwbwuubugubrurbuubrwrbuurwb",
        "wrugguwugrgbuuwrbugrubrggggwwrbuwuurbuwruwwuww",
        "wugwrwbbbrbbbrggrwbuwrwgwwbbrbwwgbruwugwruggggbw",
        "uguurbwgwbbuuguwrwguubuugwurbgwrrbgbrrguwuwug",
        "uwwuubgrrwgwrbbrgwwwbwugbbggbuuuurgubgwugrbgurbbwug",
        "gwuwgwrrwgrwbwggugrbrggubbuburbbbgugrbuwrurrwbrwgggr",
        "wwgrugrwuguwbruwugguurguwrugubwubrbgwwbrwbrwgbwrgwrruwurbr",
        "gwgburrgwuurwburubuuwwwwgbbwbggwwgwuugrgwrbwrrw",
        "rbgwgbbruuwwugugugrubbuugggwgubrguwwgrwgrrrgwbggbuguwu",
        "rwwrrbrggruuubgruburgwubrrguwbwwgrgbwggruggwg",
        "burgwuwugwbbbgrwgrubguuwugrbrbguubwwwrbbrwbrrugubuwwguuurw",
        "gburugwwrwrrugugbbubrwrburrugrubbrurbrwwgrbbww",
        "wuubbrbubbrbuubuwuwwgbuubugbrrgrugwrgwgwwwwwwwuurb",
        "wuwgrrgwbbgrurbrgrrurbbgwuggggbgwuurwggurrwb",
        "grbbggbgrugwbuubruwrgbwrbbwuugwrrugwrggbrurbwrrurbrwb",
        "uuubbgrbwrurbwbuggbbgrwuguuwubrwgbgrrwurubbrwgggwbggrwb",
        "urgwrgbbuwwrbrrrbbrwgwugwwrgrugwbgbbgrwb",
        "wgbrwggguwwruuwwggwwrwbbbugbruwugbbbuuuwwgurrrbwwbubbwgburwb",
        "buggbbgbgbbwwwurwrwrwbruwgwbbgrruwwgruubgwwwuggur",
        "rbgbwubgbbgrurwwguwubrwubbuuggrugurubwuwgrwgubgugwguugrgw",
        "urbbgurbubwwgbbwburrrbgrbwwubggwugbrrbugwrbgubrb",
        "wbrurrrbgrgbgbwwwrwurrwbuuwrwwgrburwrrbgruggubgrguwgbwur",
        "uuururbwrrwgwbwwrwwgwgruwurrbugwrgburgwrwrbrbw",
        "rrwrurbrgubuguwurwgururugbgrbgubrgrgggurggugurgrbbuwgw",
        "rrwuwrugwwbbubbrbrwrbwbwubgubgwwgrbugwgrugbgb",
        "grwgbggwwwgwrwgruggbbgwrgwubgwrwguwgrguuuuuwgbbubgguugg",
        "rbuurugruurwuwgburwgwgugrwgwwgwwgbrrugguwruw",
        "urubgguwggurwbgrwwbubguwggbbbgrugwgrbgbrwgwrrbrbbrguub",
        "wrbrurgwbubbwbbrwbbrugwgbubrwbgrgwguwuugbgugrgbg",
        "rwuruwurgugggrgrrrugrurgggrrubguurbububugugbwurwuwwug",
        "uubwuwrwwgrbbwgrrgubwgguggbrrwuruuwuubgrwuggbgruggbrr",
        "uurbbgrgbrgbbgrgrbwwugbrrubgubgurrbbrrrbubr",
        "guguggbgggwbbwrwrbwbgggrurburgurgbbwwgruru",
        "wbrrbbuurwruuuwugrgubwuuurbrwurwurbwwbwububwbbbrwb",
        "ubbrwgggwrwbwwwrbgbrrrbrubwrgurgbbgbuuuuugbwgwgrwuwwbuu",
        "bwrbggbgrbbgubbwrrrubgwburgrgrrruurwuuggbguwbwwurrwrwb",
        "gwuguuwbruwuuggrbrrbuwurbggbbwguwwgwwbgrurrwb",
        "rrggbbgurwbbbgurbgbggubgrruuwbrbwgbrguwubbggguwbgruwwrwb",
        "uwugbwwwrbbruubwbrgbuuubbgrubururrbrrgwwbgrwgbrwruwrwb",
        "bwurruruwuguwrbuuggbwbrubbrwuwurbgwwbrgurgwuggr",
        "ruuuwugrrurbwrgrbgurbrwbrbubbwwuuwwuwwuugugbbgrbggwr",
        "uugrgwgwwgrbrubbugbgbrguwbbwwgrubbbgbgbruwugrrwb",
        "brbgbwwwbbuuugrwrugbwurrgggbwwuubwruuburrbrr",
        "wrwrgwwrwrugrwrrurbuuwgurgbrgbrwwbwrggwbrbbuugrbbwugrwb",
        "rugbbggbuggwgwwuruwrwbggwgburuubuwugbggbrbgubrwgr",
        "ubrrwuwguwwrbgwbbbrrgrggrgrgwgbrugubuwwwwuwguuurwb",
        "ruguguwuruubbwwwgwgrrrwrwwuuuruuuwuwgwubwwrwu",
        "brggrwrbrwwwuwwbwrgwbwurbuwwrbrgrrugbwugrbguuwb",
        "gwuugwuuuggrgurbbwggrubbwuurruuwrggrggurgrrwrrgbrb",
        "ugwggbgbbrrwgwrbuggurrbuugbwrurbbuggubwbgwgwuwgwrrrwubuwurwb",
        "wwuugrrggrbrrgwuuugbwbwrurrbuwwwubwrbrggubbubbgrrr",
        "ggwuubgurubrurbwgrwwuggururbrgruwgruugugrbwgrbubrbrb",
        "rwggguwwubburgwwuurrurrrgwgbrgbbbrruguwbwugguuurr",
        "rrbwbrrwbuwwbwrrbbbwwubuwgurrguwugguwrbuwuubbwuwrbggbuu",
        "grgrbggrburrbgwbwbuugugbburbrwrrrguuwbugggugrrrgrwrwb",
        "buubrrggburbggwgwgrbgurwbwwwubbwbgbwwuwbwwrwb",
        "wguuurrggwguurburgugugbrwrgbwrrwbgrugwuugbwgbbuubggrugbub",
        "wbwgruuugggrrubbwrwwubugguguwwguubwurwgwwrbgubwrgbbubrwb",
        "ruwrggugbbbbgurwggruuggwwggrwwrwbbbrwguuuuug",
        "bggwwuwgwbuguwggrgurbwugbbbuurwgwuggubgrwbwwwbwgrrbuug",
        "rrgwugbuwugubuuggbrwwguurwuwugwuuuubgrwrrwrbgrgwbuggwr",
        "grguwrrurgbwbwrgwwwrggrwbwgbuwbbbwbggrbrwbbrwb",
        "uubgbrgrwbbgwrbrwwgbgburbuurbubbguuwbgbuuwburbubggguug",
        "gwbgwrbwwwubuwwrwbbwrrrgwuwbrubwbgggubugbwwgggburrbugrgu",
        "bwgwguugggbrrbuggwggwgbrbugurbwwuuwwwugbbubbrwb",
        "rwgwbgbwwuwrbgbgwbrwuwruuubbrbwwuruwbwrbrwrwrgru",
        "wwrbwwwurggbgggugwuggubbbwgrrwrbwwuugwrbubwgrbgrrr",
        "ubrubggrgguugburwgbbrwurbrburuuwwrrbrrwwbgwbgggwugurugwwrwb",
        "gbggrubrgubgubbwwwwuwrbburrgrwbrgrwbrwguuwwuwrgguwrwb",
        "bbwgbrwggwrbwugbgubugwwuwwggbgubwubgggwwrbgrwrwwgb",
        "uubrbgbbguugrruurbrwbbuuuubbwwuruuuwbbgwbgrbwrrrgb",
        "bbbwugurwrwurgbuuugrrruubrwrgwguwubrurgburbgrrwrr",
        "gggwwgwubwwwrrbubuuuggrgrgburugbgbuurbgrugrwrgwgruu",
        "burugbguwbuwgubugubbburrgrrwuruubbrbrwwbwrburubwubbb",
        "wrwbwrbggggbgbruwwwubuurwbgwgrrgrwubwrrbbggrgbwbwbbbuwbbrwb",
        "uuurggrbbwubuwbwbwrgrbbwgrgugbrruguuugrgrubb",
        "buuugbwbbgwrgruuwrbwbgwbbrgwbrgrwruwwwgwruggrb",
        "rgwrrguwuugbgrbubgbuburgrbuuwwgbbwgurrwwubrgwguw",
        "ruuwwurgwurgbuwurruurbbbbugrubrrgwrgurgubbgbbwgugrwb",
        "urrwrwgugrrbbrgggrgubwbrwwgbgururbwruguwwrgburg",
        "rugrggruuubgguuwwwbgbgbbgugrwgurrruubrgburgrrwb",
        "ubwwrugbguwrrrbwuwggrwrwrububurbgruwbgwrbbbgrrrgggwr",
        "wuggwbgwbbbwugrbbwwubgrbwrgrgrrgwuuwgrwgwwurug",
        "bgwwbbbwrrwugwgwwrruggrbwuwbwwgrwrgrrguwgrurwgurgggrrwb",
        "guwrwubwrwwwgugguuwwurbgugbuwrrbwrguuwgbwbbgbgurrgwbbu",
        "gwugguubwruguubuguguugbuuugrrwrrrurrbwgrbwgwugburuu",
        "brwgwrbbgwurgrugggrrbbwruugrgburrwggwguwuuwrrbw",
        "bwbugwurgbgurwwrugurgbbgbuurugggwugubrwb",
        "bbbuuubggggggwrbrgbbwruwuuwugurbubgwgrrguugbwuggrubrwbwgr",
        "wgrrrurugrbgwbgbbrrgurrgwrurrwwwbgrguuggrgurwww",
        "gubbrbwurgwwbbggurwgbgrwrwbrugrwrburgrrugb",
        "uubuubgguwwbrrwwwwubgwbbwbwwwwugguguwburgbrbbbg",
        "ubgrwugugrruwuurrwguggwuwbrwbwrugruuuwrugwwuwrubuugbrwrrrwb",
        "wrgwguugruurububuurwurrwuggrrubbrrrgugwuugwurgrg",
        "bwubggubrrburbrbwggrurwrbwbgbbgwggubggbubrububrwb",
        "urugwwbubbrrwwwrbrwuwbwurwgrurbwbrurbrwrgrruburwb",
        "rruubgwwwgrwrggubgubwrbbgwgbguruwwgrgburgwrg",
        "rgugrgrbbrgwbguwgguguwrrubgwwgwgwuwubwbwrggbwuuuwrrbwgwu",
        "gwuwbwuwwbwwggbbgrgwugwrgugruuubgwguwwgbbrwb",
        "bbwuguwwwuguuuuurrbbububurbwruuubugbgrbuwgrururwb",
        "bbbugrrrbrgburgwuuruwrbwgwrgwgrugbrgububrbwwgrbrgbuwbgguu",
        "bubwuuwwuwbggrwwubruwbubbwwgwrubuguwbuuwugwrbbugr",
        "uwrgubbrrgguggubuuwrrrwrrurbuubrgbbbwgrwub",
        "wbbguubbbbguwuwbwrgwwubwrurgwurbrrwurrbgrbbburw",
        "rgbwugbubggbrbwgbuuubrwgbrruwggbbggbbuggwg",
        "rgrugbgrwbwgwuwrbggrwuburrbguwguguuugwgubrgruwwbw",
        "uuuruwuurbwubrwgwuuwbugrrwggbwwubbugwgubbrwgwwwugbwwrwb",
        "brgbguwuwggbbwrbggggbrbubbwbrwbbgwuubbbbgwrgwgbbwu",
        "uggrgrubuuuwruuurbuwwugbwwgwwguubuggubwwugrrwbggwrgubrbwrw",
        "wbburbgbbrbbggrgrrurwwgurbubwuurwwgwbwrgbguuuwrubwwubuu",
        "buwbgbrwgbubbrbrgwuwbgbrwburgbbrwgguwwbwgbwbgbww",
        "gurwggwurgwbbubbgbgruggbrbubuwbruwwrwguggrbbbrggwgbrgbgu",
        "wbwwwbbbwgruuuwubbrrgbbggwbrgwwbgurbbwgwgwgrbggwrugrugggbrwb",
        "bbgrwgruggrwwurwwrggbruugbbrgwggrrugrwuuugbrrwb",
        "wwbugbwuguwgbrwrwgrrbuwgwuwgwrbbbubwwgbrguwuw",
        "ugwbgbwrrgbwrrrbrwwguggruwugwwurwrrbgwubbwrggugbruuw",
        "bbbruuwuwwurrwbuwbuguuggurgbgbruruwurgbgbgrrwb",
        "bggwgrggrrugwwbuwgbrbbgwbbuwwuwbrgbwbggwbbgggugwggrwbbur",
        "uuurruuuuugrbuwwgrbwwuuwbruggggbgrbuuggbuuuwgrrb",
        "gbgrgubggbgrgguuwbwbrwbggwurgbwwwbrubwgwrggrbwurggrwrrr",
        "ggbrbrbguwguuugubruggbgwbbuwwrbuuugbuuwgww",
        "wurrbururbgrbrgwggwggrgrgrgbgrrgbbwwgbrgwururwb",
        "uubugrgbrubuggrggrbwbbbruwbrrwugugrurwbgwwwbubgrggr",
        "rgwwbwgbwugugrwrrwubrwbgwuwuruggbguubbwbugururu",
        "wbuwrbggrrwbgbrbwwwbbgwbwrrggubrubbwbubrgwrwburbgb",
        "gbwuruuwuwwwbggurugrwgwubbgbwwwurgwbruwgbgrbwrgurwb",
        "gwururwwugrrubbruwbuwrbgwrbruugbuuugggwbubwubb",
        "wgrgrrgwwruugbrrrbwwrwrrgbguwwgwrbgwuuwbgwuwrugg",
        "ugurwrbgrbubwbbgrwgrwrbgwbwuwubgrbuwwrubrggwuguwbgbu",
        "ugrrburuwwrrwgrugbruwgwbbubrbuwbwwruuurgbuwwgwgbwwbuburwb",
        "wurugurbrbubbbbburuubrbrrbwubguwggwubbrbrbrgurrbwwwuggwg",
        "bwrburggbggbbgbuguwbgwwbbbubugwguwbbgbgwbg",
        "gbwrbgbgbrugbbguruuwgurwwruggggbuburbgwwrwb",
        "rubrgwubrrrrrwbwbrurbwwggrrburrugrrubwbbguwbbgrwwrbburrwbr",
        "wgbuurbrrbgrugwgubuwbgurrwwuwgrbrgrbgwrwwbrururuuwrrrwb",
        "grwuuggwugwgrbggggbwbgwububwrgwgburrugurbugurrrwrwrububrwb",
        "bbggugurwurrgggrrbbrurubbwbuwbbwwbrwgrrrubrgur",
        "gwwwugwuguubuuwgbgruruwguugrbbwgbbwwgrgrwwrrrrrbuwbbwburwb",
    ]
    
    func parse(input: [String]) -> (Set<String>, [String]) {
        let patterns = input[0].split(separator: ", ").map { String($0) }
        let designs = input[2...].map { String($0) }
        
        return (Set(patterns), designs)
    }
    
    func possible_rec(for design: String, with patterns: Set<String>, from idx: Int) -> Bool {
        if idx == design.count {
            return true
        }
        
        let sub = design[design.index(design.startIndex, offsetBy: idx)...]
        for p in patterns where p.count <= sub.count {
            let toCompare = sub[..<sub.index(sub.startIndex, offsetBy: p.count)]
            if toCompare.elementsEqual(p) {
                if(possible_rec(for: design, with: patterns, from: idx + p.count)) {
                    return true
                }
            }
        }
        
        return false
    }
    
    // https://github.com/amrutha-b-nair/Advent-of-Code/blob/main/2024/day19/solution.py
    func possible_dp(for design: String, with patterns: Set<String>, from idx: Int) -> Bool {
        let N = design.count
        let L = patterns.map { $0.count }.max()!
        
        var dp = [Int](repeating: 0, count: N + 1)
        dp[0] = 1
        
        for i in  1 ... N {
            for l in 1 ... L {
                if l > i { continue }
                
                let sub = design[
                    design.index(design.startIndex, offsetBy: i - l)
                    ..<
                    design.index(design.startIndex, offsetBy: i)
                ]
                
                if patterns.contains(String(sub)) {
                    dp[i] += dp[i - l]
                }
            }
        }
        
        
        
        return dp.last! > 0
    }
    
    func dowork() {
        let input = input2
        
        let (patterns, designs) = parse(input: input)
        print(designs.enumerated().filter {
            print("\($0.offset)/\(designs.count)")
//            return possible_rec(for: $0.element, with: patterns, from: 0)
            return possible_dp(for: $0.element, with: patterns, from: 0)
        }.count)
        
    }
}
