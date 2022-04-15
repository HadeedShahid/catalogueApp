import 'package:flutter/material.dart';
import 'package:testapp/utils/routes.dart';
class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/illus_login.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Welcome",style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal,),),
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
                SizedBox(height: 40,),
                ElevatedButton(onPressed: (){Navigator.pushNamed(context, Routes.homeRoute);},
                  child: Text("Login"),
                  style: TextButton.styleFrom(minimumSize: Size(200,35)),
                )
              ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
