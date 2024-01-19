import 'package:flutter/material.dart';
import 'package:flutter_go_routes/router/pass_data/router_name.dart';
import 'package:flutter_go_routes/screens/pass_data/first_screen.dart';
import 'package:flutter_go_routes/screens/pass_data/home_screen.dart';
import 'package:flutter_go_routes/screens/pass_data/second_screen.dart';
import 'package:go_router/go_router.dart';

class RouterClass {
  static GoRouter goRouter = GoRouter(
    initialLocation: '/',
    errorBuilder: (context, state) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Page Not Found'),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(
            'Error Page',
            style: TextStyle(color: Colors.red),
          ),
        ),
      );
    },
    routes: [
      GoRoute(
        name: RouterName.firstScreen,
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: FirstScreen(),
          );
        },
      ),
      GoRoute(
        name: RouterName.secondScreen,
        path: '/secondScreen/:someData/:myAge',
        builder: (context, state) {
          return SecondScreen(
            name: state.pathParameters['someData']!,
            age: state.pathParameters['myAge']!,
            company: state.extra as String,
            month: state.uri.queryParameters['month']!,
            day: state.uri.queryParameters['day']!,
          );
        },
      ),
      GoRoute(
        name: RouterName.homeScreen,
        path: '/homeScreen',
        builder: (context, state) {
          return const HomeScreen();
        },
      ),
    ],
  );
}
