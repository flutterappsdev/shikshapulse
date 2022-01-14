import 'package:flutter/material.dart';

class RespwdScreen extends StatefulWidget {
  static const String id ='resetpwh';
  const RespwdScreen({Key? key}) : super(key: key);

  @override
  _RespwdScreenState createState() => _RespwdScreenState();
}

class _RespwdScreenState extends State<RespwdScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Reset Password'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Positioned(
                  top: 50,
                  left: 150,
                  child: Image.asset('assets/images/Logo.png'),
                ),
                Image.asset('assets/images/resetpwd.png'),
              ],
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                children:  [
                  Text(
                    'Reset your password',
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'It’s ok to forget the passwords at times, we will help you to reset it. Please enter your registered email id.',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                   // controller: _userNameTextController,
                    keyboardType: TextInputType.multiline,
                    decoration: const InputDecoration(
                      suffixIcon: Icon(Icons.email),
                      hintText: 'Email or Username',
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(

                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(3, 78, 162, 1),
                          minimumSize: Size(200, 35)

                      ),
                      onPressed: (){},
                      child: const Text('Reset Password')),
                  TextButton(
                       onPressed: (){},
                      child: const Text('Go back to login')),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
