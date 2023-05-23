import 'package:flutter/material.dart';
import 'package:parallax/widget/animated_container.dart';
import 'package:parallax/widget/animated_drawer.dart';
import 'package:parallax/widget/draggable_card.dart';
import 'package:parallax/widget/draggable_widget.dart';
import 'package:parallax/widget/expandable_fab.dart';
import 'package:parallax/widget/parallax_page.dart';
import 'package:parallax/widget/staggered_menu_animation.dart';

class ListOfItems extends StatelessWidget {
  const ListOfItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
     // drawer: Drawer(),
      body: Center(
        child: ListView(
          children: [
            const SizedBox(
              height: 60,
            ),
            ListTile(
              title: const Text("parallax Effect"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ParallaxPage()));
              },
            ),
            ListTile(
              title: const Text("Animated Container"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const AnimatedContainerApp()));
              },
            ),
            ListTile(
              title: const Text("draggable Card"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const PhysicsCardDragDemo()));
              },
            ),
            ListTile(
              title: const Text("Staggered menu Animation"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ExampleStaggeredAnimations()));
              },
            ),
            ListTile(
              title: const Text("Expandable Fab"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ExampleExpandableFab()));
              },
            ),
            ListTile(
              title: const Text("draggable Widget"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ExampleDragAndDrop()));
              },
            ),
             ListTile(
              title: const Text("Animated Drawer"),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const AnimatedDrawer()));
              },
            )
          ],
        ),
      ),
    );
  }
}
