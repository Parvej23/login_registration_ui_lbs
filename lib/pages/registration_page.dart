import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:login_registration/pages/login_page.dart';


import '../utils/app_style.dart';
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final style= TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      letterSpacing: 0.6
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 34, right: 34, top: 60),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    LoginPage()
                ));
              },
                  icon: Icon(Icons.arrow_back_ios)
              ),
              Gap(40),
              Text(
                  'Profile Details',
                  style: style
              ),
              Gap(18),
              SizedBox(
                height: 65,
                child: TextFormField(
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
                    hintText: 'Full name',
                  ),
                ),
              ),
              Gap(21),
              Text(
                  'Account Details',
                  style: style
              ),
              Gap(18),
              SizedBox(
                height: 55,
                child: TextFormField(
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
                    hintText: 'Phone',
                  ),
                ),
              ),
              Gap(18),
              SizedBox(
                height: 55,
                child: TextFormField(
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
                  ),
                ),
              ),
              Gap(18),
              SizedBox(
                height: 55,
                child: TextFormField(
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
                  ),
                ),
              ),
              Gap(23),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  onPressed: (){},
                  child: Text('Sign Up',style: TextStyle(
                      fontSize: 18
                  ),),
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
    );
  }
}
