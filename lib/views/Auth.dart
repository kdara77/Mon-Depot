import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show AnimationController, AppBar, BuildContext, Center, Colors, Column, Container, EdgeInsets, ElevatedButton, Image, InputDecoration, Key, MainAxisAlignment, MaterialPageRoute, Navigator, OutlineInputBorder, Row, SafeArea, Scaffold, SingleTickerProviderStateMixin, State, StatefulWidget, Text, TextButton, TextEditingController, TextField, TextStyle, Widget;
import 'package:my_project/views/registerPage.dart';
import 'package:my_project/views/articles.dart';
import 'package:my_project/views/home.dart';
import 'package:my_project/views/detailsPage.dart';
import 'package:my_project/views/registerPage.dart';
import 'package:my_project/views/tabPage.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({Key? key}) : super(key: key);

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Connexion'),
          backgroundColor: Colors.green[800],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/logo_xensa.png',
                  height: 300,
                  width: 300,
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Nom d'utilisateur",
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Mot de passe',
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    '',
                  ),
                ),
                Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[800],   // background color
                      ),
                      child: const Text('Connexion'),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) =>  TabPage())
                            //MaterialPageRoute(builder: (context) =>  HomePage())
                        );
                      },
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      const Text("Vous n'avez pas de compte ?"),
                      TextButton(
                          child: const Text(
                            'Inscrivez-vous ici',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) =>  Register()));
                          }
                          //signup screen

                          )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
