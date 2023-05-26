import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/flow-bloc/flow_cubit.dart';
import '../../../bloc/flow-bloc/flow_states.dart';

class DetailedAd extends StatefulWidget {
  const DetailedAd({super.key});

  @override
  State<DetailedAd> createState() => _DetailedAdState();
}

class _DetailedAdState extends State<DetailedAd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detailed Ad"),
        ),
        body: Column(
          children: [
            Text("${context.read<FlowCubit>().currentAd}"),
            ElevatedButton(
                onPressed: () {
                  context.read<FlowCubit>().goBackFromDetailedAd();
                },
                child: Text("Go Back"))
          ],
        ));
  }
}
