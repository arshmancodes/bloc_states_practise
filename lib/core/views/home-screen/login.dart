import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_cubit.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Login Page"),
          ),
          body: Column(children: [
            Text("Login Page"),
            ElevatedButton(
                onPressed: () {
                  context.read<AuthCubit>().login("Arshman", "test123");
                },
                child: Text("Login"))
          ]),
        );
      },
      listener: (context, state) {},
    );
  }
}
