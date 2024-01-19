import 'package:flutter/material.dart';
import 'package:flutter_go_routes/router/bottom_navigation_task/router_class.dart';

void main() {
  runApp(const MyApp());
}

// ------------ passing parameter --------------

// 1. pathParameter
// 2. queryParameter
// 3. extra
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routerConfig: RouterClass.goRouter,
//       // routerDelegate: RouterClass.goRouter.routerDelegate,
//       // routeInformationParser: RouterClass.goRouter.routeInformationParser,
//       // routeInformationProvider: RouterClass.goRouter.routeInformationProvider,
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      routerConfig: BottomRouterClass.goRouter,
    );
  }
}
