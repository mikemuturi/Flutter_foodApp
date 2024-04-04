import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';
import 'package:food_app/pages/Home_page.dart';


class LoginPage extends StatefulWidget {
   final void Function()? onTap;

  LoginPage({super.key,
 
    required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  

  void login(){
    //authentication


    //if authenticated successfully navigate to home page
    Navigator.push(context,
    MaterialPageRoute(
      builder: (context) => HomePage(),
      )
      );
  }

  @override
  Widget build(BuildContext context) {
  
    return  Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_rounded,
              size: 100,
              color: Colors.grey.shade700,
            ),
            const SizedBox(height: 25,),
            Text( "Food Delivery App",
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey.shade700
              ),
            ),
            const SizedBox(height: 25,),

            MyTextField(controller: emailController,
            hintText: "Email",
            obscureText: false
            ),
            const SizedBox(height: 10,),
            MyTextField(controller: passwordController,
            hintText: "Password",
            obscureText: true,
            ),
            
            const SizedBox(height: 15,),
            MyButton(text: "Sign In",
            onTap: login,
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",
                style: TextStyle(
                  color: Colors.grey.shade700
                ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("Register now",
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            )
          ],
        ),),
    );
  }
}