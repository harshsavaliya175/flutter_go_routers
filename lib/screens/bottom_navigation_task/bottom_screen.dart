import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int selectedScreenIndex = 0;

  void goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    void goBranch(int index) {
      selectedScreenIndex = index;
      setState(() {});
      widget.navigationShell.goBranch(
        index,
        initialLocation: index == widget.navigationShell.currentIndex,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Screen'),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: widget.navigationShell,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(
            context.namedLocation('firstScreen'),
          );
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          goBranch(index);
        },
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'My Screen',
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: 'Favorite Screen',
          ),
        ],
        selectedIndex: selectedScreenIndex,
      ),
    );
  }
}
