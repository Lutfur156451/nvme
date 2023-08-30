import 'package:get/get.dart';

String baseUrl="https://jsonplaceholder.typicode.com";

class NetworkClient extends GetConnect {
  Future<Response> getRequest(endPoint) async {
    return await get(_getUrl(endPoint)).timeout(const Duration(seconds: 16));
  }
  String _getUrl(endPoint)=>baseUrl+endPoint;
}
