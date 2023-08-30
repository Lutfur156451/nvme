import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../service/controller/api_controller.dart';
class ViewScreen extends StatelessWidget {
   ViewScreen({super.key});
  ApiController apiController =Get.put(ApiController());
  @override
  Widget build(BuildContext context) {
    apiController.getPostUser();
    return  Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed:(){
            apiController.getPostUser();
          } , child: const Text("click"))

        ],
      ),
    );
  }
}
