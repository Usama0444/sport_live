import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sport_live/Controllers/AuthController.dart';
import 'package:sport_live/Screens/NavBarScreen.dart';
import 'package:sport_live/constant/constants.dart';
import 'package:sport_live/constant/themes.dart';
import 'package:sport_live/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);
  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  DateTime date = DateTime.now();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  FocusNode phoneFocusNode = FocusNode();
  FocusNode passwordFocusNode = FocusNode();
  var _obscureConfirmText = true;
  final _formKey = GlobalKey<FormState>();
  var authController = Get.put(AuthController(), permanent: true);
  @override
  void dispose() {
    phoneFocusNode.dispose();
    passwordController.dispose();
    phoneController.dispose();
    passwordFocusNode.dispose();
    super.dispose();
  }

  String? _validatePassword(String? value) {}

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Login',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: AppConstant.SIZE_TITLE20,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: AllCoustomTheme.getThemeData().backgroundColor,
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.only(left: 16, top: 8, bottom: 4, right: 16),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 5),
                          child: Center(
                            child: TextFormField(
                              onTap: () {
                                Future.delayed(const Duration(milliseconds: 100)).then((value) {
                                  setState(() {});
                                });
                              },
                              controller: phoneController,
                              focusNode: phoneFocusNode,
                              textAlignVertical: TextAlignVertical.center,
                              keyboardType: TextInputType.phone,
                              textInputAction: TextInputAction.done,
                              decoration: InputDecoration(
                                hintText: "Phone Number",
                                fillColor: Colors.black,
                                border: InputBorder.none,
                                prefixText: phoneFocusNode.hasFocus || phoneController.text.isNotEmpty ? "+91 " : '',
                                prefixStyle: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: AppConstant.SIZE_TITLE16,
                                  color: AllCoustomTheme.getBlackAndWhiteThemeColors(),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: AppConstant.SIZE_TITLE16,
                                color: AllCoustomTheme.getBlackAndWhiteThemeColors(),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Phone number can not be empty';
                                } else {
                                  return null;
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 12, bottom: 5),
                          child: Center(
                            child: TextFormField(
                              onTap: () {
                                Future.delayed(const Duration(milliseconds: 100)).then((value) {
                                  setState(() {});
                                });
                              },
                              controller: passwordController,
                              autofocus: false,
                              focusNode: passwordFocusNode,
                              keyboardType: TextInputType.text,
                              textInputAction: TextInputAction.done,
                              obscureText: _obscureConfirmText,
                              decoration: InputDecoration(
                                hintText: "Password",
                                fillColor: Colors.black,
                                border: InputBorder.none,
                                suffixIcon: GestureDetector(
                                  dragStartBehavior: DragStartBehavior.down,
                                  onTap: () {
                                    setState(() {
                                      _obscureConfirmText = !_obscureConfirmText;
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 14),
                                    child: Icon(
                                      _obscureConfirmText ? Icons.visibility_off : Icons.visibility,
                                      semanticLabel: _obscureConfirmText ? 'show password' : 'hide password',
                                    ),
                                  ),
                                ),
                              ),
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: AppConstant.SIZE_TITLE16,
                                color: AllCoustomTheme.getBlackAndWhiteThemeColors(),
                              ),
                              onEditingComplete: () {
                                FocusScope.of(context).requestFocus(FocusNode());
                              },
                              validator: _validatePassword,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(right: 14, left: 14, bottom: 14),
                  child: GestureDetector(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        authController.login();
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: AllCoustomTheme.getThemeData().primaryColor,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Center(
                          child: Text(
                        'Login',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: AppConstant.SIZE_TITLE18,
                          fontWeight: FontWeight.bold,
                          color: AllCoustomTheme.getThemeData().backgroundColor,
                        ),
                      )),
                    ),
                  )),
              // Padding(
              //     padding: const EdgeInsets.only(right: 14, left: 14, bottom: 14),
              //     child: GestureDetector(
              //       onTap: () {
              //         Navigator.push(context, MaterialPageRoute(builder: (_) => const Text('')));
              //       },
              //       child: Container(
              //         height: 50,
              //         decoration: BoxDecoration(
              //           color: AllCoustomTheme.getThemeData().primaryColor,
              //           borderRadius: BorderRadius.circular(16),
              //         ),
              //         child: Center(
              //             child: Text(
              //           'Forgot Password',
              //           style: TextStyle(
              //             fontFamily: 'Poppins',
              //             fontSize: AppConstant.SIZE_TITLE18,
              //             fontWeight: FontWeight.bold,
              //             color: AllCoustomTheme.getThemeData().backgroundColor,
              //           ),
              //         )),
              //       ),
              //     )),
            ],
          ),
        ),
      ),
    );
  }

  void _submit() async {}

  Future<void> _loginUser() async {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const NavBarScreen(),
      ),
    );
  }
}
