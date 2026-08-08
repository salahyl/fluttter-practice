import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final _emailkey = GlobalKey<FormState>();
  final _passwordkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F2ED),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 245,
                height: 117,
                child: Text(
                  'Welcome back! Glad to see you, Again!',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 30,
                    fontFamily: 'Sora',
                    fontWeight: FontWeight.w600,
                    height: 1.3,
                  ),
                ),
              ),
              SizedBox(height: 60),
              SizedBox(
                height: 51,
                width: 299,
                child: Form(
                  key: _emailkey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is requied!!';
                      }
                      return null;
                    },
                    controller: emailcontroller,
                    cursorColor: const Color(0xFFC67C4E),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDD6C8),
                      labelText: 'Enter your Email',
                      labelStyle: const TextStyle(
                        color: Color(0xFF898989),
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xFFC67C4E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xFFC67C4E)),
                      ),
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: const Color(0xFFC67C4E),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              SizedBox(
                height: 51,
                width: 299,
                child: Form(
                  key: _passwordkey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is requied!!';
                      }
                      return null;
                    },
                    controller: passwordcontroller,
                    cursorColor: const Color(0xFFC67C4E),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFEDD6C8),
                      labelText: 'Enter your Password',
                      labelStyle: const TextStyle(
                        color: Color(0xFF898989),
                        fontFamily: 'Sora',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xFFC67C4E)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Color(0xFFC67C4E)),
                      ),
                      prefixIcon: Icon(
                        Icons.vpn_key_outlined,
                        color: const Color(0xFFC67C4E),
                      ),
                    ),

                    obscureText: true,
                  ),
                ),
              ),
              SizedBox(height: 17),
              SizedBox(
                width: 299,
                height: 19,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: InkWell(
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'DMSerifDisplay',
                          fontWeight: FontWeight(400),
                          color: Color(0xFF6A707C),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 16),
              SizedBox(
                width: 256,
                height: 51,
                child: ElevatedButton(
                  onPressed: () {
                    if (_emailkey.currentState!.validate() &&
                        _passwordkey.currentState!.validate()) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFC67C4E),
                    overlayColor: Color(0xFFEDD6C8),
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'PlusJakartaSans',
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
