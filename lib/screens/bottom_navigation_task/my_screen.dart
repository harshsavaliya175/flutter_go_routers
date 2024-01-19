import 'package:flutter/material.dart';
import 'package:flutter_go_routes/router/bottom_navigation_task/router_name.dart';
import 'package:go_router/go_router.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'My Screen',
              style: TextStyle(fontSize: 30),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                context.goNamed(BottomRouterName.detailsScreen);
              },
              child: const Text('Go To Details Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
