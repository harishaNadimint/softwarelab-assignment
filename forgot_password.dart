


import 'package:flutter/material.dart';
import 'package:internshala1/otp.dart';

class ForgotPasswordPage extends StatefulWidget {
  ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  _ForgotPasswordPageState();

  final _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  // Future<void> sendForgotPasswordLink() async {
    // if (_formKey.currentState!.validate()) {
      // LoginHelper.forgotPasswordSendLink(_emailController.text).then((value) => {
        // if (value) {Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordVerificationPage(email: _emailController.text)))}
      // });
    // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text('Password change', style: TextStyle(color: Colors.black87)),
            leading: IconButton(icon: const Icon(Icons.arrow_back, color: Colors.black87), onPressed: () => Navigator.of(context).pop())),
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              const Padding(
                  padding: EdgeInsets.fromLTRB(60.0, 30.0, 60.0, 30.0),
                  child: Text('Please input your username',
                      style: TextStyle(fontSize: 16.0, color: Colors.black54, fontWeight: FontWeight.w500), textAlign: TextAlign.center)),
              Form(
                  key: _formKey,
                  child: TextFormField(
                      controller: _emailController,
                      validator: (value) => (value == null || value.isEmpty || (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(value)))
                          ? 'Please enter a valid email'
                          : null,
                      decoration: InputDecoration(
                          labelStyle: const TextStyle(color: Color(0xff4fbba3)),
                          labelText: 'Email',
                          hintText: 'e-mail',
                          border: const OutlineInputBorder(),
                          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Color(0xff4fbba3), width: 2.0)),
                          suffixIcon: IconButton(onPressed: _emailController.clear, icon: const Icon(Icons.clear, color: Colors.black54))),
                      keyboardType: TextInputType.emailAddress)),
              const Spacer(),
              ElevatedButton(
                  style: TextButton.styleFrom(backgroundColor: const Color(0xff4fbba3), padding: const EdgeInsets.symmetric(vertical: 15)),
                   onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Otp())),
                  child: const Text("SEND", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0)))
            ])));
  }
}