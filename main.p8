pico-8 cartridge // http://www.pico-8.com
version 33
__lua__

#include decoders.lua
#include zarchy_engine.lua
#include game.lua

main_update = nil
main_update_draw = nil

function _init()
    game_init()
end

function _update()   
    main_update()
end

function _draw()    
    cls(0)
    main_update_draw()
    print(stat(1).."   "..stat(0),40,1,6)
end

--13656 bytes for heightmap
__gfx__
ffffa1d852e8010c5019013a5051a14a525101ba60e852e8012c50f8013a5051a1a2a2f3b9525101ba60e85209012c50b8014a505161a2a2f3e399525141ba60
d85239017c50018a505161a2f2f3e399525151ba50c85259015c5051015a505151a2f2f3f3a95268018a509852a9011c5068012a5068a1b268a3a95268016a50
61a22a01eb509801f95088a1f2f3a2a2e8a1985278015a509a01bb50c801d95088a1a2f3a29219a1885278013a50ba018b500901a95098a1985239a178526801
3a50ca016b5029017950a8a1885269a1785268012a50ca015b505901495098a1985279a1885268011a50c911d8014b5098a1c801095098a1a85299a188526801
0a50990100d8013b5088a1a2d801d85098a16852c801685078a1885251512a506901785098013b5068a16852c8018850a8a1a292f801985068a178526801f950
e801195078012b5068a188521aa1a292f801c8505151a8526801f950c801495051413b5068a1b852e9a1a22901d85068a1885251511a50c801fc5068a1e852a9
a1a23901f85068a1885251510a50c801fc505151395279a192290129505151a85251510a50c801ec5068a1395239a192f80189505151a8525151f950b801ec50
68a17952e8a192e801b9505151b8525141e950b801ec505151da52d801d9505151b8525141e950a801ec505151da52b801b95098a1b8525141d950a801ec5051
51ca52a801b950b8a1b8525141d9509801ec505151da528801c950c8a1b8525141d9508801fc505161ca527801d950c8a1b8525141e95078010d505161ba5268
01e950c8a1c8525141e95051514d5051a1ba5251510a50c8a1c8525151f95051013d505161e8f2a95251511a5068a1195251510a50016d505161d8f2e3795268
01e95068a1295251511a408d505161c8f2f379526801e95068a129525151df5051a1c8f2f369526801e95078a119526801bf5051a1c8f2f3a329527801e95078
a119525151ef5051a1c8f2f3e319527801e95088a109525151ff085051a1c8f2f3f309527801f95078a119525151ff085051a1c8f268a3c85278010a5078a119
525141ff08505161d8f2f3e3d85278011a5078a109525141ff18505161e8f2e3e85278012a5078a109525141ff18505161e8f2a3d85278013a5078a109525141
ff28505161d8f2a3b85288014a5078a1f8525141ff38505161e8e2d85278015a5088a1e8525141ff38505161d95278017a5078a1e8525141ff485051a1c95268
018a5088a1d8525101ff485051a1b95268019a50a8a1b85251016940db5051513a505161c9525141da50a8a1a85251015950019b508801d95078a1a9525151fa
50b8a1885251014960929b50b8016950c8a1a9525141fa50b8a18852510159a092014b50d801095009a1b95251410b50a8a18852510159a0a26b50f801b85049
a1a95251412b50a8a17852510169a0024b502901785059a1b95251413b5098a17852514169a0023b5078919aa1d85278a1a25251416b5078a168525141cc5098
a1924aa1985209a19251419b50515188525141bc5098a1a252d9a1c85229a1925141ab505151885251018c50a8a1a2a299a1095249a16801ab50516178525141
6c50b8a1885219a1295269a16801ab505151785251415c50b8a1b852d8a1f852c9915151cb505151785251514c50a8a1ca524901105151525101ab5068a16852
51412c5098a1aa521901885051615151bb5088a1a2a27801fb5088a1aa522901a850519151419b5098a168525151fb5078a1ba521901c850519151419b5098a1
68526801bb5078a1ca52f801e850a8017b50a8a178525151cb5078a1ca52b8013950a8017b50b8a1685268018b5078a1ca5298016950a8016b50c8a178525151
9b5078a1ca526801b950c8013b50514168a1885251517b5078a1ca526801c950c8012b505151105151a85251416b5068a1ba528801c950c8012b505141105151
a85251516b505151da528801e950b8011b5051510078a1885251514b50515129e289528801f950c8010b50514100505161985251514b50516119f2a349529801
1a50b801fa505141001068a1885251513b50516109f2e33952a8012a50c801ea505101001078a178526801fa50516109f2f3495288015a50b801da5051416850
68a178526801ea505161f8f2f3a3195288016a50b801da505101785078a168527801ba505151f8f2f3e3195288017a50b801ca505101885098a1a29298019a50
5151e8f268a309526801aa50b801aa505101a850c8a192a8015a5078a198f288a3f8526801ca50b801aa505101b850f891a8012a5088a188f298a3e8528801da
50b8019a5051f850c901e950b8a178f288a3d852a801ea50c8017a505101f850b901b950c8a198f2f3f3f852b801ea50d8016a5051012950a9018950d8a1b8f2
e30952c801da50f8015a5051795099014950e8a11a52c801ea5019014a5051b95069011950e8a12a52c801ea5039013a5051f9503901d850f8a13a52a801fa50
69012a50411a501901c850d8a15a5288011b508901ac500901b850b8a15a5298011b50a901ac50f801a850a8a16a5288012b50b8a192c801ac505151525141b8
5078a18a5288012b5098a1a2a2d801bc5051a15151b85068a19a5288012b5098a16852d8019c5051a168016850510b5288012b5088a19852e8017c5051a16801
00105151fa5278014b5078a1a852f8016c5051a168010088a1ba5288015b5068a1c85209014c5051a15251411088a1aa5288016b5068a1d85209013c5051a152
51411088a19a5288017b505151095219012c5051a15219a17a5298017b5068a1f85219011c5051a192f8a18a5298018b5068a1f85229010c5051a192d8a19251
510a528801ab5068a1f8523901fb5051a1a2a9a1a9529801bb5068a109523901eb5051a1a2c9a179529801cb5068a129522901db5051a1a292b9a149528801eb
5078a129521901cb505161d85249a109529801fb5078a139521901bb505161d85289a19852b8010c5088a129522901ab505161c8526801105a012c50a8a11952
19018b505151e852514168501a014c50b8a1095219016b5068a1b85251519850e9015c50a8a1295209015b5078a1b8525141b850a9018c5098a13952f8014b50
78a1c8525141d8506901cc5078a14952f8012b5088a1c85251011950f8011d5051517952e8011b5078a1e85251019f5051a16952d8010b5078a1f85251019f50
51a17952c8010b5068a1095251019f5051a18952b801fa5068a1195251019f5051a18952b801fa505151495251419f5051a1a9529801fa505161495251419f50
51a1c9527801ea505161595251419f5051a1d9526801ea505161695251018f505161a8f2e3d8526801fa505161595251018f50516198f2f3a3b8526801fa5051
51595251018f50516198f2f3a3b8526801fa505151595251419f50516188f2f3e3a85278010b505151495251419f50515198f2f3a3985268011b505151495251
419f5068a178f2f3a3785278012b505151495251019f5068a178f2f3985278013b505161395251019f5078a178f2a3885278013b50515139525101af5068a159
5278014b50516119525141cf5068a1495268015b50516119525141df5068a1395268016b5051a109525141ef5068a1295251519b505161f8525141ff185068a1
195251519b505161e8525151ff285078a1095251519b505161d8526801cc505141ba5078a1f8525141ab505161c8525151dc507801aa5068a1e8525151bb5051
61b8526801bc507801ba5068a1d8525141bb505161b8525151dc508801ca5068a1c8525141cb5051a198525151cc50a801da505151d8525151db5051a1985251
419c50d801ea505151c8525141db5051a1885251518c50f801ea5068a188525151eb5051a1785251517c5009010b505151a8525151eb5051a1785251514c5039
011b50515198525151db505161785251513c5049012b5068a168525151db505161685268010c5039015b504901cb505151a29298010c50b8a168016b503901bb
505151a2c801fb50b8a15251518b50390100107801aa506901eb50a8a19268018b50390150c8015a507901eb5088a1a29268019b506a010a50a901db5088a1a2
926801cb505a01c950e901bb5088a1a2a27801fb500100d90189501a01ab5078a178525141495001fa50c9013950b901505151ab5078a178525141595051fa50
e8a1529801e850c901001051519b5078a18852514159505101ca50b8a168527801a850d901685051417b5078a188525151795051da5051610952880100000a01
985051416b5068a198525141895041ba5051512952a8112a01a85051415b5068a1a85251418c5068a11952ca01c85051414b5068a1a85251418c5068a139529a
01e85051413b5068a1b85251417c5078a149526a01095051512b5068a1b85251517c5078a198f2f388521a01395051511b5078a1b85251416c5078a198f2f3e3
8852c90179505141fa5078a1b85251516c5078a1b8f2f3e398527901a9505141ea5078a1c85251415c5078a1d8f2f3a368525901e9505141da5078a1d8525141
4c5078a1e8f2f3785239012a505151ca5078a1e85251014c5068a109f2785229016a505141aa5078a1f85251013c5068a1a95209019a5051419a5078a1095251
010000d801ca5068a1a952d801da5051419a5068a1195251010029019a5068a1a95298012b5051418a5068a12952c9017a5068a1b95278014b5051418a505151
5952d9016a5068a1a95268017b5051417a5051615952d9015a5068a1a95268018b5051416a505161985288a152d9013a5068a1a95268019b5051516a50516178
52c891e8a1685251514a505151c9526801bb5051415a505161a2a209a15288a1985251513a505151c9527801cb5051414a505161a25219a1795251512a505151
b9527801db5051514a505161a249a1795251511a505151b9527801fb5068011a50516169a1895251410a505161a95278011c5068010a501901005151b9525141
e9505151a95278013c5051512a50f80100105161a9525141e9505161895288015c5051412a50c801685051a199525141d9505151895288017c5051011a50b801
785051a1a2e339525141d950516179528801ac50413a50880188505161a2f3a319525141d950516169528801bc50415a505141b8505161a2f3a309525141d950
516159529801cc50518b505151a2b2e319525141d950516149528801dc5051415b505151a2a2f3a3e8525151d950515149528801ec5051515b50515168f2e3d8
525151e950516139528801ec5078011b50515188f2f3a398525151e950516129528801fc508801fa5068a168f2f3e388525151e9505161295278010d50a801ea
505151a8f2f3a368526801c9505161195278011d50b801ca505151b8f2f388526801c9505151095288011d50d801ba505151b8f2f378526801d9505161f85288
011d50e801aa505151c8f2f3a3a2927801c9505151e85298012d50f8019a505161c8f2f3e3a2526801c9505151d852a8012d5019018a505161d8f2f3a3a27801
c95068a19852b8012d5039016a505161f8f2f3a2925151d95078a18852b8013d508891a8015a50516109f2f3a2525101a95098a1a292f8013d5088a1b8015a50
516129f2a292514199501a014d5088a192a8014a5051619952510169501a015d5088a1a25298013a5051619952510149501a016d5088a1a2a2a8014a50516189
52514119502a015a5001ca5098a1685288013a5051518952ab017a5001ba5098a1885288012a5078a149526b01ba6001aa5098a1a85278013a5069a1a2a2ea01
4b5001aa5098a1a85278013a5089a1a2529a017b50019a5098a1c85278013a5079a1a2927a017e50a8a1d85268014a5079a1a2a24a019e5098a1e85278015a50
59a1a952b801ae50a8a1e85278017a5039a19952a801ce5098a109526801aa5051010010516199528801ee50a8a1095278016b5051a179528801fe5098a11952
78015b505161795278010f50a8a1295268014b505151795278011f50a8a1295278013b505151695278011f50a8a1395278012b5068a1395278011f50b8a13952
78012b5068a1295278012f50a8a1495278011b5078a1195278012f50a8a169527801fa5078a1195278013f50a8a169527801fa5078a1095278013f50a8a17952
7801ea5078a1095278013f50a8a189527801ea5068a1095278014f5098a199527801da5068a1095278014f50a8a199527801ca5068a1095278013f50a8a1b952
8801aa5068a1095278013f50a8a1c95288019a5078a1f85278011f50c8a1a25261495288018a5078a1095268010f50d8a1a2525151295298016a5078a1095268
01ee50f8a1a25278a1f85298015a5088a1f8526801be5009a1a2a2b8a1e852a8013a5088a1f8526801ec50e801685019a17852b8a1d852a8012a5098a1e85268
01cc50daa17852d8a1c852b8010a5098a1e8527801ac50caa19852e8a1c852c801e950a8a1d8527801ac50baa1a85209a1b852c801d950b8a1c8527801ac509a
a1c85219a1b852c801c950b8a1b8528801ac508aa1c85239a1b852d8019950e8a198528801bc5009a1a2a2b8a1f85249a1b852d8019950e8a188528801bc50f8
a13a529811b8a1a852e801795009a1a2a2b801cc50d8a12a52b8011098a1a852e801795009a1a252a801dc50c8a11a52c80100a8a1a852e801795019a152a801
fc50a8a12a52c801000088a1a852e80169501a010d50a8a1e952e801785068a1a852e80169500a011d5088a1e952f80198505151929852e8016950f9012d5088
a1d952f801b8505161628852e8015950f9012d5088a1c9521901b8505161629852d8015950e9013d5088a1b9521901d85051a1a18852c8016950c9014d5088a1
b9521901f8505192b852b8016950b9014d5098a1a952190109505192b852b8016950a9014d5098a1a952190119505191c852a801695099015d5088a1a9520901
49505161b852a801695079016d5098a1a952e801795051a1b8529801695069017d5088a1a952c801a95051a1b8529801695059016d5098a1a95278010a5051a1
b8529801695039017d5098a1a95278011a5051a1b8529801695029017d5098a1995298011a5051a1b8529801695019017d5088a1b95288012a5051a1b8529801
6950e801c95051014b5088a1b95298013a5051a1b85288017950c801c95051515b5078a1b95288015a5051a1b8528801895078010a5051514b5078a1b9529801
5a5051a1b85288014c5078010b5088a1b95288016a5051a1b85288014c50d801aa5078a1b95298017a5051a1a85298013c50f8017a5088a1b95298017a5051a1
a85298013c5019014a5088a1c95298017a5051a1a852a8012c5029013a5078a1d95298018a5051c852a8012c5029013a5078a1c95298019a5051c852b8012c50
29011a5088a1c9529801aa5061b852a8013c5029011a5088a1c9529801ba00ffffffff184068406840ff8940ae40ff5a40ff2d40ffff4a40984009406b40ffd9
50f840ffbc409b40ab40ffd950ffff9e409d4068402c403940ca4069409c401b4000407b40ca40ff8c40ffde40ffff0d406e40107840d840594068406840ffa9
408940394059408a404b40ff39400040f840194001ff7a40ffff3d40400040ff6c40ff7d407c40f940ffff2a40ff0c40ff6b400940c840ffcb403e402940ffc9
409d400040406840ff8840ad40ffdf40ffffff9940be40ff5f40ff5b40ffae40f940ff9d409d400940ffb94010ffff5d40ff7b40ff5f40ffffcc4068401e40f9
40be406f40ffde40ea400001b940bc40bf405a40ec4000000110ffff79408d40ffa840ffbe40ca404b40ffa940ff6a40cd40aa40ae40c84039400c40000001bf
40de406f40ffe84068509c40ffdc40ffff8c40ffff0a40d9406840eb40ffff0840000001ef40ff9c404a40d9407940ff5f40101e40015c40ff3b40ff4a40ff19
405d40ee40cd40ff784000013d404e408c4040ffb840ff2e40000001bf40cb40b940ff9a40000041ff1a406d40ffffff28400f40d840ffff0c409940bb40ffa8
40ff9d40bc400d40dc4010b840ffff1f402b40dc40ffff7b40ffac40ffbf40ed40ff3e40ff0e50ca40ad404d40fa405b403b407d40000140bd40aa406840ffff
ff2940ffcd40fffff8409b400010ff4b40ff0940000001ff09400d406840ff38505940ff6c40ffff9840ffffffff4940b840aa40ff8b40ffee40000001ff3a40
3f403940ff3c4069406840ffffffb840ff1a404d40c840fffffffe407940bb40a940ff3840ff8a40ffbd40de40ce408b40bd40de40d9406840ffffffd840ff8c
40ff6840df402a40ffff7c40000001000001ffffffe940ffffff7f40fc40ffeb40ff6f40e840ffffffdd40fffffd40ff8a40ffffed40ffcb40ff0d40ffff7f40
ff09409940ff5f40cb40ffff8840000001000001ffff0d50ac402c40ff1a40ffff6840ff5c40ed40ff1940409c40ffff5940ab40ffff5d40ffff4e409b40ffff
de40ac403940ff4840b8401e406840fffd402d400010ff0b4078407a40ff5d40684000103f401c408d40d8406e40cc4098403940ffff2840d9401e40ffffff28
40ff1a400040b8404940a940f840ff0840ff18404e402a40b9402f40ff9b408a40ff3940ee409e406f40ff4840b8409f40ff0a40ffff5a400940ffff7840ff6a
4000000129408a401b409d40ffffa84001a8404f40ff4a40ffffeb40ffffd840ef40794078403b408840ffff1840ff1c40ff5d40b840f940b840ffff7b403940
ff6a40ec40ffc840ffac404a40494000012940a940a8407840ff1f40ff8d40ff2f40fffffc405e40da400040ffbb40ffffffe8408840ffffff6b409840c94088
40ef40000001ff7e40ffffff0b40ff5940ffffffff7940ab408840ffaa40fffa40c840fe40a840ffffffab40fd40ffffffffffea40ffea40ef40d8407d40ea40
0c406840ff9840f840ffff3f40fffff840ffb840ff3e40ffff0d40a840ffcb40ff3d40694068405d409840ffffffffff0a40ff1e40ffff0e408840ff39405d40
c940df40d840fffffffff840ffffffff3940ab40ff1840ff9840ae401a409940ff4d405940ffff2840ff1b4068406d40ff0f404c40ffffcd4069405940ef403f
408b40ffffff9d40a840ffff3d406e402d40ffffff3c40ffffe84000106b40eb40ed40ffffeb40ffce4079406940da405f40bc40ff0940ffea40bf40ff8d40bd
407840ff8c40ff3c40e84049403b40ffffff8d401b40ffffffe940f840ff4f40ffff884068409840ffffac401d401d407840ffffcb40ae40ffa9407840ff3840
6a40ffd940eb406a40ffd940db406840ffaa4078400d406840ffff2b00b130005050a030700050000000500030a00000005000509160a05000c0405060001020
3040708090b05000001090000000505000a00000401020308050000010