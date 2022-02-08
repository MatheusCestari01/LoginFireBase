import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool ver = false;
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
              width: 300,
              padding: const EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                      _inputField("Email",Icons.email, false),
                      _inputField("Senha",Icons.password, true),
                        SizedBox(height: 20,),
                        ElevatedButton(onPressed:() {},child: Text("ENTER"))
            
                  ],
                  ),
                  ),
              ),
            );
  }

  _inputField(String rotulo, IconData icone, bool senha) {
    return Padding(
      padding: const EdgeInsets.only(bottom:16.0),
      child: TextFormField(
        obscureText:senha && !ver,
        decoration:
        InputDecoration(labelText: rotulo,
        border:OutlineInputBorder(),
        prefixIcon: Icon(icone),
        suffixIcon: senha
          ? IconButton(
            onPressed: () {
            setState(() {
            ver = !ver;
          });
          },
           icon: Icon(ver?Icons.visibility_off : Icons.visibility))
          :null),

      ),

    );

  }
}