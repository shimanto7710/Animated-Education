import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../three/threeJsFlutter.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
            itemCount: controller.animationList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Get.toNamed(Routes.DETAILS, arguments: controller.animationList[index].script);
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: SizedBox(
                          key: UniqueKey(),
                          width: controller.graphWidth.value,
                          height: controller.graphHeight.value,
                          child: ThreeJsWidget(
                            getControllerReference:
                                controller.getWebControllerReference,
                            getSetStateJS: controller.getSetStateJS,
                            // getSetStateJS: getSetStateJs,
                            extraScript: controller.animationList[index].script,
                            onMessage: (String message) {},
                          ),
                        ),
                      ),
                      const SizedBox(width: 20,),
                      Expanded(
                          flex: 3,
                          child: Text(controller.animationList[index].title)),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }

  
}
