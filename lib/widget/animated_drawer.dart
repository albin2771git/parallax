import 'package:flutter/material.dart';
class AnimatedDrawer extends StatefulWidget {
  const AnimatedDrawer({super.key});

  @override
  State<AnimatedDrawer> createState() => _AnimatedDrawerState();
}

class _AnimatedDrawerState extends State<AnimatedDrawer>with SingleTickerProviderStateMixin {
 late AnimationController animationController;
  @override
  void initState() {
    animationController=AnimationController(vsync: this,duration:  const Duration(milliseconds: 300));
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  toggleAnimation(){
    animationController.isDismissed?animationController.forward():animationController.reverse();
  }
  @override
  Widget build(BuildContext context) {
      final rightSlide=MediaQuery.of(context).size.width*0.6;

    return AnimatedBuilder(
      animation: animationController,
      
      builder: (context, child) {
       double slide = rightSlide*animationController.value;
    double scale = 1-(animationController.value*0.3);
    return   Scaffold(
        body: Stack(
          children: [
            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              decoration: BoxDecoration(color: Colors.blue.shade200),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  const [
                  ListTile(title: Text("data"),),
                  ListTile(title: Text("data1")),
                  ListTile(title: Text("data2"),),
                  ListTile(title: Text("data3"),),
                  ListTile(title: Text("data4"),),
                ],),
              ),
            ),
            Transform(
              transform: Matrix4.identity()
              ..translate(slide)
              ..scale(scale),
              alignment: Alignment.center,
              child: Container(
                 width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                decoration: BoxDecoration(color: Colors.blue.shade900,borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children:  [
                         IconButton(onPressed:()=>toggleAnimation(), icon: AnimatedIcon(icon: AnimatedIcons.menu_close, progress: animationController,))
                        ],
                      ),
                    ),
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: const Text("Back",style: TextStyle(color: Colors.white),))
                  ],
                ),
              ),
            )
          ],
        ),
      );}
    );
  }
}