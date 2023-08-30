import 'package:api_call_nvme/network/network_client.dart';
import 'package:api_call_nvme/service/model/model.dart';
import 'package:get/get.dart';

import '../model/error_model.dart';

String endPoint = "/posts";

class DataRepository {
  NetworkClient networkClient;
  DataRepository(this.networkClient);

  Future<DemoModel?> getRepository() async {
    Response response = await networkClient.getRequest(endPoint);
    if (response.status.hasError) {
      return Future.error(ErrorModel.fromJson(response.body));
    } else {
      return DemoModel.fromJson(response.body);
    }
  }
}
