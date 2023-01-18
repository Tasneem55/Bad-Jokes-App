import 'package:booking_app/UI/login.dart';
import 'package:booking_app/UI/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/button.dart';
import '../widgets/signin_with_fga_widget.dart';
import '../widgets/text_form_field.dart';

class LoginWithFGA extends StatefulWidget {
  const LoginWithFGA({Key? key}) : super(key: key);

  @override
  State<LoginWithFGA> createState() => _LoginWithFGAState();
}

class _LoginWithFGAState extends State<LoginWithFGA> {
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
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Let\'s you in',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 75,
                ),
                const FGAWidget(text: 'Continue with Facebook',img: 'assets/images/facebook.svg',),
                const SizedBox(
                  height: 25,
                ),
                const FGAWidget(text: 'Continue with Google',img: 'assets/images/google-plus.svg',),
                const SizedBox(
                  height: 25,
                ),
                const FGAWidget(text: 'Continue with Twitter',img: 'assets/images/twitter.svg',),
                const SizedBox(
                  height: 40,
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
                        'or',
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
                  height: 40,
                ),
                Button(
                  text: 'Sign in with password',
                  pageName: '/login' ,
                ),
                const SizedBox(
                  height: 60,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account? ',
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUp()),
                          );
                        },
                        child: const Text(
                          ' Sign up',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        )),
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
