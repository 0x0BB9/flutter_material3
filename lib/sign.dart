import 'package:flutter/material.dart';

class SignPage extends StatefulWidget {
  @override
  _SignPageState createState() {
    return _SignPageState();
  }
}

const TEXT_NORMAL_SIZE = 14.0;

class _SignPageState extends State<SignPage> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool agreedToTerms = true;

  @override
  Widget build(BuildContext context) {
    final _media = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 50.0, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Image.asset(
                            "assets/images/will_logo.gif",
                            height: _media.height / 7,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "WELCOME BACK!",
                          style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.black87)
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Log in',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w200,
                              fontSize: 40),
                        ),
                        const Text(
                          'to continue.',
                          style: TextStyle(
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w200,
                              fontSize: 40),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          height: _media.height / 3.8,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(30.0),
                              child: Column(
                                children: <Widget>[
                                  Expanded(
                                    child: inputText("USERNAME",
                                        'will@gmail.com', _username, false),
                                  ),
                                  const Divider(
                                    height: 5,
                                  ),
                                  Expanded(
                                      child: inputText(
                                          "PASSWORD", '******', _password, true)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Checkbox(
                              value: agreedToTerms,
                              onChanged: (value) {
                                // When the value of the checkbox changes,
                                // update the FormFieldState so the form is
                                // re-validated.
                                setState(() {
                                  agreedToTerms = value!;
                                });
                              },
                            ),
                            const Expanded(
                              child: Text.rich(TextSpan(
                                  text: "I Agree",
                                  children: [
                                    TextSpan(
                                        text:
                                        " any"),
                                    TextSpan(
                                        text: " thing")
                                  ])),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Don't have an account?",
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () => debugPrint("Sign Up Tapped"),
                        child: const Text("Sing Up"),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
              Positioned(
                bottom: _media.height / 5,
                right: 15,
                child: buildSignUpArrowButton(
                  icon: Icons.arrow_forward,
                  iconSize: 19,
                  onTap: () => debugPrint("Signup Tapped"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSignUpArrowButton({
    IconData? icon,
    double? iconSize,
    VoidCallback? onTap,
    double height = 50.0,
    double width = 50.0,
  }) {
    return FloatingActionButton(
      onPressed: onTap,
      child: SizedBox(
        height: height,
        width: width,
        child: Icon(
          icon,
          size: iconSize,
        ),
      ),
    );
  }

  Widget inputText(
    String fieldName,
    String hintText,
    TextEditingController controller,
    bool obSecure,
  ) {
    return TextField(
      style: const TextStyle(height: 1.3),
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: fieldName,
        labelStyle: const TextStyle(
          fontSize: TEXT_NORMAL_SIZE,
          fontFamily: "Montserrat",
          fontWeight: FontWeight.w400,
          letterSpacing: 1,
          height: 0,
        ),
        border: InputBorder.none,
      ),
      obscureText: obSecure,
    );
  }
}
