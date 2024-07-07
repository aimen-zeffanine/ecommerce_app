import 'package:ecommerce_app/constants/global_variables.dart';
import 'package:ecommerce_app/models/user.dart';
import 'package:http/http.dart' as http;

class AuthService {
  void signUpUser({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      User user = User(
        id: '',
        name: name,
        email: email,
        password: password,
        address: '',
        type: '',
        token: '',
        cart: [],
      );
  
      http.Response response = await http.post(
        Uri.parse('$uri/api/signup'),
        body: user.toJson(),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      
    } catch (e) {
      
    }
  }
}