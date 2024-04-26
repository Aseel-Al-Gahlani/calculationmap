// import 'dart:ffi';

import '../buttonstyle/glowing_button.dart';
import 'package:flutter/material.dart';
import 'widget.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../services/funct.dart';

class Tab2 extends StatelessWidget {
  const Tab2({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab2page();
  }
}

class Tab2page extends StatefulWidget {
  @override
  State<Tab2page> createState() => _Tab2State();
}

class _Tab2State extends State<Tab2page> {
  final double widthlab2 = 500.0;
  GlobalKey<ScaffoldState> scaff = GlobalKey();
  List<List<double>> totallist = [
    [
      0.040,
      0.000,
      0.030,
      0.027,
      0.000,
      0.020,
      0.033,
      0.000,
      0.025,
      0.022,
      0.000,
      0.017
    ],
    [
      0.048,
      0.024,
      0.036,
      0.032,
      0.016,
      0.029,
      0.041,
      0.021,
      0.031,
      0.027,
      0.014,
      0.021
    ],
    [
      0.057,
      0.028,
      0.043,
      0.038,
      0.025,
      0.038,
      0.049,
      0.025,
      0.037,
      0.033,
      0.017,
      0.025
    ],
    [
      0.066,
      0.033,
      0.050,
      0.044,
      0.019,
      0.029,
      0.058,
      0.029,
      0.044,
      0.039,
      0.019,
      0.025
    ],
    [
      0.00,
      0.038,
      0.057,
      0.00,
      0.022,
      0.033,
      0.00,
      0.033,
      0.050,
      0.00,
      0.022,
      0.029
    ],
  ];


  late double J6;
  late double N10;
  late double J24;
  late double J26;
  late double J30;
  late double J14;
  late double J12;
  late double J17;
  late double N6;
  late double N26;

  late Future<void> loaddata;
  @override
  void initState() {
    super.initState();
    loaddata = getprefint1();
  }

  Future<void> getprefint1() async {
    SharedPreferences preferenc = await SharedPreferences.getInstance();
    setState(() {
      J6 = preferenc.getDouble('J6')!;
      // print(J6);
      N10 = preferenc.getDouble('N10')!;
      J24 = preferenc.getDouble('J24')!;
      // print(J24);
      J26 = preferenc.getDouble('J26')!;
      J30 = preferenc.getDouble('J30')!;
      J14 = preferenc.getDouble('J14')!;
      J12 = preferenc.getDouble('J12')!;
      J17 = preferenc.getDouble('J17')!;
      N6 = preferenc.getDouble('N6')!;
      N26 = preferenc.getDouble('N26')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    var mwd = MediaQuery.of(context).size.width;
    return Container(
        child: FutureBuilder<void>(
      future: loaddata,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('error:${snapshot.error}');
        } else {
          List<double> raw1val = totallist[J17.toInt() - 1];
          double I36 = raw1val[0];
          double J36 = raw1val[1];
          double K36 = raw1val[2];
          double L36 = raw1val[3];
          double M36 = raw1val[4];
          double N36 = raw1val[5];
          double O36 = raw1val[6];
          double P36 = raw1val[7];
          double Q36 = raw1val[8];
          double R36 = raw1val[9];
          double S36 = raw1val[10];
          double T36 = raw1val[11];

          String I37 = get371(I36, J24, N10);
          String J37 = get371(J36, J24, N10);
          String K37 = get371(K36, J24, N10);
          String L37 = get371(L36, J24, N10);
          String M37 = get371(M36, J24, N10);
          String N37 = get371(N36, J24, N10);
          String O37 = get371(O36, J24, N10);
          String P37 = get371(P36, J24, N10);
          String Q37 = get371(Q36, J24, N10);
          String R37 = get371(R36, J24, N10);
          String S37 = get371(S36, J24, N10);
          String T37 = get371(T36, J24, N10);

          String I38 = get381(I36, J26);
          String J38 = get381(J36, J26);
          String K38 = get381(K36, J26);
          String L38 = get381(L36, J26);
          String M38 = get381(M36, J26);
          String N38 = get381(N36, J26);
          String O38 = get381(O36, J26);
          String P38 = get381(P36, J26);
          String Q38 = get381(Q36, J26);
          String R38 = get381(R36, J26);
          String S38 = get381(S36, J26);
          String T38 = get381(T36, J26);

          String I39 = get391(I36, I37, I38);
          String J39 = get391(J36, J37, J38);
          String K39 = get391(K36, K37, K38);
          String L39 = get391(L36, L37, L38);
          String M39 = get391(M36, M37, M38);
          String N39 = get391(N36, N37, N38);
          String O39 = get391(O36, O37, O38);
          String P39 = get391(P36, P37, P38);
          String Q39 = get391(Q36, Q37, Q38);
          String R39 = get391(R36, R37, R38);
          String S39 = get391(S36, S37, S38);
          String T39 = get391(T36, T37, T38);

          String I40 = get401(I36, J30, I39, N6);
          String J40 = get401(J36, J30, J39, N6);
          String K40 = get401(K36, J30, K39, N6);
          String L40 = get401(L36, J30, L39, N6);
          String M40 = get401(M36, J30, M39, N6);
          String N40 = get401(N36, J30, N39, N6);
          String O40 = get401(O36, J30, O39, N6);
          String P40 = get401(P36, J30, P39, N6);
          String Q40 = get401(Q36, J30, Q39, N6);
          String R40 = get401(R36, J30, R39, N6);
          String S40 = get401(S36, J30, S39, N6);
          String T40 = get401(T36, J30, T39, N6);

          String I41 = get411(I36, I38, I40);
          String J41 = get411(J36, J38, J40);
          String K41 = get411(K36, K38, K40);
          String L41 = get411(L36, L38, L40);
          String M41 = get411(M36, M38, M40);
          String N41 = get411(N36, N38, N40);
          String O41 = get411(O36, O38, O40);
          String P41 = get411(P36, P38, P40);
          String Q41 = get411(Q36, Q38, Q40);
          String R41 = get411(R36, R38, R40);
          String S41 = get411(S36, S38, S40);
          String T41 = get411(T36, T38, T40);

          String I42 = get421(I36, J12, N6);
          String J42 = get421(J36, J12, N6);
          String K42 = get421(K36, J12, N6);
          String L42 = get421(L36, J12, N6);
          String M42 = get421(M36, J12, N6);
          String N42 = get421(N36, J12, N6);
          String O42 = get421(O36, J12, N6);
          String P42 = get421(P36, J12, N6);
          String Q42 = get421(Q36, J12, N6);
          String R42 = get421(R36, J12, N6);
          String S42 = get421(S36, J12, N6);
          String T42 = get421(T36, J12, N6);

          String I43 = get431(I36, I41, I42, J14);
          String J43 = get431(J36, J41, J42, J14);
          String K43 = get431(K36, K41, K42, J14);
          String L43 = get431(L36, L41, L42, J14);
          String M43 = get431(M36, M41, M42, J14);
          String N43 = get431(N36, N41, N42, J14);
          String O43 = get431(O36, O41, O42, J14);
          String P43 = get431(P36, P41, P42, J14);
          String Q43 = get431(Q36, Q41, Q42, J14);
          String R43 = get431(R36, R41, R42, J14);
          String S43 = get431(S36, S41, S42, J14);
          String T43 = get431(T36, T41, T42, J14);

          String I44 = get441(I36, I41, I42, J14);
          String J44 = get441(J36, J41, J42, J14);
          String K44 = get441(K36, K41, K42, J14);
          String L44 = get441(L36, L41, L42, J14);
          String M44 = get441(M36, M41, M42, J14);
          String N44 = get441(N36, N41, N42, J14);
          String O44 = get441(O36, O41, O42, J14);
          String P44 = get441(P36, P41, P42, J14);
          String Q44 = get441(Q36, Q41, Q42, J14);
          String R44 = get441(R36, R41, R42, J14);
          String S44 = get441(S36, S41, S42, J14);
          String T44 = get441(T36, T41, T42, J14);

          return SingleChildScrollView(
            child: Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        GlowingButton(
                          streng: 'Modifid',
                          strar: 'التعديلات',
                          color1: Colors.orange,
                          color2: Colors.red,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Divider(),
                        Row(
                          children: [
                            Container(
                              width: 155,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  containarlable(145, 42, 'panel S()'),
                                  row2labl(145, 45, 'Case', J17.toString()),
                                  containarlable(145, 20, 'coeff.'),
                                  row2labl(145, 20, 'Mu', 'kN/m^2'),
                                  row2labl(145, 20, 'd', 'mm'),
                                  row2labl(145, 20, 'Ru', 'Mpa'),
                                  containarlable(145, 20, 'ratio'),
                                  row2labl(145, 20, 'As', '(mm)^2'),
                                  row2labl(145, 20, 'As(min)', '(mm)^2'),
                                  containarlable(145, 20, 'Reinf./m.'),
                                  row2labl(145, 20, 'Spacing', 'mm'),
                                ],
                              ),
                            ),
                            Container(
                              width: widthlab2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  containarlable(
                                      (widthlab2), 20, 'short direction'),
                                  // row2labl(490, 20, 'namee', '5'),
                                  rowlabltab2(),
                                  Row(
                                    children: [
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          I36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          J36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          K36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          L36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          M36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          N36.toString()),
                                    ],
                                  ),
                                  rowvaluepage2(I37, J37, K37, L37, M37, N37),
                                  rowvaluepage2(I38, J38, K38, L38, M38, N38),
                                  rowvaluepage2(I39, J39, K39, L39, M39, N39),
                                  rowvaluepage2(
                                      I40 != "-"
                                          ? double.parse((double.parse(I40) * 100).toStringAsFixed(3))
                                                  .toString() +
                                              "%"
                                          : "-",
                                      J40 != "-"
                                          ? double.parse((double.parse(J40) * 100).toStringAsFixed(3))
                                                  .toString() +
                                              "%"
                                          : "-",
                                      K40 != "-"
                                          ? double.parse((double.parse(K40) * 100).toStringAsFixed(3))
                                                  .toString() +
                                              "%"
                                          : "-",
                                      L40 != "-"
                                          ? double.parse((double.parse(L40) * 100).toStringAsFixed(3))
                                                  .toString() +
                                              "%"
                                          : "-",
                                      M40 != "-"
                                          ? double.parse((double.parse(M40) * 100).toStringAsFixed(3))
                                                  .toString() +
                                              "%"
                                          : "-",
                                      N40 != "-"
                                          ? double.parse(
                                                      (double.parse(N40) * 100)
                                                          .toStringAsFixed(3))
                                                  .toString() +
                                              "%"
                                          : "-"),
                                  rowvaluepage2(I41, J41, K41, L41, M41, N41),
                                  rowvaluepage2(I42, J42, K42, L42, M42, N42),
                                  rowvaluepage2(I43, J43, K43, L43, M43, N43),
                                  rowvaluepage2(I44, J44, K44, L44, M44, N44),
                                ],
                              ),
                            ),
                            Container(
                              width: 500,
                              // padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  containarlable(
                                      (widthlab2 - 6), 20, 'long direction'),
                                  // row2labl(490, 20, 'namee', '5'),
                                  rowlabltab2(),
                                  Row(
                                    children: [
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          O36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          P36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          Q36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          R36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          S36.toString()),
                                      containarlablev(widthlab2 / 6 - 2, 20,
                                          T36.toString()),
                                    ],
                                  ),
                                  rowvaluepage2(O37, P37, Q37, R37, S37, T37),
                                  rowvaluepage2(O38, P38, Q38, R38, S38, T38),
                                  rowvaluepage2(O39, P39, Q39, R39, S39, T39),
                                  rowvaluepage2(
                                    O40 != "-"
                                        ? double.parse((double.parse(O40) * 100)
                                                    .toStringAsFixed(3))
                                                .toString() +
                                            "%"
                                        : "-",
                                    P40 != "-"
                                        ? double.parse((double.parse(P40) * 100)
                                                    .toStringAsFixed(3))
                                                .toString() +
                                            "%"
                                        : "-",
                                    Q40 != "-"
                                        ? double.parse((double.parse(Q40) * 100)
                                                    .toStringAsFixed(3))
                                                .toString() +
                                            "%"
                                        : "-",
                                    R40 != "-"
                                        ? double.parse((double.parse(R40) * 100)
                                                    .toStringAsFixed(3))
                                                .toString() +
                                            "%"
                                        : "-",
                                    S40 != "-"
                                        ? double.parse((double.parse(S40) * 100)
                                                    .toStringAsFixed(3))
                                                .toString() +
                                            "%"
                                        : "-",
                                    T40 != "-"
                                        ? double.parse((double.parse(T40) * 100)
                                                    .toStringAsFixed(3))
                                                .toString() +
                                            "%"
                                        : "-",
                                  ),
                                  rowvaluepage2(O41, P41, Q41, R41, S41, T41),
                                  rowvaluepage2(O42, P42, Q42, R42, S42, T42),
                                  rowvaluepage2(O43, P43, Q43, R43, S43, T43),
                                  rowvaluepage2(O44, P44, Q44, R44, S44, T44),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    ));
  }

  Row rowvaluepage2(
      String I39, String J39, String K39, String L39, String M39, String N39) {
    return Row(
      children: [
        containarlablev(widthlab2 / 6 - 2, 20, I39),
        containarlablev(widthlab2 / 6 - 2, 20, J39),
        containarlablev(widthlab2 / 6 - 2, 20, K39),
        containarlablev(widthlab2 / 6 - 2, 20, L39),
        containarlablev(widthlab2 / 6 - 2, 20, M39),
        containarlablev(widthlab2 / 6 - 2, 20, N39),
      ],
    );
  }

  Row rowlabltab2() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            containarlable(((widthlab2 / 2)), 20, 'Middel strip'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    containarlable((widthlab2 / 2) * 0.67 - 2, 20, '(-ev)M)'),
                    row2lable(
                        (widthlab2 / 2) * 0.67 - 2, 20, 'Count.', 'Disc.'),
                  ],
                ),
                containarlable((widthlab2 / 2) * 0.33 - 2, 40, '(+ev)M)'),
              ],
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            containarlable(((widthlab2 / 2) - 12), 20, 'Column strip'),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    containarlable((widthlab2 / 2) * 0.6 - 6, 20, '(-ev)M)'),
                    row2labl((widthlab2 / 2) * 0.6 - 6, 20, 'Count.', 'Disc.'),
                  ],
                ),
                containarlable((widthlab2 / 2) * 0.4 - 6, 40, '(+ev)M)'),
              ],
            )
          ],
        ),
      ],
    );
  }
}
