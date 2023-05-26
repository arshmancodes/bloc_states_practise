import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_cubit.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text("Profile View"),
          ElevatedButton(
            onPressed: () {
              context.read<FlowCubit>().searchScreen();
            },
            child: Text("Go To Search"),
          ),
          ElevatedButton(
            onPressed: () {
              context.read<FlowCubit>().categoryScreen();
            },
            child: Text("Go To Category"),
          ),
        ]),
      ),
    );
  }
}
