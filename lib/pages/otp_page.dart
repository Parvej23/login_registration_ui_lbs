import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login_registration/Utils/app_style.dart';
import 'package:login_registration/pages/login_page.dart';
import 'package:login_registration/pages/registration_page.dart';

import '../Utils/app_style.dart';
class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final style= TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.6
  );
  TextEditingController _otpController= TextEditingController();
  TextEditingController _emailController= TextEditingController();
  TextEditingController _passwordController= TextEditingController();
  final _formkey= GlobalKey<FormState>();
  bool passwordObsecured= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 34, right: 34, top: 38),
          child: Form(
            key: _formkey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    ),
                  ),
                  height: 45,
                  width: double.infinity,
                  //color: primary,
                  child: Center(
                    child: Text(
                      'Lastballsix.com',
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                          fontFamily: 'Schyler',
                          color: Colors.white
                      ),
                    ),
                  ),
                ),
                Gap(10),
                Text(
                    'Sign In With A Phone Number',
                    style: style
                ),
                Gap(10),
                /// Otp field
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    controller: _otpController,
                    decoration: InputDecoration(
                      fillColor: primary,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: primary,
                              width: 3.0
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: primary,
                            width: 3.0
                        ),
                      ),
                      hintText: '    OTP Code',
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Icon(Icons.data_array,size: 25,),
                    ),
                  ),
                ),
                Gap(10),
                /// Continue Button
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Continue',style: TextStyle(
                        fontSize: 17
                    ),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                ///Back Button
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                    },
                    child: Text('Back',style: TextStyle(
                        fontSize: 17
                    ),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),

                Gap(10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 1,
                    ),
                    Text('Or', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),),
                    Container(
                      color: Colors.black,
                      width: MediaQuery.of(context).size.width*0.3,
                      height: 1,
                    ),
                  ],
                ),
                Gap(10),
                Text(
                    'Sign In With Email & Password',
                    style: style
                ),
                Gap(10),
                ///Email Field
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      fillColor: primary,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: primary,
                              width: 3.0
                          )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: primary,
                            width: 3.0
                        ),
                      ),
                      hintText: 'Email',
                      contentPadding: EdgeInsets.zero,
                      prefixIcon: Icon(Icons.email,size: 25,),
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'This field can not be empty';
                      }else if(value.contains(RegExp(r'\@'))){
                        return 'Enter a valid email address';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),
                Gap(10),
                ///Password Field
                SizedBox(
                  height: 45,
                  child: TextFormField(
                    controller: _passwordController,
                    obscureText: passwordObsecured,
                    decoration: InputDecoration(
                        fillColor: primary,
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color: primary,
                                width: 3.0
                            )
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: primary,
                              width: 3.0
                          ),
                        ),
                        hintText: 'Password',
                        contentPadding: EdgeInsets.zero,
                        prefixIcon: Icon(Icons.lock,size: 25,),
                        suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              passwordObsecured=!passwordObsecured;
                            });
                          },
                          icon: Icon(
                              passwordObsecured? Icons.visibility_off
                                  : Icons.visibility
                          ),
                        )
                    ),
                    validator: (value){
                      if(value==null || value.isEmpty){
                        return 'This field can not be empty';
                      }else if(value.length<6){
                        return 'Password must be grater than 6 character';
                      }else{
                        return null;
                      }
                    },
                  ),
                ),

                /// Forgot and reset option
                Align(
                  alignment: Alignment.bottomRight,
                  child: Text.rich(
                    TextSpan(
                        text: 'Forgot your password? ',children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){},
                        text: 'Reset Now',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.redAccent
                        ),
                      ),
                    ]
                    ),
                  ),
                ),
                Gap(10),
                ///Login Button
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){
                      if(_formkey.currentState!.validate()){
                        //Go to home page
                        print('');
                      }
                    },
                    child: Text('Login',style: TextStyle(
                        fontSize: 17
                    ),),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Gap(10),

                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                        text: 'You don\'t have account? ',children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()..onTap=(){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>
                              RegistrationPage(),
                          ));
                        },
                        text: 'Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: primary
                        ),
                      ),
                    ]
                    ),
                  ),
                ),
                Gap(5),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(
                            Icons.facebook
                        ),
                        Gap(15),
                        Text('Continue With Facebook',style: TextStyle(
                            fontSize: 17
                        ),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(
                            Icons.g_mobiledata
                        ),
                        Gap(15),
                        Text('Continue With Google',style: TextStyle(
                            fontSize: 17
                        ),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(
                            Icons.apple_outlined
                        ),
                        Gap(15),
                        Text('Continue With Apple',style: TextStyle(
                            fontSize: 17
                        ),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                Gap(10),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(
                            Icons.skip_next_sharp
                        ),
                        Gap(90),
                        Text('Skip', textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 17
                        ),),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
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
//...