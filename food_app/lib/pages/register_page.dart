import 'package:flutter/material.dart';
import 'package:food_app/components/my_button.dart';
import 'package:food_app/components/my_textfield.dart';


class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({super.key,
  required this.onTap
  });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   final TextEditingController confirmPasswordController = TextEditingController();


  
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
            const SizedBox(height: 10,),
            MyTextField(controller: confirmPasswordController,
            hintText: "Confirm Password",
            obscureText: true,
            ),
            const SizedBox(height: 15,),
            MyButton(text: "Register",
            onTap: () {},
            ),
            const SizedBox(height: 25,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?",
                style: TextStyle(
                  color: Colors.grey.shade700
                ),
                ),
                const SizedBox(width: 4,),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text("LogIn",
                  style: TextStyle(
                    color: Colors.grey.shade700
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