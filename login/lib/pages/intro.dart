

//import 'package:login/pages/about.dart';
import 'package:flutter/material.dart';
//import 'package:login/pages/intro.dart';


class IntroPage extends StatelessWidget {

  const IntroPage({super.key});                   
   
 //  bool? ischeck = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
        appBar: AppBar(title: Text('Login Screen'),),
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
          


/*                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[
                            RememberMeCheckbox(),
                            Text(
                              'forgot password',
                              style: TextStyle(fontSize: 16, color: Colors.teal),
                              textAlign: TextAlign.end,
                            ),
                          ],
                      ),
*/
                        
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: MaterialButton(
                          onPressed: () {},
                          minWidth: 222.0,
                          height: 35.0,
                          child: Text('Create Account'),
                          color: Colors.green,
                          textColor: Colors.white,
                          
                          ),    //CreateAcc

                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 35),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context,'/AboutPage');
                          },
                          minWidth: 222.0,
                          height: 35.0,
                          child: Text('Login'),
                          color: Colors.green,
                          textColor: Colors.white,
                          
                          ),    //Login

                      ),
                
/*                  SignInButton(
                      Buttons.Google,
                      text: "Connect with Google",
                      onPressed: () {},
                    ) //Sign in button
*/

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

 /* class RememberMeCheckbox extends StatefulWidget {
  @override
  _RememberMeCheckboxState createState() => _RememberMeCheckboxState();
}

class _RememberMeCheckboxState extends State<RememberMeCheckbox> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
          value: _rememberMe,
          onChanged: (bool? value) {
            setState(() {
              _rememberMe = value!;
            });
          },
        ),
        Text('Remember me'),
      ],
    );
  }
}

*/


