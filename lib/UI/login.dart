import 'package:booking_app/Logic/login_logic.dart';
import 'package:booking_app/UI/bottom_navigation_bar.dart';
import 'package:booking_app/UI/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:http/http.dart';

import '../widgets/button.dart';
import '../widgets/text_form_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool value = false;
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

void login(String email, password)async {
  try{
Response response = await post(
  Uri.parse('{{baseurl}}/api/register'),
  body: {
    'email' : email,
    'password' : password,
  }
);
if(response.statusCode==200){
print('account created successfully');
}else{
print('Failed');
}

  }catch(e){
    print(e.toString());
  }
}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Login to your account',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.email_outlined),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: const TextStyle(color: Colors.black, fontSize: 18),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide:  const BorderSide(color: Colors.grey, width: 2),
                    ),
                    prefixIcon: const Icon(Icons.lock_open),
                    fillColor: Colors.grey[100],
                    filled: true,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                      activeColor: Colors.green,
                      checkColor: Colors.white,
                      side: const BorderSide(color: Colors.green, width: 2.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      value: value,
                      onChanged: (value) {
                        setState(() {
                          this.value = value!;
                        });
                      },
                    ),
                    const Text(
                      'Remember me',
                      style: TextStyle(fontSize: 18),
                    ), //Checkbox
                  ], //<Widget>[]
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(25)),
                    child: TextButton(
                      onPressed: () async{
                        LoginLogic logic = LoginLogic();
                        var response = await logic.login(_emailController.text.toString(),_passwordController.text.toString());
                        if (response['status'] == true) {
                          Navigator.pushNamed(context, '/bottom_navigation_bar');
                        }else{
                          print(response['message']);
                        }
                      },
                      child:  const Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 18),),
                    )),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Forgot the password?',
                  style: TextStyle(color: Colors.green),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.6,
                          color: Colors.grey[700],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'or continue with',
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.6,
                          color: Colors.grey[700],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/images/facebook.svg",
                          color: Colors.blueGrey,
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/images/google-plus.svg",
                          color: Colors.blueGrey,
                          height: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Container(
                      width: 70,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Center(
                        child: SvgPicture.asset(
                          "assets/images/twitter.svg",
                          color: Colors.blueGrey,
                          height: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account? ',),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const SignUp()),
                          );
                        },
                        child: const Text(' Sign up',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
