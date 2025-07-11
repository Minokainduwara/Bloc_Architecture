import 'package:bloc_architec/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'home_page.dart'; // Import your home page

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      // Provide the CounterCubit to the widget tree
      // This allows any widget in the tree to access the CounterCubit
      // without needing to pass it down manually
      // The CounterCubit will be created when the app starts
      // and will be available throughout the app
      create:(_) => CounterCubit(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        ),
        home: const MyHomePage(
          title: 'Flutter Demo Home Page',
        ), // Use your home page here
      ),
    );
  }
}
