import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_cubit.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/flow-bloc/flow_cubit.dart';
import 'detailed_ad.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlowCubit, FlowState>(
      builder: (context, state) {
        if (state is InitialCategoryFlow) {
          return Scaffold(
            appBar: AppBar(title: Text("Category Screen")),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text("${context.read<FlowCubit>().names}"),
                    ElevatedButton(
                      onPressed: () {
                        context.read<FlowCubit>().searchScreen();
                      },
                      child: Text("Go To Search"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<FlowCubit>().dashboardScreen();
                      },
                      child: Text("Go To Dashboard"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<AuthCubit>().logout();
                      },
                      child: Text("Signout"),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        context.read<FlowCubit>().detailedAd("12312321312");
                      },
                      child: Text("Go To Detailed Ad"),
                    ),
                  ]),
            ),
          );
        } else {
          return DetailedAd();
        }
      },
      listener: (context, state) {},
    );
  }
}
