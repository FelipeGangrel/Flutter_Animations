import 'package:flutter/material.dart';

class Loader extends StatefulWidget {
  @override
  LoaderState createState() => new LoaderState();
}

class LoaderState extends State<Loader> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = new AnimationController(
      duration: new Duration(milliseconds: 2000),
      vsync: this,
    );
    animation = new CurvedAnimation(
      parent: controller,
      curve: Curves.bounceInOut,
    );
    animation.addListener(() {
      this.setState(() {});
    });
    animation.addStatusListener((AnimationStatus status) {
    });
    controller.repeat();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          child: new Icon(Icons.favorite,
            color: Colors.red[700],
            size: animation.value * 20 + 120,
          ),
        ),
      ],
    );
  }

}