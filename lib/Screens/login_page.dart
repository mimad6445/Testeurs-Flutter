import 'package:flutter/material.dart';
import 'package:testeur/Components/customfield.dart';
import 'package:testeur/Constants/constants.dart';
import 'package:testeur/Screens/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Container(
            height: 350,
            child: Image.asset('assets/bg.png'),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.only(top: 8.0, bottom: 0, left: 20, right: 20),
          child: ListView(
            children: [
              Image.asset(
                'assets/Logo.png',
                height: 220,
              ),
              const MySpace(height: 0.01, width: 0),
              const CustomTextField(
                  labelText: 'E-mail', prefixIcon: Icons.email),
              const MySpace(
                height: 0.035,
                width: 0,
              ),
              const CustomTextField(
                  labelText: 'Password', prefixIcon: Icons.lock),
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                          color: Color.fromARGB(255, 63, 63, 63),
                          decoration: TextDecoration.underline),
                    )),
              ),
              ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {
                    Navigator.pushReplacement<void, void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    'SignIn',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  )),
              const MySpace(height: 0.07, width: 0),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width * 0.8,
                color: Colors.black,
              ),
              const MySpace(height: 0.07, width: 0),
              Row(
                children: [
                  ListView(
                    children: [
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle Facebook login
                            },
                            icon: Icon(Icons.facebook, color: Colors.white),
                            label: Text('Facebook'),
                            style: ElevatedButton.styleFrom(
                              iconColor: Colors.blue,
                            ),
                          ),
                          ElevatedButton.icon(
                            onPressed: () {
                              // Handle Google login
                            },
                            icon: Icon(Icons.g_mobiledata, color: Colors.white),
                            label: Text('Google'),
                            style: ElevatedButton.styleFrom(
                              iconColor: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}
