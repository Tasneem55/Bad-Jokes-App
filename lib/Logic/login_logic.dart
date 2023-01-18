import '../API/api_provider.dart';

class LoginLogic {
  Future<Map> login(String email,String password){
    ApiProvider apiProvider = ApiProvider();
    return  apiProvider.login(email,password);
  }

}