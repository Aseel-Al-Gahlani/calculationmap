import 'package:flutter/material.dart';

Container lablegridforrow(String name, double wid) {
  return Container(
    margin: EdgeInsets.only(left: 5, right: 5),
    width: wid - 10,
    padding: EdgeInsets.symmetric(vertical: 2),
    height: 30.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.white),
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color.fromARGB(255, 240, 146, 139), Colors.white],
      ),
    ),
    // color: Color.fromARGB(255, 86, 152, 218),
    child: Text(
      name,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 18,
      ),
    ),
  );
}

Container lablegridfor2row(String name, double wid) {
  return Container(
    margin: EdgeInsets.only(right: 3),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: wid * 2 / 3 - 3,
          margin: EdgeInsets.only(right: 4),
          padding: EdgeInsets.symmetric(vertical: 2),
          height: 30.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromARGB(255, 240, 146, 139), Colors.white],
            ),
          ),
          // color: Color.fromARGB(255, 86, 152, 218),
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
        Container(
          width: wid * 1 / 3 - 4,
          padding: EdgeInsets.symmetric(vertical: 2),
          height: 30.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color.fromARGB(255, 240, 146, 139), Colors.white],
            ),
          ),
          // color: Color.fromARGB(255, 86, 152, 218),
          child: Text(
            '=',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 18,
            ),
          ),
        ),
      ],
    ),
  );
}

Container inputmapforrow(TextEditingController valu1, double wid) {
  return Container(
    width: wid,
    height: 35,
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
    ),
  );
}

Container inputmapdforrow(TextEditingController valu1, double wid) {
  return Container(
    width: wid - 3,
    height: 35,
    margin: EdgeInsets.symmetric(horizontal: 3),
    child: TextField(
      enabled: false,
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
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
    ),
  );
}

Row row2lable(double width, double len, String name, String name2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      containarlable(width * 0.5, len, name),
      containarlable(width * 0.5, len, name2),
    ],
  );
}

Row row2labl(double width, double len, String name, String name2) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      containarlable(width * 0.6, len, name),
      containarlable(width * 0.4, len, name2),
    ],
  );
}

Container containarlable(double width, double len, String name) {
  return Container(
    width: width,
    height: len,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      gradient: LinearGradient(
        colors: [
          Color.fromARGB(255, 16, 69, 229),
          Color.fromARGB(255, 226, 16, 13),
        ],
      ),
    ),
    margin: EdgeInsets.only(top: 4, right: 1),
    // padding: EdgeInsets.only(top: 10),
    // color: Color.fromARGB(255, 16, 69, 229),

    child: Center(
      child: Text(
        name,
        // textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
    ),
  );
}

Container containarlablev(double width, double len, String name) {
  return Container(
    width: width,
    height: len,
    margin: EdgeInsets.only(top: 4, right: 1),
    // padding: EdgeInsets.only(top: 10),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(40),
      gradient: LinearGradient(
        colors: [
          Colors.yellow,
          Color.fromARGB(255, 59, 255, 190),
        ],
      ),
    ),
    // color: const Color.fromARGB(255, 59, 255, 190),
    child: Center(
      child: Text(
        name,
        // textAlign: TextAlign.center,
        style: TextStyle(fontSize: 15),
      ),
    ),
  );
}

Container inputmapone(TextEditingController valu1) {
  return Container(
    child: TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      controller: valu1,
      decoration: InputDecoration(
        prefix: Text('jjjjj'),
        suffix: Text('uui'),
        contentPadding: EdgeInsets.only(bottom: 3),
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide:
                BorderSide(color: const Color.fromARGB(255, 92, 173, 240))),
      ),
    ),
  );
}
