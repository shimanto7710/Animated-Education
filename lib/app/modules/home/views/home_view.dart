import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../three/threeJsFlutter.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        key: UniqueKey(),
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
                width: controller.graphWidth.value,
                height: controller.graphWidth.value,
                child: ThreeJsWidget(
                  getControllerReference: controller.getWebControllerReference,
                  getSetStateJS: controller.getSetStateJS,
                  // getSetStateJS: getSetStateJs,
                  extraScript: '''
                    // alert("Hello! I am an alert box!!");
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
                          
                          function changeColor(colorCode) {
                            cube.material.color.setHex( 0xffffff );
                          };
                    changeColor();
                    animate();
                    changeColor( 0xffffff );
                  ''',
                  onMessage: (String message) {},
                ),
              ),
              MaterialButton(
                height: 60,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: EdgeInsets.zero,
                hoverColor: const Color(0xff0044cc),
                // splashColor: SGColors.whiteShade1,
                highlightElevation: 0,
                color: const Color(0xff0044cc).withOpacity(0.4),
                onPressed: controller.stopPressed,
                child: const Text(
                  'Toggle/\nButton',
                  style: TextStyle(
                    color:
                    //Color(0xff0044cc)
                    Colors.white,
                  ),
                ),
              ),
              Container(child: Row(children: [
                MaterialButton(
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                  hoverColor: const Color(0xff0044cc),
                  // splashColor: SGColors.whiteShade1,
                  highlightElevation: 0,
                  color: const Color(0xff0044cc).withOpacity(0.4),
                  onPressed: () {
                    controller.changeColor("0x00ff00");
                  },
                  child: const Text(
                    'Red',
                    style: TextStyle(
                      color:
                      //Color(0xff0044cc)
                      Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                  hoverColor: const Color(0xff0044cc),
                  // splashColor: SGColors.whiteShade1,
                  highlightElevation: 0,
                  color: const Color(0xff0044cc).withOpacity(0.4),
                  onPressed: () {
                    controller.changeColor("0x00ff00");
                  },
                  child: const Text(
                    'Green',
                    style: TextStyle(
                      color:
                      //Color(0xff0044cc)
                      Colors.white,
                    ),
                  ),
                ),
                MaterialButton(
                  height: 60,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.zero,
                  hoverColor: const Color(0xff0044cc),
                  // splashColor: SGColors.whiteShade1,
                  highlightElevation: 0,
                  color: const Color(0xff0044cc).withOpacity(0.4),
                  onPressed: () {
                    controller.changeColor("0x00ff00");
                  },
                  child: const Text(
                    'Blue',
                    style: TextStyle(
                      color:
                      //Color(0xff0044cc)
                      Colors.white,
                    ),
                  ),
                ),
              ]),)
            ],
          ),
        ),
      ),
    );
  }
}
