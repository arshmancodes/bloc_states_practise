import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/flow-bloc/flow_cubit.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search View")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Text("${context.read<FlowCubit>().names}"),
          ElevatedButton(
            onPressed: () {
              context.read<FlowCubit>().dashboardScreen();
            },
            child: Text("Go To Dashboard"),
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
