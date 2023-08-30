import 'package:api_call_nvme/service/data/repository.dart';
import 'package:api_call_nvme/service/model/model.dart';
import 'package:get/get.dart';

import '../../network/network_client.dart';

class ApiController extends GetxController {
  DemoModel ?demoModel;
  DataRepository dataRepository = DataRepository(NetworkClient());

  getPostUser() async {
    await dataRepository.getRepository().then((value) {
      print(value);
    });
  }
}
