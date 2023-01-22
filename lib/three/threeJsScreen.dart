import 'dart:async';
import 'dart:convert';
import 'package:animated_education/three/threeJsFlutter.dart';
import 'package:flutter/material.dart';

class ThreeJsScreen extends StatefulWidget {
  ThreeJsScreen({Key? key}) : super(key: key);

  @override
  _ThreeJsState createState() => _ThreeJsState();
}

class _ThreeJsState extends State<ThreeJsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('Echarts Demon'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Text('Reactive updating and tap event',
                    style: TextStyle(fontSize: 20)),
              ),
              const Text('- data will be fetched in a few seconds'),
              const Text('- tap the bar and trigger the snack'),
              SizedBox(
                key: UniqueKey(),
                width: 300,
                height: 250,
                child: ThreeJs(
                  option: '''
                    const ambient = new THREE.AmbientLight(0x404040, 5)
const point = new THREE.PointLight(0xE4FF00, 1, 10)
point.position.set(3, 3, 2)
scene.add(ambient)
scene.add(point)
                  ''',
                  onMessage: (String message) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}