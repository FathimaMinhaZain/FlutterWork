import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
                     
   bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
  //      appBar: AppBar(title: Text('Login Screen'),),
        body:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         
             Text(
                'Welcome back',
                style: TextStyle(fontSize: 18),
              ),
          
              SizedBox(height: 8),
          
              Text(
                'Login to your account',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 16),
          
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Form(
                  child: Column(
                    children: [
          
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'enter email',
                            border: OutlineInputBorder(),
                          ), 
                          obscureText: true, 
                          onChanged: (String value){
                                      
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter email' : null;
                          },
                        ),
                      ),
                
                        SizedBox(height: 30,),
                
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: TextFormField(
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                            labelText: 'password',
                            hintText: 'enter password',
                            border: OutlineInputBorder(),
                          ),  

                           obscureText: true, 
                          onChanged: (String value){
                                      
                          },
                          validator: (value) {
                            return value!.isEmpty ? 'Please enter password' : null;
                          },
                        ),
                      ),
          
                       SizedBox(height: 30,),
          


                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             
                            Checkbox(
                              value: ischeck, 
                             // title: Text('remember me'),
                              onChanged: (bool? newValue){
                                setState(() {
                                  ischeck = newValue;
                                });
                              },
                              activeColor: Colors.orangeAccent,
                              checkColor: Colors.white, 
                              ),

                              
                          ],
                          
                      ),

                     

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('Login'),
                          color: Colors.green,
                          textColor: Colors.white,
                          ),
                      ),
                
                    ],
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

