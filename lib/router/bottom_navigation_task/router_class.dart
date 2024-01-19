import 'package:flutter/material.dart';
import 'package:flutter_go_routes/router/bottom_navigation_task/router_name.dart';
import 'package:flutter_go_routes/screens/bottom_navigation_task/bottom_screen.dart';
import 'package:flutter_go_routes/screens/bottom_navigation_task/details_screen.dart';
import 'package:flutter_go_routes/screens/bottom_navigation_task/favorite_screen.dart';
import 'package:flutter_go_routes/screens/bottom_navigation_task/my_screen.dart';
import 'package:flutter_go_routes/screens/pass_data/first_screen.dart';
import 'package:go_router/go_router.dart';

class BottomRouterClass {
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();
  static final GlobalKey<NavigatorState> _rootNavigatorMyScreen =
      GlobalKey<NavigatorState>(debugLabel: 'My Screen');
  static final GlobalKey<NavigatorState> _rootNavigatorFavoriteScreen =
      GlobalKey<NavigatorState>(debugLabel: 'Favorite Screen');
  static GoRouter goRouter = GoRouter(
    initialLocation: '/myScreen',
    navigatorKey: _rootNavigatorKey,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return BottomBarScreen(navigationShell: navigationShell);
        },
        branches: <StatefulShellBranch>[
          StatefulShellBranch(
            navigatorKey: _rootNavigatorMyScreen,
            routes: [
              GoRoute(
                name: BottomRouterName.myScreen,
                path: '/myScreen',
                builder: (context, state) {
                  return MyScreen(
                    key: state.pageKey,
                  );
                },
                routes: [
                  GoRoute(
                    name: BottomRouterName.detailsScreen,
                    path: 'detailsScreen',
                    builder: (context, state) {
                      return const DetailsScreen();
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: _rootNavigatorFavoriteScreen,
            routes: [
              GoRoute(
                name: BottomRouterName.favoriteScreen,
                path: '/favoriteScreen',
                builder: (context, state) {
                  return FavoriteScreen(
                    key: state.pageKey,
                  );
                },
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: '/firstScreen',
        name: 'firstScreen',
        // parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          return const FirstScreen();
        },
      ),
    ],
  );
}
