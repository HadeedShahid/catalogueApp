import 'package:flutter/material.dart';
import 'package:testapp/utils/routes.dart';
class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/illus_login.png",fit: BoxFit.cover,),
            SizedBox(height: 20,),
            Text("Welcome $name",style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal,),),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 32),
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter UserName",
                    labelText: "UserName",
                  ),
                  onChanged: (value){
                    name = value;
                    setState(() {

                    });
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(height: 40,),
                InkWell(
                  onTap: ()async{
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds:1));
                    Navigator.pushNamed(context, Routes.homeRoute);
                     },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton? 50 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changeButton? Icon(Icons.done,color: Colors.white,) : Text("Login",style: TextStyle(color: Colors.white,fontSize: 17)),
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(changeButton?40:8)
                    ),
                  ),
                ),
                // ElevatedButton(onPressed: (){Navigator.pushNamed(context, Routes.homeRoute);},
                //   child: Text("Login"),
                //   style: TextButton.styleFrom(minimumSize: Size(200,35)),
                // )
              ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
