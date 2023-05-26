import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_cubit.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_cubit.dart';
import 'package:flutter_application_2/core/views/home-screen/home_adapter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => FlowCubit(),
        ),
      ],
      child: MaterialApp(
        home: const HomeAdapter(),
      ),
    );
  }
}
