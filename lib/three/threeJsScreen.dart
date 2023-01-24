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

  List<Map<String, Object>> _data1 = [
    {'name': 'Please wait', 'value': 0}
  ];

  getData1() async {
    await Future.delayed(const Duration(seconds: 4));

    const dataObj = [
      {
        'name': 'Jan',
        'value': 8726.2453,
      },
      {
        'name': 'Feb',
        'value': 2445.2453,
      },
      {
        'name': 'Mar',
        'value': 6636.2400,
      },
      {
        'name': 'Apr',
        'value': 4774.2453,
      },
      {
        'name': 'May',
        'value': 1066.2453,
      },
      {
        'name': 'Jun',
        'value': 4576.9932,
      },
      {
        'name': 'Jul',
        'value': 8926.9823,
      }
    ];

    setState(() {
      _data1 = dataObj;
    });
  }

  @override
  void initState() {
    super.initState();

    getData1();
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
                  onMessage: (String message) {
                    // Map<String, Object> messageAction = jsonDecode(message);
                    // print(messageAction);
                    // if (messageAction['type'] == 'select') {
                    //   final item = _data1[messageAction['payload']];
                    //   _scaffoldKey.currentState.showSnackBar(
                    //     SnackBar(
                    //       content: Text(item['name'].toString() + ': ' + display(item['value'])),
                    //       duration: Duration(seconds: 2),
                    //     ));
                    // }
                  },
                ),
              ),


              /*const Padding(
                padding: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Text('Data zoom', style: TextStyle(fontSize: 20)),
              ),
              const Text('- chart capture all gestures'),
              const SizedBox(
                width: 300,
                height: 250,
                child: ThreeJsWidget(
                  captureAllGestures: true,
                  extraScript: '''
                    var base = +new Date(1968, 9, 3);
                    var oneDay = 24 * 3600 * 1000;
                    var date = [];

                    var data = [Math.random() * 300];

                    for (var i = 1; i < 20000; i++) {
                        var now = new Date(base += oneDay);
                        date.push([now.getFullYear(), now.getMonth() + 1, now.getDate()].join('/'));
                        data.push(Math.round((Math.random() - 0.5) * 20 + data[i - 1]));
                    }
                    // alert("Hello! I am an alert box!!");
          
                  ''',
                  option: '''
                    {
                      tooltip: {
                          trigger: 'axis',
                          position: function (pt) {
                              return [pt[0], '10%'];
                          }
                      },
                      toolbox: {
                          feature: {
                              dataZoom: {
                                  yAxisIndex: 'none'
                              },
                              restore: {},
                              saveAsImage: {}
                          }
                      },
                      xAxis: {
                          type: 'category',
                          boundaryGap: false,
                          data: date
                      },
                      yAxis: {
                          type: 'value',
                          boundaryGap: [0, '100%']
                      },
                      dataZoom: [{
                          type: 'inside',
                          start: 0,
                          end: 10
                      }, {
                          start: 0,
                          end: 10,
                          handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                          handleSize: '80%',
                          handleStyle: {
                              color: '#fff',
                              shadowBlur: 3,
                              shadowColor: 'rgba(0, 0, 0, 0.6)',
                              shadowOffsetX: 2,
                              shadowOffsetY: 2
                          }
                      }],
                      series: [
                          {
                              name: 'data',
                              type: 'line',
                              smooth: true,
                              symbol: 'none',
                              sampling: 'average',
                              itemStyle: {
                                  color: 'rgb(255, 70, 131)'
                              },
                              areaStyle: {
                                  color: new echarts.graphic.LinearGradient(0, 0, 0, 1, [{
                                      offset: 0,
                                      color: 'rgb(255, 158, 68)'
                                  }, {
                                      offset: 1,
                                      color: 'rgb(255, 70, 131)'
                                  }])
                              },
                              data: data
                          }
                      ]
                    }
                  ''',
                ),
              ),*/

            ],
          ),
        ),
      ),
    );
  }
}