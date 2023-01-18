import '../API/api_provider.dart';

class RegisterLogic {
  Future<Map> register(String email,String password,String password_confirmation,String name){
    ApiProvider apiProvider = ApiProvider();
    return  apiProvider.register(email,password,password_confirmation,name);
  }

}