import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/custom_font_style.dart';
import 'package:food_delivery_app/functions/authFunctions.dart';
import 'package:food_delivery_app/pages/main_screen.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formkey = GlobalKey<FormState>();
  String emailAddress = "", password = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 50,
        left: 50,
        right: 50,
      ),
      child: Form(
        key: _formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                errorStyle: CustomFontStyle.semiBoldText.copyWith(
                  color: Colors.red,
                ),
                labelText: "Email address",
                labelStyle: CustomFontStyle.semiBoldText.copyWith(
                  color: Colors.grey,
                ),
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedErrorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              key: ValueKey("email"),
              validator: (value) {
                if (!(value.toString().contains("@"))) {
                  return "Invalid Email";
                } else {
                  return null;
                }
              },
              onSaved: (newValue) {
                setState(() {
                  emailAddress = newValue!;
                });
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: CustomFontStyle.semiBoldText.copyWith(
                    color: Colors.grey,
                  ),
                  errorStyle: CustomFontStyle.semiBoldText.copyWith(
                    color: Colors.red,
                  ),
                  errorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedErrorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                key: ValueKey("password"),
                validator: (value) {
                  if (value.toString().length < 6) {
                    return "Password is too small";
                  } else {
                    return null;
                  }
                },
                onSaved: (newValue) {
                  setState(() {
                    password = newValue!;
                  });
                }),
            const SizedBox(height: 20),
            Text(
              "Already have an account?",
              style: CustomFontStyle.semiBoldText.copyWith(
                color: const Color.fromRGBO(255, 75, 58, 1),
                fontSize: 17,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.16),
            GestureDetector(
              onTap: () {
                if (_formkey.currentState!.validate()) {
                  _formkey.currentState!.save();
                  signUp(emailAddress, password);
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(),
                      ),
                      (route) => false);
                }
              },
              child: Container(
                height: 70,
                width: 314,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(255, 70, 10, 1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(
                  child: Text(
                    "Sign Up",
                    style: CustomFontStyle.semiBoldText.copyWith(
                      fontSize: 17,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
