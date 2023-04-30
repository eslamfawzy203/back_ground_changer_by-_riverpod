import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'color_provider.g.dart';

@Riverpod()
class Color extends _$Color {
  @override
  build() {
   return  Colors.black;
      
  }

  myColor() {
    // Random(Colors.accents as int?);
   state  = ([...Colors.primaries]..shuffle()).first;
  }

  // @override
  // int build() {
  //   return 0;
  // }

//    myColor() {

//   return
//       Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
// }

  // withOpacity(double d) {}

  // myColor() {
  //   faker.color.random;
  // }
}
