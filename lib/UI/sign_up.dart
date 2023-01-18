import 'package:booking_app/Logic/register_logic.dart';
import 'package:booking_app/UI/bottom_navigation_bar.dart';
import 'package:booking_app/UI/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/button.dart';
import '../widgets/text_form_field.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool value = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
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
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Create your account',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                 BuildTextFormField(
                   controller: _emailController,
                  text: 'Email',
                  withIcon: true,
                  icon: const Icon(Icons.email_outlined),
                ),
                const SizedBox(
                  height: 15,
                ),
                BuildTextFormField(
                   controller: _nameController,
                  text: 'Name',
                  withIcon: true,
                  icon: const Icon(Icons.person),
                ),
                const SizedBox(
                  height: 15,
                ),
                 BuildTextFormField(
                   controller: _passwordController,
                  text: 'Password',
                  withIcon: true,
                  icon: const Icon(Icons.lock_open),
                ),
                const SizedBox(
                  height: 15,
                ),
                BuildTextFormField(
                  controller: _confirmPasswordController,
                  text: 'Confirm Password',
                  withIcon: true,
                  icon: const Icon(Icons.lock_open),
                ),
                const SizedBox(
                  height: 5,
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
                  height: 5,
                ),
                Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(color: Colors.green,borderRadius: BorderRadius.circular(25)),
                    child: TextButton(
                      onPressed: () async{
                        RegisterLogic logic = RegisterLogic();
                        var response = await logic.register(_emailController.text.toString(),_passwordController.text.toString(),_confirmPasswordController.text.toString(),_nameController.text.toString());
                        if (response['status'] == true) {
                          Navigator.pushNamed(context, '/bottom_navigation_bar');
                        }else{
                          print(response['message']);
                        }
                      },
                      child:  const Text('Sign up',style: TextStyle(color: Colors.white,fontSize: 18),),
                    )),
                const SizedBox(
                  height: 15,
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
                  height: 20,
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
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account? ',),
                    GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Login()),
                          );
                        },
                        child: const Text(' Login',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),)),
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
