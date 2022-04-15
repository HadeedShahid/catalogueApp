import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/illus_login.png",fit: BoxFit.cover,),
          SizedBox(height: 20,),
          Text("Welcome",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
            child: Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter UserName",
                  labelText: "UserName",
                ),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  labelText: "Password",
                ),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){print("hello");},
                child: Text("Login"),
              )
            ],
            ),
          ),
          
        ],
      ),
    );
  }
}
