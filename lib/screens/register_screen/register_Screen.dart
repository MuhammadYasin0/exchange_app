import 'package:exchange_app/screens/login_screen/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  bool isEmailSelected = true;

  void toggleSelection() {
    setState(() {
      isEmailSelected = !isEmailSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 80, 180, 0),
            child: Text("Create Account",
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
            ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 330, 0),
            child: Container(
            height: 8.0,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 32, 215, 248),
              borderRadius: BorderRadius.circular(20)
            ),
                    ),
          ),

          

         

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 205, 0),
            child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (!isEmailSelected) {
                              toggleSelection();
                            }
                          },
                          child: Column(
                            children: [
                              Text(
                                'Email',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: isEmailSelected
                                      ? Color.fromARGB(255, 32, 215, 248)
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                             
                            ],
                          ),
                        ),
            
                        SizedBox(width: 16,),
            
                        GestureDetector(
                          onTap: () {
                            if (isEmailSelected) {
                              toggleSelection();
                            }
                          },
                          child: Column(
                            children: [
                              Text(
                                'Phone Number',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: !isEmailSelected
                                      ? Color.fromARGB(255, 32, 215, 248)
                                      : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            
                            ],
                          ),
                        ),
                    ],
                  ),
          ),

      
                  SizedBox(height: 16),
                 Row(
                  children: [
                     Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: isEmailSelected ? ' Email' : 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:BorderRadius.circular(10) 
                          ),
                          labelStyle: TextStyle(
                            color: Colors.black38
                          ),
                          filled: true,
                          fillColor: Color.fromARGB(31, 120, 119, 119)
                          
                        ),
                      ),
                    ),
                  ),
                   ElevatedButton(
                    
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 32, 215, 248),
                   shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                   )
                    ),
               onPressed: () {},
                                   
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text('Send OTP',
            style: TextStyle(
                  fontSize: 15,
                  color: Colors.black
                  ),
                     ),
          ),
          ),
                SizedBox(width: 12,)
                  ],
                 ),

                SizedBox(
                  height: 20,
                ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: TextField(
                          decoration: InputDecoration(
                            labelText: ' Enter OTP',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:BorderRadius.circular(10) 
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black38
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(31, 120, 119, 119)
                            
                          ),
                        ),
                 ),


                 SizedBox(
                  height: 20,
                ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: TextField(
                          decoration: InputDecoration(
                            labelText: ' Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:BorderRadius.circular(10) 
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelStyle: TextStyle(
                              color: Colors.black38
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(31, 120, 119, 119)
                            
                          ),
                        ),
                 ),
                 

                 SizedBox(
                  height: 20,
                ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: TextField(
                          decoration: InputDecoration(
                            labelText: ' Confirm Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:BorderRadius.circular(10) 
                            ),
                            suffixIcon: Icon(Icons.remove_red_eye),
                            labelStyle: TextStyle(
                              color: Colors.black38
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(31, 120, 119, 119)
                            
                          ),
                        ),
                 ),

                 SizedBox(
                  height: 20,
                ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20),
                   child: TextField(
                          decoration: InputDecoration(
                            labelText: ' Referral Code - (Optional)',
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:BorderRadius.circular(10) 
                            ),
                            labelStyle: TextStyle(
                              color: Colors.black38
                            ),
                            filled: true,
                            fillColor: Color.fromARGB(31, 120, 119, 119)
                            
                          ),
                        ),
                 ),
                
                 Padding(
                   padding: const EdgeInsets.fromLTRB(0, 20, 244, 0),
                   child: TextButton(onPressed: (){}, 
                   
                   child: Text('Cannot Receive SMS?',
                   style: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 32, 215, 248),
                  fontWeight: FontWeight.bold
                  ),
                   )),
                 ),



                 ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 32, 215, 248),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                  },
                  
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                    child: Text('Sign Up',
                     style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                    ),
                    ),
                  )),



                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                    child: Row(
                      children: [
                        Text("Already have an account?",
                        style: TextStyle(
                        fontSize: 15,
                          ),
                        ),

                        SizedBox(width: 5,),

                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginScreen()));
                          },
                          child: Text("Login",
                          style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 32, 215, 248),
                          fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                    
                        
                      ],
                    ),
                  )
                    ],
                  ),

      
      

        
    );
  }
}