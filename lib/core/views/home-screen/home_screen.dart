import 'package:flutter/material.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_cubit.dart';
import 'package:flutter_application_2/core/bloc/auth-bloc/auth_state.dart';
import 'package:flutter_application_2/core/bloc/flow-bloc/flow_states.dart';
import 'package:flutter_application_2/core/views/home-screen/home_screen_views/category_view.dart';
import 'package:flutter_application_2/core/views/home-screen/home_screen_views/dashboard_view.dart';
import 'package:flutter_application_2/core/views/home-screen/home_screen_views/profile_view.dart';
import 'package:flutter_application_2/core/views/home-screen/home_screen_views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/flow-bloc/flow_cubit.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FlowCubit, FlowState>(
      builder: (context, state) {
        if (state is DashboardFlow) {
          return DashboardView();
        } else if (state is CategoryFlow) {
          return CategoryView();
        } else if (state is SearchFlow) {
          return SearchView();
        } else if (state is ProfileFlow) {
          return ProfileView();
        } else {
          return SafeArea(
            child: Scaffold(
                appBar: AppBar(
                  title: Text("Error Screen"),
                  elevation: 0,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Oops Something went wrong!"),
                      TextButton(
                          onPressed: () {
                            context.read<FlowCubit>().dashboardScreen();
                          },
                          child: Text("Go back to Home Screen"))
                    ],
                  ),
                )),
          );
        }
      },
      listener: (context, state) {
        if (state is ErrorFlow) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text("${state.error}")));
        }
      },
    );
  }
}
