import 'package:flutter/material.dart';
import 'package:danceapp/Userdata.dart';
import 'package:danceapp/databaseDB.dart';
import 'package:danceapp/DBOperations.dart';
import 'package:danceapp/textField.dart';
import 'package:danceapp/main.dart';
import 'package:danceapp/Register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          Image(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
            image: AssetImage('images/blackboys.jpg'),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05,
                  top: MediaQuery.of(context).size.height * 0.05,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyApp(),
                      ),
                    );
                  },
                  child: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Icon(
                        Icons.arrow_back_sharp,
                        size: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.42),
                child: Image.asset(
                  'images/Smile.jpg',
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                          MediaQuery.of(context).size.width * 0.1),
                      topRight: Radius.circular(
                          MediaQuery.of(context).size.width * 0.1),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          'Welcome To Beta Dance Club',
                          style: TextStyle(
                              fontSize: 42,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        'Get In',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      formField(context, 'Email/Username', (value) {
                        setState(() => email = value);
                      }),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.025,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 16.0),
                            width: MediaQuery.of(context).size.width / 1.2,
                            height: MediaQuery.of(context).size.height * 0.05,
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.black),
                                borderRadius: BorderRadius.circular(30.0),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 5,
                                      child: TextFormField(
                                        onChanged: (value) {
                                          setState(() {
                                            password = value;
                                          });
                                        },
                                        decoration: InputDecoration(
                                          border: const UnderlineInputBorder(
                                              borderSide: BorderSide.none),
                                          hintText: 'Password',
                                          hintStyle: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: MediaQuery.of(context).size.width * 0.02,
                          left: MediaQuery.of(context).size.width * 0.1,
                          right: MediaQuery.of(context).size.width * 0.1,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(),
                            const Text('Forgot Password?',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.height * 0.05,
                              margin: EdgeInsets.only(
                                  bottom: MediaQuery.of(context).size.height *
                                      0.02),
                              decoration: BoxDecoration(
                                  // border: Border.all(color: Colors.white, width: 3),
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * 0.8,
                                height:
                                    MediaQuery.of(context).size.height * 0.07,
                                child: TextButton(
                                  onPressed: () async {
                                    final db = await database().initalizeDB();

                                    var user =
                                        User(email: email, password: password);
                                    DBOperations(db).insertUser(user);
                                  },
                                  child: const Text('Come In',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.transparent),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account?",
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.7)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const RegisterPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Create one",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 160, 11, 11)),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
