import 'package:flutter/material.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:internshala1/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     // backgroundColor: Colors.grey,
      appBar: AppBar(
        //debugShowCheckedModeBanner: false,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 240, 29, 29),
       
       
       
       
       
       
        title: Text('Register Page'),
      ),
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
  
  'Sign up 1 of 4',
  textAlign: TextAlign.justify, 
  style: TextStyle(
   
    fontSize: 10,
    fontWeight: FontWeight.bold,
  ),
),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                width: double.infinity,
            
                child: Column(
                  children: [
                    Center(
                      child: Padding(
                        padding: EdgeInsets.all(40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(
                                Icons.facebook,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(
                                Icons.apple,
                                size: 30,
                                color: const Color.fromARGB(255, 241, 234, 234),
                              ),
                            ),
                            SizedBox(width: 20),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                shape: BoxShape.circle,
                                // borderRadius: BorderRadius.circular(50)
                              ),
                              child: Icon(
                                Icons.g_mobiledata,
                                size: 30,
                                color: const Color.fromARGB(255, 247, 244, 244),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Welcome',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'First Name',
                              hintText: 'Enter your first name',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter first name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['username'] = value;
                            },
                          ),
                          SizedBox(height: 20),
            
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              hintText: 'Enter your email',
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
            ),
                            
            
                            
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter email';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['email'] = value;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Phone Number',
                              hintText: 'Enter your phone number',
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter phone number';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['phone'] = value;
                            },
                          ),
                          SizedBox(height: 20),
            
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Enter your password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['password'] = value;
                            },
                          ),
                          SizedBox(height: 20),
            
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Re-enter Password',
                              hintText: 'Re-enter your password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter password';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['password'] = value;
                            },
                          ),
                          SizedBox(height: 20),
            
                          SizedBox(
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    //Navigator.pop(context);
                                    Navigator.pushReplacement(
  context,
  MaterialPageRoute(builder: (context) => const LoginScreen()),
);
                                  },
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
            
                                Padding(
                                  padding: const EdgeInsets.only(left: 60.0),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_formkey.currentState!.validate()) {
                                        _formkey.currentState!.save();
                                        print(userData);
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 30,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      backgroundColor: Colors.blue,
                                    ),
                                    child: const Text(
                                      'Register',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color.fromARGB(255, 225, 223, 227),
                                      ),
                                    ),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
