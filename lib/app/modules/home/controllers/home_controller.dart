import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxDouble graphWidth = 300.0.obs;
  RxDouble graphHeight = 250.0.obs;

  WebViewXController? webController;

  Function(String)? setStateJS;

  void getSetStateJS(Function(String) func) {
    setStateJS = func;
  }

  void getWebControllerReference(WebViewXController controller) {
    webController = controller;
  }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> stopPressed() async {
    // webController?.evalRawJavascript(buttonCodeController.text.trim());
    webController?.evalRawJavascript('''
                    // alert("Hello! I am an alert box!!");
                    // material = new THREE.MeshBasicMaterial( { color: 0x00ff00 } );
                    camera.position.z = 100;
              
                    animate();
                  ''');
    // setStateJS?.call('');
  }

  /*void increment() => count.value++;*/
}
