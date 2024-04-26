import 'dart:math';

String get371(double I36, double J24, double N10) {
  if (I36 == 0) {
    return '-';
  } else {
    return ((((I36 * J24 * pow(N10, 2)) * 100).ceil()) / 100).toString();
  }
}

String get381(double I36, double J26) {
  if (I36 == 0) {
    return '-';
  } else {
    return (J26).toString();
  }
}


String get391(double I36, String I37, String I38) {
  if (I36 == 0) {
    return '-';
  } else {
    return (((((double.parse(I37) * pow(10, 6)) /
                        (1000 * pow(double.parse(I38), 2))) *
                    100)
                .round()) /
            100)
        .toString();
  }
}

String get401(double I36, double J30, String I39, double N6) {
  if (I36 == 0) {
    return '-';
  } else {
    return double.parse((((((1 / J30) *
                            (1 -
                                sqrt(1 -
                                    (2 * J30 * double.parse(I39)) /
                                        (0.9 * N6)))) *
                        100000)
                    .round()) /
                100000)
            .toStringAsFixed(5))
        .toString();
  }
}

String get411(double I36, String I38, String I40) {
  if (I36 == 0) {
    return '-';
  } else {
    return (double.parse(I40) * 1000 * double.parse(I38)).round().toString();
  }
}

String get421(double I36, double J12, double N6) {
  if (I36 == 0) {
    return '-';
  } else {
    if (N6 >= 420) {
      return (0.0018 * 1000 * J12).ceil().toString();
    } else {
      return (0.002 * 1000 * J12).ceil().toString();
    }
  }
}


String get431(double I36, String I41, String I42, double J14) {
  if (I36 == 0) {
    return '-';
  } else {
    if (double.parse(I41) >= double.parse(I42)) {
      return ((4 * double.parse(I41)) / (pi * pow(J14, 2))).ceil().toString() +
          "Ø" +
          J14.ceil().toString() +
          "/m";
    } else {
      return ((4 * double.parse(I42)) / (pi * pow(J14, 2))).ceil().toString() +
          "Ø" +
          J14.ceil().toString() +
          "/m";
    }
  }
}

String get441(double I36, String I41, String I42, double J14) {
  if (I36 == 0) {
    return '-';
  } else {
    if (double.parse(I41) >= double.parse(I42)) {
      return (1000 / ((4 * double.parse(I41)) / (pi * pow(J14, 2)).round()))
          .round()
          .toString();
    } else {
      return (1000 / ((4 * double.parse(I42)) / (pi * pow(J14, 2)).round()))
          .round()
          .toString();
    }
  }
}
