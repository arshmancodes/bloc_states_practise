import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_cubit.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_state.dart';
import 'package:flutter_application_2/core/views/home-screen/home_screen.dart';
import 'package:flutter_application_2/core/views/home-screen/login.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeAdapter extends StatefulWidget {
  const HomeAdapter({super.key});

  @override
  State<HomeAdapter> createState() => _HomeAdapterState();
}

class _HomeAdapterState extends State<HomeAdapter> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        if (state is LoggedInAuthState) {
          return const HomeScreen();
        } else {
          return const LoginScreen();
        }
      },
      listener: (context, state) {},
    );
  }
}
