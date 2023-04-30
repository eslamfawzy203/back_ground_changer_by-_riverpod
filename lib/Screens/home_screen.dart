import 'package:back_ground_changer/Providers/color_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
   // print('1'); // Still prints .. maybe it's ok because we have to reuild to change the color !!
    final colorChanged = ref.watch(colorProvider);
    return Scaffold(
        body: GestureDetector(
      onTap: () {
        ref.watch(colorProvider.notifier).myColor();
      },
      child: Container(height: double.infinity,width: double.infinity,
        color: colorChanged,
        child:const Center(
          child: ( Text('Hey There !')
              ),
        ),
    )));
  }
}
