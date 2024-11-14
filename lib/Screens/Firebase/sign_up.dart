
import 'package:cyber_security_awareness_aibot/Controllers/fire_controller.dart';
import 'package:cyber_security_awareness_aibot/Screens/Firebase/sign_in.dart';
import 'package:cyber_security_awareness_aibot/Widgets/text_field_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class SignUpPage extends StatefulWidget {
  final String userType;
   const SignUpPage({super.key, required this.userType});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _userName = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  bool _checkBoxVal = false;
  bool _buttonStatus = false;

  //Password Settings
  var _checkCapital = false;
  var _checkSmall = false;
  var _checkNumbers = false;
  var _checkSpecial = false;

  bool _hidePassword = true;
  var _passwordIcon = FontAwesomeIcons.eyeSlash;

  // is Form Filled
  final GlobalKey<FormState> _goodToGo = GlobalKey<FormState>();

  //FireController
  final _fireController = Get.put(FireController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return Scaffold(
          body: Center(
            child: Padding(
              padding:  const EdgeInsets.all(10.0),
              child: Form(
                key: _goodToGo,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .3,
                          child: Image.asset(
                              'assets/images/Logo.jpeg')),
                       Text(
                        "Create your new account.",
                        style: TextStyle(
                            color: Colors.indigo.shade900,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width*.9,
                                child:  const Text(
                                  "create an account to start looking for ambulance you need.",
                                  style: TextStyle(color: Colors.black54),
                                  softWrap: true,
                                  overflow: TextOverflow.fade,
                                  maxLines: 2,
                                ),
                              ),
                               const SizedBox(
                                height: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                      TextFieldWidget(
                        textCapitalization: TextCapitalization.sentences,
                        labelText: "User Name",
                        labelColor:  Colors.indigo.shade900,
                        validate: (value) {
                          if (!value!.startsWith(RegExp(r'[A-Z][a-z]'))) {
                            return "Start with Capital letter";
                          } else if (value.isEmpty) {
                            return "username required";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.name,
                        controller: _userName,
                        hintText: "Enter your username",
                        prefixIcon:  Icon(
                          Icons.person,
                          color: Colors.indigo.shade900,
                        ),
                        fillColor: Colors.white,
                        focusBorderColor:
                             Colors.indigo.shade900,
                        errorBorderColor: Colors.red,
                      ),
                       const SizedBox(
                        height: 20,
                      ),
                      TextFieldWidget(
                        labelText: "Email Address",
                        labelColor:  Colors.indigo.shade900,
                        validate: (value) {
                          if (!value!.endsWith("@gmail.com")) {
                            return "Invalid email";
                          } else if (value.isEmpty) {
                            return "email required";
                          } else {
                            return null;
                          }
                        },
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                        hintText: "Enter your email",
                        prefixIcon:  Icon(
                          Icons.email,
                          color: Colors.indigo.shade900,
                        ),
                        fillColor: Colors.white,
                        focusBorderColor:
                             Colors.indigo.shade900,
                        errorBorderColor: Colors.red,
                      ),
                       const SizedBox(
                        height: 20,
                      ),
                      TextFieldWidget(
                        validate: (value) {
                          for (var i = 0; i < value!.length; i++) {
                            debugPrint(value[i]);
                            if (value.codeUnitAt(i) >= 65 &&
                                value.codeUnitAt(i) <= 90) {
                              _checkCapital = true;
                            }
                            if (value.codeUnitAt(i) >= 97 &&
                                value.codeUnitAt(i) <= 122) {
                              _checkSmall = true;
                            }
                            if (value.codeUnitAt(i) >= 48 &&
                                value.codeUnitAt(i) <= 57) {
                              _checkNumbers = true;
                            }
                            if (value.codeUnitAt(i) >= 33 &&
                                    value.codeUnitAt(i) <= 47 ||
                                value.codeUnitAt(i) >= 58 &&
                                    value.codeUnitAt(i) <= 64) {
                              _checkSpecial = true;
                            }
                          }
                          if (value.isEmpty) {
                            return "Password Required";
                          } //else if(passwordRules.hasMatch(value)){
                          // return "Invalid password" ;}
                          else if (!_checkCapital) {
                            return "Capital Letter Required";
                          } else if (!_checkSmall) {
                            return "Small Letter Required";
                          } else if (!_checkNumbers) {
                            return "Number Required";
                          } else if (!_checkSpecial) {
                            return "Special Character Required";
                          } else if (value.length < 8) {
                            return "Atleast 8 characters Required";
                          } else {
                            return null;
                          }
                        },
                        keyboardType: TextInputType.visiblePassword,
                        labelColor:  Colors.indigo.shade900,
                        labelText: "Password",
                        hidePassword: _hidePassword,
                        controller: _password,
                        hintText: "Enter your password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            _hidePassword = !_hidePassword;
                            if (_passwordIcon == FontAwesomeIcons.eyeSlash) {
                              _passwordIcon = FontAwesomeIcons.eye;
                            } else {
                              _passwordIcon = FontAwesomeIcons.eyeSlash;
                            }
                            setState(() {});
                          },
                          child: Icon(_passwordIcon),
                        ),
                        prefixIcon:  Icon(
                          Icons.lock,
                          color: Colors.indigo.shade900,
                        ),
                        fillColor: Colors.white,
                        focusBorderColor:
                             Colors.indigo.shade900,
                        errorBorderColor: Colors.red,
                        suffixIconColor:  Colors.indigo.shade900,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              activeColor:
                                   Colors.indigo.shade900,
                              value: _checkBoxVal,
                              onChanged: (bool? value) {
                                setState(() {
                                  _checkBoxVal = value!;
                                  _buttonStatus = !_buttonStatus;
                                });
                              }),
                          Flexible(
                            child: RichText(
                                text: TextSpan(children: [
                               const TextSpan(
                                  text: "I Agree with ",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: "Terms and Service ",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style:  TextStyle(
                                    color: Colors.indigo.shade900,
                                  )),
                               const TextSpan(
                                  text: "and ",
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                  text: "Privacy Policy",
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {},
                                  style:  TextStyle(
                                    color: Colors.indigo.shade900,
                                    overflow: TextOverflow.visible,
                                  ))
                            ])),
                          ),
                        ],
                      ),
                      _fireController.isLoading.value
                          ?  CircularProgressIndicator(
                              color: Colors.indigo.shade900,
                            )
                          : ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  shape:  const ContinuousRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                    Radius.circular(30),
                                  )),
                                  backgroundColor:
                                       Colors.indigo.shade900,
                                  shadowColor: Colors.black,
                                  elevation: 10),
                              onPressed: _buttonStatus
                                  ? () {
                                      if (_goodToGo.currentState!.validate()) {
                                        _fireController.registerUser(
                                            _email.text,
                                            _password.text,
                                            context,
                                            _userName.text,
                                            widget.userType);
                                      }
                                    }
                                  : null,
                              child:  const Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              )),
                       const SizedBox(
                        height: 10,
                      ),
                       const Divider(
                                              thickness: 1,
                                            ),
                       const SizedBox(
                        height: 20,
                      ),
                       const SizedBox(
                        height: 20,
                      ),
                      RichText(
                          text: TextSpan(
                        children: [
                           const TextSpan(
                            text: "Already have an account? ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          TextSpan(
                              text: "Sign In",
                              style:  TextStyle(
                                  color: Colors.indigo.shade900,
                                  fontWeight: FontWeight.w500),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Get.off(SignInPage());
                                })
                        ],
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
