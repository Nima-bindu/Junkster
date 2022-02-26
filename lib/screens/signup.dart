import 'package:flutter/material.dart';
import 'package:login/components/under_part.dart';
import 'package:login/components/pagetitle.dart';
import 'package:login/components/upsidesignup.dart';
import 'package:login/constants.dart';
import 'package:login/screens/screens.dart';
import 'package:login/widgets/rounded_input.dart';
import 'package:login/widgets/widgets.dart';
import 'package:login/widgets/rounded_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Stack(
              children: [
                const UpsideSignup(
                  imgUrl: "assets/circle.png",
                ),
                const PageTitle(title: 'Create to your Account'),
                Padding(
                  padding: const EdgeInsets.only(top: 320),
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 8),
                        iconButton(context),
                        const SizedBox(
                          width: 20,
                        ),
                        Form(
                            child: Column(
                          children: [
                            const RoundedInputField(
                                hintText: "Name", icon: Icons.person),
                            const RoundedInputField(
                                hintText: "Phone", icon: Icons.call),
                            const RoundedInputField(
                                hintText: "Address", icon: Icons.house),
                            const RoundedInputField(
                                hintText: "Email", icon: Icons.email),
                            const RoundedPasswordField(),
                            RoundedButton(text: 'Register', press: () {}),
                            const SizedBox(
                              height: 10,
                            ),
                            UnderPart(
                              title: 'Already have an Account?',
                              navigatorText: 'Login Here',
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginScreen()));
                              },
                            ),
                          ],
                        ))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
