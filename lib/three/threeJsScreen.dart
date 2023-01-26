import 'dart:async';
import 'dart:convert';

import 'package:animated_education/three/threeJsFlutter.dart';
import 'package:flutter/material.dart';

// import 'package:number_display/number_display.dart';

// final display = createDisplay(decimal: 2);

class ThreeJsScreen extends StatefulWidget {
  ThreeJsScreen({Key? key}) : super(key: key);

  @override
  _ThreeJsScreenState createState() => _ThreeJsScreenState();
}

class _ThreeJsScreenState extends State<ThreeJsScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Function? jsState;
  void getSetStateJs(Function jState){
    jsState=jState;
  }

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
                child: ThreeJsWidget(
                  getSetStateJS: getSetStateJs,
                  extraScript: '''
                    alert("Hello! I am an alert box!!");
                    const scene = new THREE.Scene();
                    const camera = new THREE.PerspectiveCamera( 75, window.innerWidth / window.innerHeight, 0.1, 1000 );
              
                    const renderer = new THREE.WebGLRenderer();
                    renderer.setSize( window.innerWidth, window.innerHeight );
                    document.body.appendChild( renderer.domElement );
              
                    const geometry = new THREE.BoxGeometry( 1, 1, 1 );
                    const material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
                    const cube = new THREE.Mesh( geometry, material );
                    scene.add( cube );
              
                    camera.position.z = 5;
              
                    function animate() {
                      requestAnimationFrame( animate );
              
                      cube.rotation.x += 0.01;
                      cube.rotation.y += 0.01;
              
                      renderer.render( scene, camera );
                    };
              
                    animate();
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