import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_cubit.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
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
          ElevatedButton(
            onPressed: () {
              context.read<FlowCubit>().profileScreen();
            },
            child: Text("Go To Profile"),
          ),
        ]),
      ),
    );
  }
}
