import 'package:flutter/material.dart';
import 'package:flutter_go_routes/router/pass_data/router_name.dart';
import 'package:go_router/go_router.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // context.pushNamed(
            //   RouterName.secondScreen,
            //   pathParameters: {
            //     'someData': 'Harsh Savaliya',
            //     'myAge': '22',
            //   },
            //   extra: 'Codonnier',
            //   queryParameters: {
            //     'month': 'january',
            //   },
            // );

            context.push(
              '/${RouterName.secondScreen}/Harsh Savaliya/20?month=january&day=60',
              extra: 'Codonnier',
            );

            // context.go(Uri(
            //   path: '/secondScreen',
            //   queryParameters: {'month': 'january', 'day': '60'},
            // ).toString());
          },
          child: const Text('Second Screen'),
        ),
      ),
    );
  }
}
