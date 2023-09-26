import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _userNameField(),
              SizedBox(height: 10,),
              _passwordField(),
              SizedBox(height: 10,),
              _loginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _passwordField(){
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        icon: Icon(Icons.security),
        hintText: "Password",
      ),
    );
  }
  Widget _userNameField(){
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.verified_user),
        hintText: "Username",
      ),
    );
  }
  Widget _loginButton (){
    return ElevatedButton(onPressed: (){
      print("Pressed ---------->>");
    }, child: const Text("Sign In", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),);
  }
}
