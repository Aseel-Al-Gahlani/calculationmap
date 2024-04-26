import '../buttonstyle/glowing_button.dart';
import 'package:flutter/material.dart';
import 'widget.dart';
// import 'dart:math';
import 'package:shared_preferences/shared_preferences.dart';

class Tab1 extends StatelessWidget {
  const Tab1({super.key});

  @override
  Widget build(BuildContext context) {
    return Tab1page();
  }
}

class Tab1page extends StatefulWidget {
  @override
  State<Tab1page> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1page> {
  var glowing = true;
  var scale = 1.0;
  final Color color1 = Colors.pinkAccent;
  final Color color2 = Colors.indigoAccent;

  TextEditingController J8v = TextEditingController();
  TextEditingController N8v = TextEditingController();
  TextEditingController J10v = TextEditingController();
  TextEditingController N10v = TextEditingController();
  TextEditingController J12v = TextEditingController();
  TextEditingController N12v = TextEditingController();
  TextEditingController N14v = TextEditingController();

  TextEditingController sJ24 = TextEditingController();
  TextEditingController sN24 = TextEditingController();
  TextEditingController sJ26 = TextEditingController();
  TextEditingController sN26 = TextEditingController();
  TextEditingController sJ30 = TextEditingController();

  List<int> listj6 = [21, 23, 24, 25, 28, 30, 35, 40];
  List<int> listjn = [280, 350, 420];
  List<int> listj15 = [1, 2, 3, 4, 5];
  List<int> listj14 = [8, 10, 12, 14, 16];

  final double widthlab2 = 500.0;
  GlobalKey<ScaffoldState> scaff = GlobalKey();

  String calsN24(double N10, double J10) {
    try {
      return double.parse((N10 / J10).toStringAsFixed(2)).toString();
    } catch (e) {
      return "no input";
    }
  }

  late double J6;
  late double N6;
  late double J8;
  late double N8;
  late double J10;
  late double N10;
  late double J12;
  late double N12;
  late double J14;
  late double N14;
  late double J17;
  late double J24;
  late double N24;
  late double J26;
  late double J30;
  late double N26;

  Future<void> setinitpref(String key, double value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setDouble(key, value);
  }

  late Future<void> setintvalue;
  Future<void> setinitprefint() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      J6 = preferences.getDouble('J6') ?? 30;
      N6 = preferences.getDouble('N6') ?? 350;
      J8 = preferences.getDouble('J8') ?? 7.5;
      N8 = preferences.getDouble('N8') ?? 5;
      J10 = preferences.getDouble('J10') ?? 4.5;
      N10 = preferences.getDouble('N10') ?? 4;
      J12 = preferences.getDouble('J12') ?? 140;
      N12 = preferences.getDouble('N12') ?? 20;
      J14 = preferences.getDouble('J14') ?? 8;
      N14 = J14;
      J17 = preferences.getDouble('J17') ?? 5;
      J8v.text = J8.toString();
      N8v.text = N8.toString();
      J10v.text = J10.toString();
      N10v.text = N10.toString();
      J12v.text = J12.toString();
      N12v.text = N12.toString();
      N14v.text = N14.toString();

      J24 = J8 * 1.2 + N8 * 1.6;
      J26 = J12 - N12 - J14 / 2;
      J30 = double.parse((N6 / (0.85 * J6)).toStringAsFixed(2));
      N26 = J12 - N12 - J14 - N14 / 2;

      sJ24.text = (J24).toString();
      sJ26.text = (J26).toString();
      sJ24.text = (J8 * 1.2 + N8 * 1.6).toString();
      sN24.text = calsN24(N10, J10);
      sN26.text = (N26).toString();
      sJ30.text = J30.toString();
    });
  }

  @override
  void initState() {
    setintvalue = setinitprefint();
    super.initState();
  }

  @override
  void dispose() {
    J8v.dispose();
    N8v.dispose();
    J10v.dispose();
    N10v.dispose();
    J12v.dispose();
    N12v.dispose();
    N14v.dispose();
    sJ24.dispose();
    sN24.dispose();
    sJ26.dispose();
    sN26.dispose();
    sJ30.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var mwd = MediaQuery.of(context).size.width;

    return Center(
        child: FutureBuilder<void>(
      future: setintvalue,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text('error:${snapshot.error}');
        } else {
          return SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 30,
              ),
              GlowingButton(streng: 'input', strar: 'الدخل'),
              SizedBox(
                height: 30,
              ),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('FC', mwd / 3),

                    // inputmapforrow(J6v, mwd / 3 - 24),
                    dropdowenlist(mwd / 3 - 24),
                    lablegridforrow('Mpa', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('fy', mwd / 3),
                    dropdowenlist2(mwd / 3 - 24),
                    // inputmapforrow(N6v, mwd / 3 - 24),
                    lablegridforrow('Mpa', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('DL=OW+FL', mwd / 3),
                    inputmapforrow(J8v, mwd / 3 - 24),
                    lablegridforrow('kN/m^2', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('LL', mwd / 3),
                    inputmapforrow(N8v, mwd / 3 - 24),
                    lablegridforrow('kN/m^2', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('L(log)', mwd / 3),
                    inputmapforrow(J10v, mwd / 3 - 24),
                    lablegridforrow('m', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('L(short)', mwd / 3),
                    inputmapforrow(N10v, mwd / 3 - 24),
                    lablegridforrow('m', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('h', mwd / 3),
                    inputmapforrow(J12v, mwd / 3 - 24),
                    lablegridforrow('mm', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('Con Cover', mwd / 3),
                    inputmapforrow(N12v, mwd / 3 - 24),
                    lablegridforrow('mm', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('Ø long direction', mwd / 3),

                    dropdowenlist14(mwd / 3 - 24),
                    // inputmapforrow(J14v, mwd / 3 - 24),
                    lablegridforrow('mm', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('Ø short direction', mwd / 3),
                    inputmapforrow(N14v, mwd / 3 - 24),
                    lablegridforrow('mm', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridforrow('Case', mwd / 3),

                    dropdowenlist15(mwd / 3 - 24),
                    // inputmapforrow(J17v, mwd / 3 - 24),
                    lablegridforrow('', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              SizedBox(
                height: 30,
              ),
              GlowingButton(
                streng: 'output',
                strar: 'المخرجات',
                color1: Colors.orange,
                color2: Colors.red,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridfor2row('Wu', mwd / 3),
                    inputmapdforrow(sJ24, mwd / 3 - 24),
                    lablegridforrow('kN/m^2', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridfor2row('L_s/L_l', mwd / 3),
                    inputmapdforrow(sN24, mwd / 3 - 24),
                    lablegridforrow('', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridfor2row('d_log', mwd / 3),
                    inputmapdforrow(sJ26, mwd / 3 - 24),
                    lablegridforrow('mm', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridfor2row('d_short', mwd / 3),
                    inputmapdforrow(sN26, mwd / 3 - 24),
                    lablegridforrow('mm', mwd / 3),
                  ],
                ),
              ),
              Divider(),
              Container(
                width: mwd,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    lablegridfor2row('m', mwd / 3),
                    inputmapdforrow(sJ30, mwd / 3 - 24),
                    lablegridforrow('', mwd / 3),
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTapUp: (val) {
                  setState(() {
                    glowing = false;
                    scale = 1.0;
                  });
                },
                onTapDown: (val) {
                  setState(() {
                    glowing = true;
                    scale = 1.1;
                  });
                },
                onTap: () {
                  setState(() {
                    // J6 = double.parse(J6v.text);
                    J8 = double.parse(J8v.text);
                    J10 = double.parse(J10v.text);
                    J12 = double.parse(J12v.text);
                    // J14 = double.parse(J14v.text);
                    // J17 = double.parse(J17v.text);
                    // N6 = double.parse(N6v.text);
                    N8 = double.parse(N8v.text);
                    N10 = double.parse(N10v.text);
                    N12 = double.parse(N12v.text);
                    N14 = double.parse(N14v.text);

                    double J24 = J8 * 1.2 + N8 * 1.6;
                    double J26 = J12 - N12 - J14 / 2;
                    double J30 =
                        double.parse((N6 / (0.85 * J6)).toStringAsFixed(2));

                    sJ24.text = (J24).toString();
                    sJ26.text = (J26).toString();
                    sJ24.text = (J8 * 1.2 + N8 * 1.6).toString();
                    sN24.text = calsN24(N10, J10);
                    double N26 = J12 - N12 - J14 - N14 / 2;
                    sN26.text = (N26).toString();
                    sJ30.text = J30.toString();
                    setinitpref('J6', J6);
                    setinitpref('N6', N6);
                    setinitpref('J8', J8);
                    setinitpref('N8', N8);
                    setinitpref('J10', J10);
                    setinitpref('N10', N10);
                    setinitpref('J12', J12);
                    setinitpref('N12', N12);
                    setinitpref('J14', J14);
                    setinitpref('N14', N14);
                    setinitpref('J17', J17);
                    setinitpref('J24', J24);
                    setinitpref('J26', J26);
                    setinitpref('N26', N26);
                    setinitpref('J30', J30);
                  });
                },
                child: AnimatedContainer(
                  transform: Matrix4.identity()..scale(scale),
                  duration: Duration(milliseconds: 200),
                  height: 48,
                  width: 160,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      gradient: LinearGradient(
                        colors: [
                          color1,
                          color2,
                        ],
                      ),
                      boxShadow: glowing
                          ? [
                              BoxShadow(
                                color: color1.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 16,
                                offset: Offset(-8, 0),
                              ),
                              BoxShadow(
                                color: color2.withOpacity(0.6),
                                spreadRadius: 1,
                                blurRadius: 16,
                                offset: Offset(8, 0),
                              ),
                              BoxShadow(
                                color: color1.withOpacity(0.2),
                                spreadRadius: 16,
                                blurRadius: 32,
                                offset: Offset(-8, 0),
                              ),
                              BoxShadow(
                                color: color2.withOpacity(0.2),
                                spreadRadius: 16,
                                blurRadius: 32,
                                offset: Offset(8, 0),
                              )
                            ]
                          : []),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        glowing ? Icons.lightbulb : Icons.lightbulb_outline,
                        color: Colors.white,
                      ),
                      Text(
                        glowing ? 'calculat' : 'حساب',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          );
        }
      },
    ));
  }

  Container dropdowenlist(double wid) {
    return Container(
      width: wid,
      height: 35,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      // height: 40,

      child: Center(
        child: DropdownButton<int>(
          // textAlign: TextAlign.center,

          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          // itemHeight: 15,

          items: listj6
              .map((item) =>
                  DropdownMenuItem(value: item, child: Text(item.toString())))
              .toList(),
          value: J6.toInt(),
          onChanged: (eee) {
            setState(() {
              J6 = eee!.toDouble();
            });
          },
        ),
      ),
    );
  }

  Container dropdowenlist15(double wid) {
    return Container(
      width: wid,
      height: 35,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      // height: 40,

      child: Center(
        child: DropdownButton<int>(
          // textAlign: TextAlign.center,

          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          // itemHeight: 15,

          items: listj15
              .map((item) =>
                  DropdownMenuItem(value: item, child: Text(item.toString())))
              .toList(),
          value: J17.toInt(),
          onChanged: (eee) {
            setState(() {
              J17 = eee!.toDouble();
            });
          },
        ),
      ),
    );
  }

  Container dropdowenlist14(double wid) {
    return Container(
      width: wid,
      height: 35,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      // height: 40,

      child: Center(
        child: DropdownButton<int>(
          // textAlign: TextAlign.center,

          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          // itemHeight: 15,

          items: listj14
              .map((item) =>
                  DropdownMenuItem(value: item, child: Text(item.toString())))
              .toList(),
          value: J14.toInt(),
          onChanged: (eee) {
            setState(() {
              J14 = eee!.toDouble();
              N14v.text = J14.toString();
            });
          },
        ),
      ),
    );
  }

  Container dropdowenlist2(double wid) {
    return Container(
      width: wid,
      height: 35,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      // height: 40,

      child: Center(
        child: DropdownButton<int>(
          // textAlign: TextAlign.center,

          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
          ),
          // itemHeight: 15,

          items: listjn
              .map((item) =>
                  DropdownMenuItem(value: item, child: Text(item.toString())))
              .toList(),
          value: N6.toInt(),
          onChanged: (eee) {
            setState(() {
              N6 = eee!.toDouble();
            });
          },
        ),
      ),
    );
  }

  Container inputmapc(TextEditingController valu1) {
    return Container(
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        controller: valu1,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 92, 173, 240))),
        ),
        onChanged: (value) {
          N14v.text = value;
        },
      ),
    );
  }
}
