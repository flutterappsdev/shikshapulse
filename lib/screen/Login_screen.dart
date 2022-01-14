import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:connectivity/connectivity.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../constant/constants.dart';
import '../screen/Main_screen.dart';
import '../screen/resetpwd_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<ScaffoldState> ScafoldKey = GlobalKey<ScaffoldState>();

  final _userNameTextController = TextEditingController();
  final _passwordTextController = TextEditingController();

  void showSnackBar(String tittle) {
    final snackBar = SnackBar(
      content: Text(
        tittle,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15),
      ),
    );
    ScafoldKey.currentState!.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: ScafoldKey,
      appBar: AppBar(
        title: Text('Siksha Pulse'),
      ),
      //resizeToAvoidBottomInset : false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Image.asset('assets/images/Logo.png'),
                Image.asset('assets/images/LoginScreenImage.png'),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Image.asset('assets/images/LogIntoyourShikaPULSE.png'),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                controller: _userNameTextController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.email),
                  hintText: 'Email or Username',
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: TextFormField(
                controller: _passwordTextController,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  suffixIcon: Icon(Icons.lock),
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Row(
                children: [
                  const Text('Remember me'),
                  Checkbox(
                      value: true,
                      activeColor: Colors.blue,
                      onChanged: (bool? newValue) {
                        setState(() {
                          //checkBoxValue = newValue;
                        });
                      }),
                  const SizedBox(
                    width: 95.0,
                  ),
                  const Text('Forgot Password?'),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(3, 78, 162, 1),
                    minimumSize: Size(200, 35)),
                onPressed: () async {
                  final connResult = await Connectivity().checkConnectivity();
                  if (connResult != ConnectivityResult.mobile &&
                      connResult != ConnectivityResult.wifi) {
                    showSnackBar('Please check you internet connection');
                    return;
                  }

                  if (_userNameTextController.text == "") {
                    showSnackBar('Please enter a valid user name or email');
                    return;
                  }

                  if (_passwordTextController.text == "") {
                    showSnackBar('Please enter a valid password');
                    return;
                  }

                  try {
                    final response = await http.post(
                      Uri.parse(Url + 'login'),
                      headers: {
                        "Accept": "application/json",
                        "Content-Type": "application/json"
                      },
                      body: json.encode(
                        {"email": "institute@mail.com", "password": "123"},
                      ),
                    );
                    print(_userNameTextController.text);
                    print(response.body);

                    var userdata = jsonDecode(response.body);
                    print(userdata["data"]["user"]["name"]);
                  } catch (e) {
                    print("Sig In Error" + e.toString());
                    // showSnackBar(e.toString());
                  }
                  Navigator.pushNamedAndRemoveUntil(
                      context, MainScreen.id, (route) => false);
                },
                child: const Text('LOGIN')),
            const SizedBox(
              height: 5.0,
            ),
            Text('OR'),
            const SizedBox(
              height: 5.0,
            ),
            ElevatedButton(
                onPressed: () async {
                  //Code for Login
                  Navigator.pushNamedAndRemoveUntil(
                      context, RespwdScreen.id, (route) => false);
                },
                child: const Text('Register'))
          ],
        ),
      ),
    );
  }
}
