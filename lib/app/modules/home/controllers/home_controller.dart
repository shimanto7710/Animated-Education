import 'package:animated_education/app/data/scripts.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:webviewx_plus/webviewx_plus.dart';

import '../../../data/three_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  RxDouble graphWidth = 50.0.obs;
  RxDouble graphHeight = 100.0.obs;


  RxList<ThreeModel> animationList = (List<ThreeModel>.of([])).obs;

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
    animationList.add(ThreeModel(id: 1, title: "aaaaaaaaa", script: Scripts.CUBE_SCRIPT, changeColorScript: Scripts.CUBE_SCRIPT_BUTTON_CHANGE));
    animationList.add(ThreeModel(id: 1, title: "bbbbbbb", script: Scripts.CIRCLE_SCRIPT, changeColorScript: Scripts.CUBE_SCRIPT_BUTTON_CHANGE));
    animationList.add(ThreeModel(id: 1, title: "ccccccccc", script: Scripts.CUBE_SCRIPT, changeColorScript: Scripts.CUBE_SCRIPT_BUTTON_CHANGE));
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

}
