import 'package:flutter/material.dart';
import 'package:budget_buddy_1/view/login/sign_in_view.dart';
import '../../common/color_extension.dart';
import '../../common_widget/round_textfield.dart';
import '../main_tab_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                const Spacer(),
                RoundTextField(
                  title: "E-mail address",
                  controller: txtEmail,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                RoundTextField(
                  title: "Password",
                  controller: txtPassword,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 20,
                ),

                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Use 8 or more characters with a mix of letters,\nnumbers & symbols.",
                      style: TextStyle(color: TColor.gray50, fontSize: 12),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Bottom()));

                  },
                      // defining the shape
                  shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                ),
               
                const Spacer(),
                Text(
                  "Do you already have an account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: TColor.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 20,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  height: 50,
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignInView()));

                  },
                  color: Color(0xff368983),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: const Text(
                    "Log IN",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 18
                    ),
                  ),
                )
              ],
            ),
        ),
      ),
    );
  }
}