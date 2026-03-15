import 'package:flutter/material.dart';
//import 'package:form_field_validator/form_field_validator.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_widget_cache.dart';

class forminfo_screen extends StatefulWidget {
  const forminfo_screen({Key? key}) : super(key: key);

  @override
  State<forminfo_screen> createState() => _forminfo_screenState();
}

class _forminfo_screenState extends State<forminfo_screen> {
  Map userData = {};
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     // backgroundColor: Colors.grey,
      appBar: AppBar(
leading: IconButton(
    onPressed: () {},
    icon: Icon(Icons.arrow_back),
  ),
        //debugShowCheckedModeBanner: false,
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 240, 29, 29),
      
      
      
      
      
      
       
       
       
       
       
        title: Text('form info page'),
      ),
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
  
  'Sign up 2 of 4',
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
                    Form(
                      key: _formkey,
                      child: Column(
                        children: <Widget>[





SizedBox(),




                          Text(
                            'Farm Info',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Business Name',
                              hintText: 'Enter your business name',
                              prefixIcon: Icon(
                                Icons.business,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter business name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['businessName'] = value;
                            },
                          ),
                          SizedBox(height: 20),
            
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Informal Name',
                              hintText: 'Enter your informal name',
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
                                return 'Please enter informal name';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['informalName'] = value;
                            },
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Street Address',
                              hintText: 'Enter your street address',
                              prefixIcon: Icon(
                                Icons.home,
                                color: Colors.lightBlue,
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.blue),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Please enter street address';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['streetAddress'] = value;
                            },
                          ),
                          SizedBox(height: 20),
            
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: 'City',
                              hintText: 'Enter your city',
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
                                return 'Please enter city';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              userData['city'] = value;
                            },
                          ),
                          SizedBox(height: 20),

                          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField(



                  // width: 150,
                    decoration: InputDecoration(
                      labelText: 'State',
                      hintText: 'Select your state',
                      prefixIcon: Icon(
                        Icons.map,
                        color: Colors.lightBlue,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    items: [
                      DropdownMenuItem(
                        child: Text('California'),
                        value: 'California',
                      ),
                      DropdownMenuItem(
                        child: Text('Texas'),
                        value: 'Texas',
                      ),
                      DropdownMenuItem(
                        child: Text('Florida'),
                        value: 'Florida',
                      ),
                    ],
                    onChanged: (value) {
                      userData['state'] = value;
                    },
                    validator: (value) {
                      if (value == null) {
                        return 'Please select a state';
                      }
                      return null;
                    },




                ),
              ),
              SizedBox(width: 20),


      Expanded(child: TextFormField(
    decoration: InputDecoration(
      labelText: 'ZipCode',
      hintText: 'Enter your zipcode',
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
        return 'Please enter zipcode';
      }
      return null;
    },
    onSaved: (value) {
      userData['zipcode'] = value;
    },
  ),)
    ],
  ),
                          
            
                          SizedBox(height: 20),
            
                          SizedBox(
                            child: Row(
                              children: [
                                 ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 10,
                                      horizontal: 30,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    backgroundColor: Colors.grey,
                                  ),
                                  child: const Icon(
                                    Icons.arrow_back,
                                    color: Color.fromARGB(255, 225, 223, 227),
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
          ])
        ))],
        ),
        ),
        );  
  }
}
