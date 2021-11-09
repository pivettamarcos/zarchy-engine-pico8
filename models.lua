function return_table_verts(verts, m)
    table = {}
    for i=1, #verts, 3 do
        local vert = {}
        vert[1] = verts[i]  - m[1]
        vert[2] = verts[i+1]  - m[2]
        vert[3] = verts[i+2] - m[3]
        add(table, vert)
    end


    return table
end

function return_table_tris(faces)
    local table = {}
    --print(string)
    for i=1, #faces, 4 do
        local tri = {}
        tri[1] =  faces[i]
        tri[2] = faces[i+1]
        tri[3] = faces[i+2]
        tri[4] = faces[i+3]
        add (table, tri)
    end

    return table
end

height_color_map = {[0]={1,1},{1,12},{10,9},{3,11},{3,11},{3,11},{3,11},{3,11},{3,11},{3,11},{3,11},{3,4},{3,4},{4,5},{4,6},{6,7}}

test_model_v = return_table_verts(explode64('0035f0500a03',1,0), {3,0,0})
test_model_f = return_table_tris(explode64('1232243d',1, 0))

-- 1-16   env objs
-- 17-..  other objs
objs_data = {{test_model_v, test_model_f}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {test_model_v, test_model_f}, 
    {}}

object_map="40401&4107411r/10=3e/10=1+411s/20=1_410o41034111/10[2d410|/10[0u411m411n/10[1[411q/10[3d/10[1+410k41034113/10[0q411=4110/10[1;411m/10[1]411p/10[22411a/10[0o411o410l4115/10[294113/10[3d/10[1;4107411e/10[1[410h4118/10[0l411q411s/10[264117/10=1.411i/10=1;411n/10=0i411w410d4101411a/10=3e/10=1+411u/10+0a4102411^4104411i/10+1|411f/10+0g411!411p/20-1,411l/10-3g/10-04410341034133/10-3g/20_0e4132/10_3h/10_4104413b/20)0c41134121/10)3i/20(3j/10(01410c4134/20*1k411|/10z41073k/10*0b4138/20&3l/10u410841020e4118411?/20^3m/10x41073m/20%0a413c/10p410941041r411./20$0d413a/10r410b3o/20#3p/10t410809411l411>/20k410g2x410</10n410d1!411{/20!0d413d/10!3r/20o410a07411p41124105410=/10i410g3s/20y1#4117410_/10k410d0b413h/20o41083u/10x05411s4107411]/20w2#41034107410(/10g4104410a08411#411-/20p41051%411:/10t41013w/20u03412=410*/20t1y41094106410[4103410:/10f4104410805413s/20o41032,410%/10q41011:411*/20r02411%4104411e410!/10g410a1y4112410u410v/20k410504411z410i410_4109410+/20m41021k410r4104410?410l410s/10p1f411^410(/20m410101413@/10f41081z410g41044105410z4109410g410%/20i41040341164105410l4111410e410+/20m33410@/10m1c4107410z410=410t410w/20l1?410[410b410g410s/20d4106411h410)410w410+410o/20f41031f410l4104410,410f410a410*/10j03411@411)410k/20i2^410g410b410#/20h3b410y/20g411(410e4101410w4102410s410-/20841061#411}410k/10b41031*410h411[/20e16410y410?410r410a410y/10e1+410*4102411h/10e1>4103411a410%/206410441011$411@410c410n/10841040~410c410w411[4102410f/10d1&410g410t410b411c/10d2s411l/10d1:4103411r410q/105410341030>410-411=410m/10641061(411]410h/10d1a4107410$410q41034108411f/10d10412i410u/10d1;411x410p/103410341050,412y410k/10d2i410d410_410y/10541071)410^411q/10d3k410t/10d1e412y/20d0~4106410h410t410p410.410e410m/10e0}410|410^411i/10e1f410u410#410=4108410v/20e1f412w/10f1;411w410o/10f0<411l411x/10f15410i410q410$410[410w/20f1-410z410-41054108410s/10g2~410-/20g3d410w/10h0]410p412w/10h2e4109410+410z/20h0?410;410s411r/10i1=411d410)/10i0;412{/20i2m411l/10j0-410y410.410:410@/10j1}411;/20j0~410}411c410&/10k3&/20k0>410c411d410_410#/10l3&/10l1s412c/20l0.410k411=410#/10m2s411c/10m0_4107412[/10m2j4106410$410@/10n3%/10n13410k411%410#/10n2t4119/20n2/410&/10o0]4103411q410_410@/10o1u410,411c/20o3#/10p0&412./10p2t410t410&/10p1i410|411i/10q2o411c/10q12412y/10q0=412]/10q0}411$410v410%/10q1z4121/10q2j4104411c/10q1s4128/10q0^412./10q1l4116410x410#/10q3@/10q0|411k411g/10q1&410)411c/10q0[412[/10q2!410f410a410@/10q0_410_410~4118/10q2m410e410|/10q3@/10q0^4118411041034104410$/20q2z4110/10r2s4116/20r10411#410,/20s0<412%/20t3w/20u1w411i410*/20v2u41044105410}/20w0]4114411!/20x0>412x/20z0(412(/30!1-4114410z/20#14411r41014109410^/20%3l/20^3j/20*1x411e410x/20(3g/20_0~412g/20-0=4105410~411m/20=3b/30[3a/20}19410v411u/30{37/20:1w411@/20<0?410p411(/30>1+411i/10/15410a411=/20/0h410@4129/20?2|/20|1u411v/1110o412!/21117411]/3121%411h/2142>/2150a4103410-411>/2160n412u/2182{/2191f411!/11b0j4109410#410r411h/21c014115411%/31d06412%/21f09412!/11h2(/31e41022*/21j0t410v410q411h/10x410]0p412f/10*410x4105410219411u/20@410g410941094103410701410x4123/21n14411y/10=410941094105410c1f411m/11p2@/20*41064103410p41082!/20^410j4109410i0u410$411s/20!410;2z/10z410%410f0k410k410h411#/20=4104410541044105410k18411p/10%4105410_0v410w411x/11t2x/11u0a410a412b/10i410941044104410:2x/11u2x/10d410s410]2x/10n41162x/10a410q410<0c410*4108411u/20f41034109411003412s/10x410?2w/11v2w/10s410,4106411{4109410w/10n41172w/10e411g2w/10b4105411d05410v411i4103410z/11v0$411</10j4119410122410t/10c4112410641081+410-/10e411g0!41024101411s410p/11v1[4102410&/11q410424410r/10i4101410241170!4103411:/10v410#410e41092w/10g410?410g0$411a410l410o/11n41060!411//10%410{2x/10m41054107410n410k410c0#411,/10j410u410h410p2b410l/10r410d410x4102410f0%4117410+/10o41074104410s410r1[4101410i410p/10t410h410441054104410u2x/20*410q410m2y/10x4104410f410#2a4101410l/10_410b4109410o1-410[/10+4109410y2y/11t2z/11s2f410j/11s1*4104410r410m/11s"

height_map = "40401u48c7g3k2o1s2w1!1%3(8%2!2w1s1o2k1g2c3431)0w430.4cc4g3k1o2s1w1!2%3(6%3!1w2s1o1k2g2c3431)0t4481410?4bc3g3k2o1s1w2!1%3(6%3!1w1s2o1k1g3c2441)0s4284411148c3g3k1o1s2w1!2%2(5%3!2w1s1o2k1g3c2441)0r4282c182411544c3g3k1o2s1w2!1%2(5%3!1w2s1o1k2g2c3431_0q4282c281421644c3g2k2o1s2w1!1%3(2%4!2w1s2o1k1g3c3431_0p4282c282411744c3g3k1o2s1w1!1%9!1w2s1o2k1g3c2441_0o4282c282421844c2g3k2o1s1w1!1%8!2w1s2o1k2g2c3441_0n4282c282421944c3g3k1o1s1w1!1%8!1w2s1o2k1g3c3431-0m4282c282421b43c3g3k1o1s1w1!1%8!1w1s2o1k2g3c2441-0l4282c381421c44c3g2k1o1s1w1!1%7!2w1s1o2k1g3c3441-0l4182c382411d44c3g2k1o1s1w1!1%6!2w2s1o1k2g3c3431+0k4281c382421e44c2g2k1o1s1w1!1%6!1w2s2o1k1g3c3441+0j4282c282421f44c2g2k1o1s1w1!1%5!2w1s2o2k1g3c3441+0j4182c282421h43c2g2k1o1s1w1!1%4!2w2s1o2k2g2c3441=0i4281c381421h44c2g2k1o1s1w1!1%3!2w2s2o1k2g3c3441=0h4282c282411i44c2g2k1o1s1w1!1%2!2w2s2o2k1g4c2441[0g4282c282421h44c3g2k1o1s1w1!1%1!2w2s2o2k2g3c3441[0e4382c282421i44c3g2k1o1s1w1!3w2s2o2k2g3c4431]0d4283c381421i44c3g3k1o1s1w5s2o2k2g4c3441]0b4382c482411j44c3g3k1o1s2w2s3o2k2g4c3451]0a4283c482421j43c3g3k2o2s4o3k2g4c4441}084382c3g1c281421k43c3g3k3o6k3g4c4441{074283c2g3c182411l43c3g5k3o2k3g5c4451{064282c3g3c281421l44c3g6k4g6c4451;044382c2g5c182411m44c5gcc5451:034283c2g2k2g2c181421n44c6g8c6451<024282c3g2k3g1c281411o46c5g3c8461>014282c2g3k2o1k1g1c182411p47cc471,4282c2g2k3o2k1g1c181421q47c74a1,4183c2g2k2o4k1g1c181411t4k1.4281c3g2k2o2s2o1k1g1c181410.430x4g1/4281c2g3k2o2s3o1k1g1c181410.4181440v4b1~4382c1g2k3o2s2w1s1o1k1g1c181410.4184422#4283c1g2k2o3s2w2s1o1k1g1c181410.4182c182422!4282c3g1k2o2s3w3s1o1k1g1c181410.4281c282422x4382c2g2k2o2s2w3!1w1s1o1k1g1c181410/4182c282422v4283c2g2k1o3s2w2!3w1s1o1k1g1c181410/4282c282422t4282c3g2k2o1s3w2!2%1!1w1s1o1k1g1c181410?4282c282422r4282c2g3k2o1s2w3!2%2!1w1s1o1k1g1c181410~4282c282422p4282c2g2k3o2s1w2!3%3!1w1s1o1k1g1c181410|4281c382420,491j4382c2g2k2o3s1w2!2%3(1%1!1w1s1o1k1g1c18141104182c382410<4981441f4283c2g2k2o2s3w1!2%2(3%1!1w1s1o1k1g1c18141104282c381420;4886441b4282c3g2k2o2s2w2!2%2(2+1(1%1!1w1s1o1k1g1c18141114282c282420}478b43184282c2g3k2o2s2w2!1%3(2+2(1%1!1w1s1o1k1g1c18141124282c282410]4886c38443164182c2g2k3o2s2w2!2%1(3+3(1%1!1w1s1o1k1g1c18141134281c381420[4785c3g2c38342144281c2g2k2o3s2w2!2%1(2+3}1+1(1%1!1w1s1o1k1g1c18141144182c282420+4785c2g6c38243114282c1g2k2o2s3w2!2%2(1+2}2+2(1%1!1w1s1o1k1g1c18141144282c282420-4784c2g9c283430~4282c2g1k2o2s2w3!2%2(1+2}1<1}1+1(2%1!1w1s1o1k1g1c18141154282c282430)4784c1gbc383420?4182c2g2k1o2s2w2!3%2(2+1}1<1}1+2(1%2!1w1s1o1k1g1c18141164281c383420(4783c2gdc382420.4281c2g2k2o1s2w2!2%3(2+1}1<1}2+1(2%1!2w1s1o1k1g1c18141174182c482430&4783c2g4k3g8c282430>4182c1g2k2o2s1w2!2%2(3+2<1}2+2(1%2!1w2s1o1k1g1c18141174282c483420^4883c1g4k4g8c283420<4181c2g1k2o2s2w1!2%2(2+3}1}2+2(2%1!2w1s2o1k1g1c18141184281c2g1c382430%4783c1g5k5g7c382420:4181c1g2k1o2s2w2!1%2(2+2}2<1}1+2(2%2!1w2s1o2k1g1c18141194182c1g3c283420$4882c1g6k6g7c282420;4181c1g1k2o1s2w2!2%1(2+2}2<1}1+2(2%2!2w1s2o1k2g1c18141194281c2g3c382420%4781c2g5k7g7c282420{4181c1g2k1o1s1w2!2%2(1+2}2<1}2+1(2%2!2w2s1o2k1g2c181411a4182c1g5c282430$4682c2g5k7g7c282420}4181c2g1k1o1s2w1!2%1(2+1}2<2}1+1(2%2!2w2s2o1k2g1c281411a4281c1g2k2g2c283420%4582c2g5k8g6c282430[4182c1g1k1o2s1w2!1%2(1+2}1<2}1+1(1%2!2w2s2o2k1g2c182411b4181c2g1k3g2c382420%4582c1g6k8g6c283420=4281c1g1k2o1s2w1!2%1(2+1}4+1(1%1!2w2s2o2k2g1c281421b4182c1g1k1o1k2g3c282420%4581c2g6k8g6c382420=4181c1g2k1o2s1w2!1%2(1+2}2+2(1%1!1w2s2o2k2g2c182411c4281c1g1k1o2k3g2c282430$4482c2g5k9g7c282430-4181c2g1k2o1s2w1!2%1(2+1}1+2(1%2!1w1s2o2k2g2c281421d4181c1g1k1o4k2g2c283420%4382c2g5k9g7c283420_4182c1g2k1o2s1w2!1%2(1+3(2%1!2w1s1o2k2g2c282411e4181c1g1k1o1s2o2k2g2c382420$4482c2g4kag7c382420)4281c2g1k2o1s2w1!2%1(2+1(2%1!2w2s1o1k2g2c282421e4181c1g1k1o1s3o2k2g3c282430$4382c1g4kcg7c282430(4182c1g2k1o2s1w2!1%2(1+1(1%2!1w2s2o1k1g2c282421f4181c1g1k1o1s1w1s2o2k3g2c283420$4381c2g3k5o3k5g7c283420*4281c2g1k2o1s2w1!2%1(3%1!1w2s2o2k1g1c282421g4181c1g1k1o1s1w2s2o3k2g2c382420$4282c1g3k4o5k5g7c382420*4182c1g2k1o2s1w2!1%2(2%1!1w1s2o2k2g1c182421h4181c1g1k1o1s1w3s3o2k2g3c282430@4381c1g3k3o7k6g7c282430^4281c2g1k2o1s2w1!2%1(2%1!1w1s1o2k2g2c181421i4181c1g1k1o1s1w1!1w3s2o2k3g2c283420@4281c1g3k2o3s2o4k6g7c283420^4182c1g2k1o2s1w2!1%2(1%1!1w1s1o1k2g2c281411j4181c1g1k1o1s1w1!3w2s2o3k2g2c382420z4381c1g3k2o2s5o4k5g7c382420%4281c2g1k2o1s2w1!2%1(1%1!1w1s1o1k1g2c282411j4181c1g1k1o1s1w1!1%1!2w2s3o2k2g3c282420y4381c1g3k2o2s6o3k7g7c282430$4182c1g2k1o2s1w2!1%3!1w1s1o1k1g1c282421j4181c1g1k1o1s1w1!1%2!2w3s2o2k3g2c282420v4581c1g3k2o2s8o2k7g7c283420#4281c2g1k2o1s2w1!2%2!1w1s1o1k1g1c182421647074181c1g1k1o1s1w1!1%3!3w2s2o3k2g2c282430t4581c1g3k2o2s9o2k7g7c382430@4182c1g2k1o2s1w2!1%2!1w1s1o1k1g1c181421549074181c1g1k1o1s1w1!1%1(1%3!2w2s3o2k2g2c283420r4681c1g3k2o2sao3k7g7c283430z4281c2g1k2o1s2w1!2%1!1w1s1o1k1g1c1814116428641074181c1g1k1o1s1w1!1%1(3%2!2w3s2o2k2g2c382420q4582c1g3k2o2sbo3k7g7c383420z4182c1g2k1o2s1w2!1%1!1w1s1o1k1g1c1814116418741074181c1g1k1o1s1w1!1%1(1+1(2%2!3w2s2o2k2g3c282420o4681c2g3k2o2sco3k7g8c382430x4281c2g1k2o1s2w1!1%1!1w1s1o1k1g1c18141144381c58141074181c1g1k1o1s1w1!1%1(1+2(2%3!2w2s2o2k3g2c282410o4582c1g4k2o2sdo4k7g8c283430w4182c1g2k1o2s1w1!1%1!1w1s1o1k1g1c18141104581c78141074181c1g1k1o1s1w1!1%1(1+3(3%2!2w2s2o3k2g2c281420n4581c2g4k2o2s4w4s5o5k7g8c383430u4281c2g1k2o1s1w1!3w1s1o1k1g1c181410~4483c3g4c18141074181c1g1k1o1s1w1!1%1(1+1}1+3(2%2!2w2s3o2k2g2c182420l4582c1g5k2o2s4w5s6o4k8g8c383430t4182c1g2k1o1s1w2!2w1s1o1k1g1c181410?4383c4g5c18141074181c1g1k1o1s1w1!1%1(1+2}2+2(2%2!2w3s2o2k2g1c282420j4681c2g4k3o2s3w8s5o5k8g8c383420s4281c2g1k1o1s2w1!2w1s1o1k1g1c181410;44034284c3g6c18141074181c1g1k1o1s1w1!1%1(2+1}1<1}1+2(2%2!3w2s2o2k1g2c282410j4582c1g5k3o2s3w9s5o5k8g9c382430r4182c1g1k1o2s1w1!1w1s2o1k1g1c181410}47034183c1g8c28141074181c1g1k1o1s1w1!1%2(1+2}1<1}1+2(2%3!2w2s2o1k2g2c281420i4482c2g4k4o2s3wbs5o5k8g9c283430p4281c1g1k2o1s1w1!1w1s1o2k1g1c181410]49034182c1g8c28141074181c1g1k1o1s1w1!2%1(2+1}2<1}1+2(3%2!2w2s1o2k2g2c182410h4482c2g5k4o2s3wcs5o6k8g8c383420p4181c1g2k1o1s1w3s1o1k2g1c181410=4c044181c2g6c28141074181c1g1k1o1s1w2!1%2(1+2}2<1}1+3(2%2!2w1s2o2k2g1c281410h4382c2g5k5o2s3w4!1w9s5o5k9g8c382420o4181c2g1k1o1s1w2s1o2k1g2c181410+4e044181c3g4c18241074181c1g1k1o1s2w1!2%1(2+2}2<1}2+2(2%2!1w2s2o2k1g2c181410g4382c2g5k5o3s3w4!3w8s6o5k9g8c282430m4182c1g1k1o1s1w2s1o1k2g1c281410-4g034381c2g3c18241074181c1g1k1o2s1w2!1%2(2+2}2<1}2+2(2%1!2w2s2o1k2g1c181410g4282c2g6k5o3s3w4!4w9s5o6k8g8c283430k4281c1g1k1o1s1w1s2o1k1g2c182410_4i044281c58241074181c1g1k2o1s2w1!2%2(2+2}2<1}2+2(1%2!2w2s1o1k1g2c181410f4282c2g6k5o3s4w4!5was5o6k8g7c383420k4181c1g1k1o1s1w1s1o1k2g1c281420_4j044281c38143074181c1g2k1o2s1w2!2%2(2+2}1<2}2+1(2%1!2w1s2o1k1g1c281410e4282c2g6k5o4s3w5!7w9s6o6k8g7c382430i4181c1g1k1o1s3o1k1g2c182410_4l04438342084181c2g1k2o1s2w2!2%2(2+1}1<2}1+2(1%2!1w2s1o2k1g1c182410d4381c2g6k6o3s3w6!8was6o5k8g8c283430g4181c1g1k1o1s2o2k1g1c281420_4n04440a4182c1g2k1o2s2w2!2%2(1+1}4+1(2%1!2w1s2o1k2g1c181420d4282c1g6k6o3s4w5!bwas6o5k7g8c284430e4181c1g1k1o1s2o1k1g2c182410-478d450g4281c2g1k2o2s2w2!2%1(1+2}2+2(1%2!1w2s1o2k1g2c181410e4182c2g5k6o4s3w6!4%2!7was5o6k7g7c186420d4181c1g1k1o1s2o1k1g1c281420_468h440g4182c1g2k2o2s2w2!1%1(2+2}1+1(2%1!2w1s2o1k2g1c281410d4281c2g5k6o4s3w6!4%4!7wbs5o5k8g5c286420c4181c1g1k1o1s1o2k1g1c182410-458l420f4281c2g2k2o2s2w1!1%2(2+3(1%2!1w2s1o2k1g2c182410c4282c1g6k5o4s4w6!4%6!7was6o4k8g5c186440a4181c1g1k1o1s1o1k2g1c181420-438o420f4182c2g2k2o2s1w1!2%2(2+1(2%1!2w1s2o1k2g1c281420c4182c2g4k6o4s4w6!4%9!7was5o5k7g4c28643094281c1g1k1o1s1o1k1g1c281410+438p420e4282c2g2k2o1s1w2!2%2(1+1(1%2!1w2s1o2k1g2c182410c4281c2g5k5o4s4w6!5%a!8was4o6k5g5c18644084182c1g1k1o3k1g1c182410+428r420e4282c2g2k1o1s2w2!2%1(3%1!2w1s2o1k2g1c281420c4182c1g5k5o4s4w7!4%4(2%7!8w9s5o5k5g4c18645074181c2g1k1o2k2g1c181420+418t420e4282c2g1k1o2s2w2!1%1(2%2!1w2s1o2k1g2c182410c4281c2g5k5o3s4w7!4%5(4%7!7w8s7o4k4g4c18646064181c1g2k1o2k1g2c181410=418u420e4282c1g1k2o2s2w1!1%1(2%1!2w1s2o1k2g1c281420c4182c1g5k5o4s3w7!5%4(2+2(2%8!7w7s7o3k5g3c18548054181c1g1k2o2k1g1c182410=418v420e4281c1g2k2o2s1w1!1%1(1%2!1w2s1o2k1g2c182410c4281c2g4k5o4s3w7!5%4(2+4(3%8!7w5s7o3k4g4c18548054181c1g1k1o2k2g1c181420+428dce85420e4181c2g2k2o1s1w1!1%1(1%1!2w1s2o1k2g1c281420c4182c1g5k5o4s2w7!5%5(1+2}2+3(3%7!7w4s7o3k4g4c18548054181c1g1k1o2k1g2c181410=4186ceg7c582420d4182c2g2k1o1s1w1!1%3!1w2s1o2k1g2c182410c4281c2g4k5o4s3w6!5%5(2+1}4+2(3%6!7w5s7o2k4g5c18548044281c1g1k1o1k2g1c281410=4184cbggc282420c4282c2g1k1o1s1w1!1%2!2w1s2o1k2g1c281420c4182c1g5k4o4s3w6!5%5(2+2}3+2(2%7!6w7s6o3k4g4c28548044182c1g1k1o1k1g2c181420=4183cagjc282420c4282c1g1k1o1s1w1!1%2!1w2s1o2k1g2c182410c4281c2g4k5o3s4w5!5%5(2+2}3+2(2%6!7w8s5o4k4g4c18549044181c2g1k3g1c281410[4182c9gck1g9c282420c4281c1g1k1o1s1w1!1%1!2w1s2o1k2g1c281420c4182c1g5k4o3s4w6!4%5(2+2}3+2(2%6!6w9s5o4k4g4c28548054181c1g2k2g2c182410=4281c9g8kag6c282420c4181c1g1k1o1s1w1!1%1!1w2s1o2k1g2c182410c4281c2g4k5o3s3w6!4%5(2+2}3+2(2%5!7w9s4o5k5g4c18549054181c1g1k2g2c281410[4182c7g8kdg6c282410c4181c1g1k1o1s1w1!1%1!1w1s2o1k2g1c281420b4282c1g5k4o3s3w6!5%4(2+2}3+2(2%5!6w9s5o5k6g4c18548064181c1g1k1g2c282410[4181c7g7kgg6c281420b4181c1g1k1o1s1w1!1%1!1w1s1o2k1g2c182410c4182c2g4k5o3s3w5!5%4(2+2}4+1(2%5!6w9s5o4k7g4c28448074181c1g3c282420[4181c5g8k8o4k6g6c182420a4181c1g1k1o1s1w1!3w1s1o1k2g1c281420b4281c2g5k4o3s3w6!4%5(1+2}4+2(1%5!5w9s5o5k7g5c18449074181c1g2c28242010=4281c4g7k8o7k6g5c282410a4181c1g1k1o1s1w1!2w2s1o1k1g2c182410c4182c1g5k5o3s3w5!4%5(2+1}2<1}1+2(2%4!5w9s5o5k7g6c18448084181c1g1c28242020=4182c3g7k7oak6g5c28142094181c1g1k1o1s1w1!2w1s2o1k1g1c281420b4281c2g5k4o3s3w6!4%4(2+2}1<2}1+1(2%4!5w8s5o5k7g7c283470a4181c38242030=4181c3g6k8o5s3o4k6g5c18242084181c1g1k1o1s1w2!1w1s1o2k1g1c182410c4182c1g5k5o3s3w5!4%4(2+2}2<2}1+1(1%5!4w8s5o5k7g7c283450d4181c28242040+4281c2g6k7o5s6o4k5g5c28241084181c1g1k1o1s2w1!1w1s1o1k2g1c181420c4181c2g4k5o3s3w6!4%4(1+2}2<2}2+1(1%4!4w7s5o5k8g7c282430h418442050+4181c3g5k7o5s8o4k5g5c28142074181c1g1k1o2s1w3s1o1k1g2c181410c4281c1g5k5o3s3w5!4%4(2+1}2<3}1+2(1%3!5w6s5o5k7g7c382420j46060+4181c3g4k6o5sbo4k5g5c18241074181c1g1k2o1s2w2s1o1k1g1c281410c4182c1g4k5o3s3w6!4%4(1+2}1<4}1+1(2%3!4w6s4o5k8g7c283420w0-4281c2g4k6o5sdo3k5g5c28142064181c1g2k1o2s1w2s1o1k1g1c182410c4181c2g4k4o4s3w5!4%4(2+1}2<1/1<1}2+1(1%4!3w6s4o5k7g8c282430x0-4182c2g4k5o4sgo3k5g5c18241064181c2g1k2o1s2w1s1o1k1g1c181420b4281c1g4k5o3s3w6!4%4(1+2}1<2/1<1}1+2(1%4!3w6s3o4k8g7c382420z0_4281c3g4k4o4s7w7s3o4k5g4c28141064182c1g2k1o2s1w1s1o1k1g1c181410c4182c1g4k4o3s4w5!4%4(2+1}2<1/2<1}1+1(2%3!4w5s3o4k7g8c283420!0_4182c3g3k4o4s4wcs3o3k5g5c18142054281c2g1k2o1s3o1k1g1c181410c4181c2g4k4o3s3w6!4%4(1+2}1<2/2<1}1+1(1%4!4w4s4o3k7g7c382430@0)4281c4g3k4o3s4wds4o3k5g4c18241064182c1g2k1o2s2o1k1g1c181410c4181c2g3k5o3s3w5!4%4(2+1}2<1/3<1}1+1(1%4!3w5s3o3k6g8c283420$0(4381c4g3k4o2s4w8!1w6s3o4k4g4c28141064281c2g1k2o1s2o1k1g1c181410c4182c1g4k5o3s3w5!4%3(2+1}2<1/2<2}1+1(1%3!4w5s2o4k5g7c382430%0*4382c4g3k3o3s3w8!3w6s3o3k5g4c18141074182c1g2k1o1s2o1k1g1c181410c4182c1g5k4o3s3w5!4%4(1+2}1<2/1<1}2+1(1%3!4w5s2o3k5g7c283420&0&4481c5g3k3o3s2w7!5w6s4o3k4g4c18141074281c2g1k1o2s1o1k1g1c181410b4282c1g5k5o3s2w6!3%4(2+1}2<1/1<1}1+2(1%3!3w5s3o2k5g6c382430*0^4482c5g3k3o2s3w6!7w6s3o3k4g4c18141084182c1g1k2o1s1o1k1g1c181410b4381c2g5k4o3s3w5!4%4(1+2}1<1/1<1}1+1(2%3!3w5s3o2k5g5c283420)0%4582c5g3k3o2s3w5!9w6s3o3k4g3c18141084281c1g2k1o1s1o1k1g1c181420a4382c2g4k5o2s3w5!4%4(2+1}1<3}1+1(1%4!3w5s2o3k4g5c282430_0%4483c4g4k3o2s2w5!5%1!4w6s3o3k4g3c18141094181c2g1k1o3k1g1c182410a4382c2g5k4o3s3w5!4%4(1+1}2<2}1+1(1%4!3w4s3o3k3g5c282420+0$4583c4g4k3o2s2w5!4%3!4w6s3o2k4g3c18141094182c1g1k2o2k1g1c281410a4382c3g4k4o3s3w5!4%4(1+2}1<1}2+1(1%3!4w4s3o2k4g5c182420=0$4483c4g5k3o2s2w5!3%4!5w5s3o3k3g3c18141094281c1g2k1o2k1g2c181410a4383c2g5k4o3s2w6!4%3(2+1}1<1}1+2(1%3!4w4s2o3k4g4c281420[0#4583c4g4k4o2s2w4!4%5!4w6s2o3k3g3c181410a4181c2g1k1o2k2g1c181410a4383c3g4k4o3s3w5!4%4(1+1}3+1(2%3!3w5s2o3k4g3c282410]0#4484c4g4k4o2s2w4!4%6!4w5s3o2k3g3c181410a4182c1g1k2o2k1g1c181410a4383c3g4k5o2s3w6!3%4(1+2}2+1(1%4!3w5s2o2k4g4c182420]0@4584c4g3k5o2s2w4!3%7!4w5s3o2k3g3c18142094281c1g2k1o2k1g1c181410a4483c3g4k4o3s3w5!4%3(2+1}2+1(1%4!3w5s2o2k4g4c181420}0@4484c4g4k4o3s2w4!3%8!4w5s2o2k3g3c182410a4181c2g1k2o1k1g1c18142094483c3g4k4o3s3w5!4%4(1+1}2+1(1%3!4w4s3o2k4g4c181410{0@4484c4g4k4o3s2w4!3%3(1%4!4w5s2o2k3g3c281410a4182c1g2k1o1k1g1c18241094483c3g5k4o3s3w5!3%4(1+1}2+1(1%3!4w4s3o2k3g4c281410{0!4584c4g4k3o3s3w4!3%3(2%4!3w5s2o2k3g4c181410a4281c2g1k3g1c28141094483c4g4k4o3s3w5!4%3(1+2}1+1(1%3!3w5s2o3k3g4c182410{0!4583c4g4k4o3s3w4!3%3(2%4!4w4s2o2k3g4c181410b4182c1g2k2g2c18141094483c4g4k5o3s2w5!4%3(2+1}1+1(1%3!3w5s2o3k3g4c181420{0!4484c4g4k4o2s3w5!3%3(3%3!4w4s2o2k3g4c181420a4281c2g2k2g1c18141094484c4g4k4o3s3w5!3%4(1+3(1%3!3w5s2o2k4g3c281410;0z4583c5g4k4o2s3w5!3%3(1+1(1%4!3w4s2o2k4g3c182410b4182c2g2k1g1c181410a4483c4g4k5o2s3w5!3%4(2+2(1%3!3w4s3o2k4g3c182410;0z4583c4g4k4o3s2w6!3%3(1+1(1%4!3w4s2o2k4g3c281410b4282c2g3c181410a4483c4g5k4o3s2w5!4%4(1+2(1%3!3w4s3o2k4g3c181420;0z4483c5g4k4o3s2w5!4%3(1+1(2%3!3w4s2o2k4g4c181410c4282c2g2c181410a4484c4g4k4o3s3w4!4%4(1+2(1%3!3w4s2o3k3g4c181410:0y4583c4g5k4o2s3w5!4%3(1+2(1%3!3w4s2o3k3g4c181410d4282c2g1c181410a4583c4g5k4o2s3w5!4%3(1+2(1%3!3w4s2o3k3g4c181410:0y4484c4g4k4o3s3w4!4%4(1+2(1%3!3w4s2o3k3g4c181410e4282c381410b4483c5g4k4o3s2w5!4%3(1+1(2%3!3w4s2o2k4g4c181410:0y4483c4g5k4o3s2w5!4%4(1+2(1%3!3w4s3o2k4g3c181420e4282c281410b4583c4g4k4o3s2w6!3%3(1+1(1%4!3w4s2o2k4g3c281410:0y4483c4g4k5o2s3w5!3%4(2+2(1%3!3w4s3o2k4g3c182410f4284410b4583c5g4k4o2s3w5!3%3(1+1(1%4!3w4s2o2k4g3c182410:0x4484c4g4k4o3s3w5!3%4(1+3(1%3!3w5s2o2k4g3c281410g460c4484c4g4k4o2s3w5!3%3(3%3!4w4s2o2k3g4c181420:0x4483c4g4k5o3s2w5!4%3(2+1}1+1(1%3!3w5s2o3k3g4c181420x4583c4g4k4o3s3w4!3%3(2%4!4w4s2o2k3g4c181410<0x4483c4g4k4o3s3w5!4%3(1+2}1+1(1%3!3w5s2o3k3g4c182410x4584c4g4k3o3s3w4!3%3(2%4!3w5s2o2k3g4c181410<0x4483c3g5k4o3s3w5!3%4(1+1}2+1(1%3!4w4s3o2k3g4c281410y4484c4g4k4o3s2w4!3%3(1%4!4w5s2o2k3g3c281410<0x4483c3g4k4o3s3w5!4%4(1+1}2+1(1%3!4w4s3o2k4g4c181410y4484c4g4k4o3s2w4!3%8!4w5s2o2k3g3c182410<0x4483c3g4k4o3s3w5!4%3(2+1}2+1(1%4!3w5s2o2k4g4c181420x4584c4g3k5o2s2w4!3%7!4w5s3o2k3g3c181420<0x4383c3g4k5o2s3w6!3%4(1+2}2+1(1%4!3w5s2o2k4g4c182420x4484c4g4k4o2s2w4!4%6!4w5s3o2k3g3c181410>0x4383c3g4k4o3s3w5!4%4(1+1}3+1(2%3!3w5s2o3k4g3c282410x4583c4g4k4o2s2w4!4%5!4w6s2o3k3g3c181410>0x4383c2g5k4o3s2w6!4%3(2+1}1<1}1+2(1%3!4w4s2o3k4g4c281420x4483c4g5k3o2s2w5!3%4!5w5s3o3k3g3c181410>0x4382c3g4k4o3s3w5!4%4(1+2}1<1}2+1(1%3!4w4s3o2k4g5c182420w4583c4g4k3o2s2w5!4%3!4w6s3o2k4g3c181410>0x4382c2g5k4o3s3w5!4%4(1+1}2<2}1+1(1%4!3w4s3o3k3g5c282420w4483c4g4k3o2s2w5!5%1!4w6s3o3k4g3c181410>0x4382c2g4k5o2s3w5!4%4(2+1}1<3}1+1(1%4!3w5s2o3k4g5c282430u4582c5g3k3o2s3w5!9w6s3o3k4g3c181410>0x4381c2g5k4o3s3w5!4%4(1+2}1<1/1<1}1+1(2%3!3w5s3o2k5g5c283420u4482c5g3k3o2s3w6!7w6s3o3k4g4c181410>0x4282c1g5k5o3s2w6!3%4(2+1}2<1/1<1}1+2(1%3!3w5s3o2k5g6c382430t4481c5g3k3o3s2w7!5w6s4o3k4g4c181410>0y4182c1g5k4o3s3w5!4%4(1+2}1<2/1<1}2+1(1%3!4w5s2o3k5g7c283420t4382c4g3k3o3s3w8!3w6s3o3k5g4c181410>0y4182c1g4k5o3s3w5!4%3(2+1}2<1/2<2}1+1(1%3!4w5s2o4k5g7c382430s4381c4g3k4o2s4w8!1w6s3o4k4g4c281410>0y4181c2g3k5o3s3w5!4%4(2+1}2<1/3<1}1+1(1%4!3w5s3o3k6g8c283420s4281c4g3k4o3s4wds4o3k5g4c182410>0y4181c2g4k4o3s3w6!4%4(1+2}1<2/2<1}1+1(1%4!4w4s4o3k7g7c382430r4182c3g3k4o4s4wcs3o3k5g5c181420>0y4182c1g4k4o3s4w5!4%4(2+1}2<1/2<1}1+1(2%3!4w5s3o4k7g8c283420q4281c3g4k4o4s7w7s3o4k5g4c281410,0y4281c1g4k5o3s3w6!4%4(1+2}1<2/1<1}1+2(1%4!3w6s3o4k8g7c382420q4182c2g4k5o4sgo3k5g5c182410,0z4181c2g4k4o4s3w5!4%4(2+1}2<1/1<1}2+1(1%4!3w6s4o5k7g8c282430o4281c2g4k6o5sdo3k5g5c281420,0z4182c1g4k5o3s3w6!4%4(1+2}1<4}1+1(2%3!4w6s4o5k8g7c283420o4181c3g4k6o5sbo4k5g5c182410.0z4281c1g5k5o3s3w5!4%4(2+1}2<3}1+2(1%3!5w6s5o5k7g7c382420n4181c3g5k7o5s8o4k5g5c281420.0!4181c2g4k5o3s3w6!4%4(1+2}2<2}2+1(1%4!4w7s5o5k8g7c282430l4281c2g6k7o5s6o4k5g5c282410/0!4182c1g5k5o3s3w5!4%4(2+2}2<2}1+1(1%5!4w8s5o5k7g7c283450i4181c3g6k8o5s3o4k6g5c182420/0!4281c2g5k4o3s3w6!4%4(2+2}1<2}1+1(2%4!5w8s5o5k7g7c283470f4182c3g7k7oak6g5c281420?0@4182c1g5k5o3s3w5!4%5(2+1}2<1}1+2(2%4!5w9s5o5k7g6c184480d4281c4g7k8o7k6g5c282410~0@4281c2g5k4o3s3w6!4%5(1+2}4+2(1%5!5w9s5o5k7g5c1844a0c4181c5g8k8o4k6g6c182420~0o410d4182c2g4k5o3s3w5!5%4(2+2}4+1(2%5!6w9s5o4k7g4c2844a0b4181c7g7kgg6c281420|0o410d4282c1g5k4o3s3w6!5%4(2+2}3+2(2%5!6w9s5o5k6g4c1854a0a4182c7g8kdg6c28241100n420e4281c2g4k5o3s3w6!4%5(2+2}3+2(2%5!7w9s4o5k5g4c1854c084281c9g8kag6c28242100n420f4182c1g5k4o3s4w6!4%5(2+2}3+2(2%6!6w9s5o4k4g4c2854b094182c9gck1g9c28242110n420f4281c2g4k5o3s4w5!5%5(2+2}3+2(2%6!7w8s5o4k4g4c1854b094183cagjc28242120n420g4182c1g5k4o4s3w6!5%5(2+2}3+2(2%7!6w7s6o3k4g4c2854a094184cbggc28242130n420g4281c2g4k5o4s3w6!5%5(2+1}4+2(3%6!7w5s7o2k4g5c1854a094186ceg7c58242140n420h4182c1g5k5o4s2w7!5%5(1+2}2+3(3%7!7w4s7o3k4g4c185490a428dce8542150n420h4281c2g4k5o4s3w7!5%4(2+4(3%8!7w5s7o3k4g4c185490b418v42160m430i4182c1g5k5o4s3w7!5%4(2+2(2%8!7w7s7o3k5g3c185480c418u42170m430i4281c2g5k5o3s4w7!4%5(4%7!7w8s7o4k4g4c186460d418t42180l450i4182c1g5k5o4s4w7!4%4(2%7!8w9s5o5k5g4c186460d428r42190k460i4281c2g5k5o4s4w6!5%a!8was4o6k5g5c186450e438p421a0j470j4182c2g4k6o4s4w6!4%9!7was5o5k7g4c286440f438o421b0i490i4282c1g6k5o4s4w6!4%6!7was6o4k8g5c186440g458l421c0h45c1440j4281c2g5k6o4s3w6!4%4!7wbs5o5k8g5c286420i468h441d0g45c3430k4182c2g5k6o4s3w6!4%2!7was5o6k7g7c186420k478d451e0f45c4430k4282c1g6k6o3s4w5!bwas6o5k7g8c284430l4n1g0e45c5440j4381c2g6k6o3s3w6!8was6o5k8g8c283430n4l1i0c46c6450j4282c2g6k5o4s3w5!7w9s6o6k8g7c382430q4j1j0b46c4g1c3440k4282c2g6k5o3s4w4!5was5o6k8g7c383420s4i1k0a46c4g2c4440k4282c2g6k5o3s3w4!4w9s5o6k8g8c283430u4g1l0846c5g4c3440k4382c2g5k5o3s3w4!3w8s6o5k9g8c282430x4e1m0746c5g6c3440k4382c2g5k5o2s3w4!1w9s5o5k9g8c382420!4c1n0646c4g8c3440k4482c2g5k4o2s3wcs5o6k8g8c383420$491o0446c5g5k2g3c3440k4482c2g4k4o2s3wbs5o5k8g9c283430^471p0247c5g4k4g3c3440k4582c1g5k3o2s3w9s5o5k8g9c382430)441q0147c4g5k2o2k2g3c3440j4681c2g4k3o2s3w8s5o5k8g8c383422d46c5g5k2o4k1g3c3450j4582c1g5k2o2s4w5s6o4k8g8c383432e44c6g4k3o2s2o1k2g3c3440k4581c2g4k2o2s4w4s5o5k7g8c383432e4243c5g5k2o3s3o2k1g3c4440j4582c1g4k2o2sdo4k7g8c283432e4441c5g6k2o2s3w1s2o1k2g3c3450i4681c2g3k2o2sco3k7g8c382432f45c5g5k3o2s2w4s1o2k1g4c3440j4582c1g3k2o2sbo3k7g7c383421v460&47c3g5k3o3s2w2!2w1s2o1k2g3c4440i4681c1g3k2o2sao3k7g7c283431v4a0!48c2c1g6k2o3s3w2!3w2s1o2k2g3c3450i4581c1g3k2o2s9o2k7g7c382431v4f0v49c3g5k3o2s3w3!2%1!2w1s2o2k1g4c3450h4581c1g3k2o2s8o2k7g7c283421x45c24b0p4ac5g3k3o3s2w3!3%3!1w2s2o1k2g3c4460h4381c1g3k2o2s6o3k7g7c282431x45c64b0i4bc7g1g1k3o3s3w2!3%5!2w2s1o2k2g3c4460g4381c1g3k2o2s5o4k5g7c382421z44ca4zc7g3k2o3s3w3!2%8!2w1s2o2k1g4c4460g4281c1g3k2o3s2o4k6g7c283421!43c4g2c84tc7g6k1o2s3w3!3%5(1%4!1w2s2o1k2g4c5450e4381c1g3k3o7k6g7c282431@43c3g6c84mc9g7k1o2s2w3!3%5(4%3!2w2s1o2k2g4c5440e4282c1g3k4o5k5g7c382421#44c2gacxg7k4s3w2!3%6(2+3%4!2w1s2o2k2g5c4450b4381c2g3k5o3k5g7c283421$44c2g3k2g8cqg9k3o3s1w3!2%5(4%9!1w2s2o2k2g5c347084382c1g4kcg7c282431%43c3g2k6g@k4o3s2w2!3%4(3%9!5w2s2o2k3g4c347054482c2g4kag7c382421&43c3g2k1o4k4guk5o4s3w1!3%5(2%6!6w6s3o3k2g3c448034382c2g5k9g7c283421&44c2g3k1o1s2o4kwo5s4w3%7(2%5!3w6s6o6k2g3c44c82c2g5k9g7c282431^46c2g3k1o1s5oys5w4!2%5(2%5!3w3s6o6k6g5c34b82c2g6k8g6c382421o470a47c3g2k2o1s1w3s!w5!4%1%b!2w3s3o6k6gbc34983c1g6k8g6c283421n4b0549c4g2k1o2s1w1!1w#!5%4(3%6!3w2s3o3k6gcc74982c2g5k8g6c282431n4e0149c5g3k1o1s2w1!%%8(3%4!3w3s2o3k3gccc4882c2g5k7g7c282421o46c34ec6g4k1o1s1w2!1%)(2(1%5!2w3s3o2k3g9cc4c82c2g5k7g7c282421p44c749c7g5k2o1s1w1!2%^(6%5!2w2s3o3k2g6cc4g83c1g6k6g7c282421p44ca45c7g6k2o2s1w1!1%5(*%3!3w2s2o3k3g5c94k84c1g5k5g7c382421q44c3g3cdg7k3o2s2w1!1%4(*%1%1!3w3s2o2k3g5c64o85c1g4k4g8c283421q44c3g6c9g7k3o3s2w2!1%3(&%3!2w3s3o2k2g6c54e044884c2g4k3g8c282431q45c3gjk4o3s3w2!2%2(7+o(b%4!1w2s3o3k2g5c54b094785c2gdc382420$4b0&44c3g3k2gdk3o4s3w3!2%3(4+u(6%5!1w2s2o3k3g4c6470f4686c1gbc383420$4g0#43c4g3kgo3s4w3!3%4(3+6}k+5(5%5!2s3o2k3g5c5470i4586c2g9c283430#4k0!43c3g3k2ogs3w4!3%5(3+4}m+5(4%5!3w1s1o3k2g6c4470k4587c2g6c382430#47c74a0y43c2g4k1o2sgw3!4%6(4+3}6<b}5+4(5%5!2w3o2k3g5c5470m4488c3g2c383420$47cc470x43c2g3k2o1s2wg!3%7(5+3}4<d}5+4(5%4!3w2s2o1k2g5c6460j41044589c384430$46c5g3c8460w43c2g3k1o2s1w2!g%7(6+4}3<4/4<5}4+5(4%5!2w3s2o1k2g5c5460k4205448e430^44c6g8c6450v43c3g2k1o2s1w2!1%j(7+5}3<3/5<4}5+5(4%5!2w2s3o2g5c5470k41814106448a440&44c5gcc5450u43c3g2k2o1s2w1!2%g(7+6}4<2/4<5}5+4(5%4!3w2s2o3k1g4c5470k418341064585440)44c3g6k4g6c4450t44c2g3k1o2s1w2!2%b(9+6}5<2/3<5}5+5(5%4!2w3s2o2k3g2c5470l4281c1824107490+43c3g5k3o2k3g5c4450s44c2g3k2o1s2w2!2%9(9+5}6<a}5+5(4%5!2w2s3o2k2g2g1c5460m4282c381410|43c3g3k3o6k3g4c4440t43c3g3k1o2s2w2!2%8(8+4}6<a}5+5(5%5!2w2s2o3k2g3c4470n4182c481420~43c3g3k2o2s4o3k2g4c4440s43c3g3k2o2s2w2!2%8(7+4}9<3}8+5(5%4!3w2s2o2k3g4c3460p4182c1g3c181410~44c3g3k1o1s2w2s3o2k2g4c3450r44c3g3k2o2s2w2!3%6(7+7}f+5(5%5!2w3s2o2k2g5c1c1470q4181c2g3c181420?44c3g3k1o1s1w5s2o2k2g4c3440r44c3g4k2o2s2w3!2%7(7+9}7+8(5%5!2w2s3o2k2g5c2460s4181c2g3c181420~44c3g2k1o1s1w1!3w2s2o2k2g3c4430s44c3g4k2o2s3w2!4%6(8+j(5%5!3w2s2o3k2g4c4450t4181c1g581420~44c3g2k1o1s1w1!1%1!2w2s2o2k2g3c3440r44c4g4k2o3s2w4!3%7(9+b(8%5!2w3s2o2k3g4c5430v4181c1g581411044c2g2k1o1s1w1!1%2!2w2s2o2k1g4c2440s44c4g4k3o2s4w3!3%8(n%5!3w2s3o2k2g5c442420w4181c1g581411044c2g2k1o1s1w1!1%3!2w2s2o1k2g3c3440r45c4g5k2o4s3w3!4%9(h%6!2w3s2o3k2g5c443410x4181c1g4c1811243c2g2k1o1s1w1!1%4!2w2s1o2k2g2c3440s45c4g5k4o3s3w4!4%a(a%7!3w2s3o2k3g4c5440z81c1g3c181411144c2g2k1o1s1w1!1%5!2w1s2o2k1g3c3440s45c5g6k3o3s4w4!5%l!3w3s2o3k2g5c5450z4181c1g2c181411144c2g2k1o1s1w1!1%6!1w2s2o1k1g3c3440t45c5g7k3o4s4w5!5%e!4w3s3o2k3g5c446010z4181c1g2c181411044c3g2k1o1s1w1!1%6!2w2s1o1k2g3c3430u46c6g6k4o4s5w5!gw4s3o3k2g5c546020!4181c1g1c181411044c3g2k1o1s1w1!1%7!2w1s1o2k1g3c3440u46c7g7k4o5s5wis4o3k3g5c546030!4281c2824103420,43c3g3k1o1s1w1!1%8!1w1s2o1k2g3c2440v48c6g8k5o5sko4k3g5c546050@4181c3814103430<44c3g3k1o1s1w1!1%8!1w2s1o2k1g3c3430x48c7g9k5omk4g6c546060#4181c2814103430<44c2g3k2o1s1w1!1%8!2w1s2o1k2g2c3440x49c8gakog7c547070$42824103440;44c3g3k1o2s1w1!1%9!1w2s1o2k1g3c2440!49c9ggk2ghc646090%42814102460{44c3g2k2o1s2w1!1%3(2%4!2w1s2o1k1g3c3430#4acagsc7470a0&4202470]44c3g3k1o2s1w2!1%2(5%3!1w2s1o1k2g2c3430%4ccgg6ch470c0-470_48c3g3k1o1s2w1!2%2(5%3!2w1s1o2k1g3c2440&4dcw490d0-470&4bc3g3k2o1s1w2!1%3(6%3!1w1s2o1k1g3c2440)4=0f0+460%4cc4g3k1o2s1w1!2%3(6%3!1w2s1o1k2g2c3430=4*0h0+460%48c7g3k2o1s2w1!1%3(8%2!2w1s1o2k1g2c3430{4!0k"