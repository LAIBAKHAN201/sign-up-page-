import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'success_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  // Define correct credentials
  final String correctEmail = 'laibakhan119225@gmail.com';
  final String correctPassword = 'laibakhan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome Back!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),

            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email / Username', border: OutlineInputBorder()),
            ),
            SizedBox(height: 16),

            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
            ),

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: () {}, child: Text("Forgot Password?")),
            ),

            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                String enteredEmail = emailController.text.trim();
                String enteredPassword = passwordController.text.trim();

                if (enteredEmail == correctEmail && enteredPassword == correctPassword) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => SuccessScreen(name: "Laiba"),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Invalid email or password'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                backgroundColor: Colors.orange,
              ),
              child: Text("Log In"),
            ),

            SizedBox(height: 20),
            Center(child: Text("Or log in")),

            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.g_mobiledata, color: Colors.white),
              label: Text("LOGIN WITH GOOGLE"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red, minimumSize: Size(double.infinity, 50)),
            ),

            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.facebook, color: Colors.white),
              label: Text("LOGIN WITH FACEBOOK"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, minimumSize: Size(double.infinity, 50)),
            ),

            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have account? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => SignupScreen()));
                  },
                  child: Text("Sign Up", style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
