import 'package:flutter/material.dart';
import 'package:flutter_go_routes/router/pass_data/router_name.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  final String name;
  final String age;
  final String company;

  final String month;

  final String day;

  const SecondScreen({
    super.key,
    this.name = 'My Name',
    this.age = '10',
    this.company = 'Flutter Company',
    this.month = 'No Data',
    this.day = '00',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello -- $name'),
            const SizedBox(height: 20),
            Text('Age -- $age'),
            const SizedBox(height: 20),
            Text('Company -- $company'),
            const SizedBox(height: 20),
            Text('Month -- $month'),
            const SizedBox(height: 20),
            Text('Day -- $day'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.pop();
              },
              child: const Text('First Screen'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.replaceNamed(RouterName.homeScreen);
              },
              child: const Text('Home Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
