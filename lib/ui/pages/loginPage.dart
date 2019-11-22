// import 'package:dravi_medic/providers/UserProvider.dart';
// import 'package:dravi_medic/ui/widgets/DialogResetPassword.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:flutter/rendering.dart';
// import 'package:dravi_medic/constant.dart';
// import 'package:dravi_medic/ui/widgets/backgrounds.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:medco_ftd/appTheme.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool _obscureText = true;

  final _formKey = GlobalKey<FormState>();

  String _password;
  String _email;

  //final FirebaseAuth _auth = FirebaseAuth.instance;

  // final _controllerEmail = TextEditingController();
  // final _controllerPassword = TextEditingController();

  // final userProvider = UserProvider();

  @override
  Widget build(BuildContext context) {


    
    return Scaffold(
       body: Stack(
         alignment: Alignment.center,
         children: <Widget>[
           //widgetBackground(),
           SizedBox(width: double.infinity,),
           _logo(),
           //_buildTitle(),
           _buildForm(),          
         ],
       )
    );
  }

  Widget _logo(){
    return Positioned(
      top: 130.0,
      child: Image(
        width: 230.0,
        image: AssetImage('assets/images/logo.png')
        )
    );
  }

  // Widget _buildTitle(){
  //   return Text("Bienvenidos nuevamente", style: TextStyle(fontSize: 22.0),);
  // }

  Widget _buildForm(){

    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      margin: EdgeInsets.only(top:200.0),
      padding: EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              _buildInputEmail(),
              _buildInputPassword(),
              //_buildForgotPassword(),
              _buildButtonSignIn(),  
              _buildDontHaveAccount()    
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputEmail(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        //controller: _controllerEmail,
        onSaved: (value) => _email = value,
        validator: (value) => value.contains("@") ? null : 'Ingrese un email valido',
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          icon: Icon(Icons.alternate_email,color: AppTheme.nearlyBlue),
          hintText: 'ejemplo@gmail.com',
          labelText: 'E-mail'
        ),
      ),
    );
  }

  Widget _buildInputPassword(){

    

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: TextFormField(
        //controller: _controllerPassword,
        onSaved: (value) => _password = value,
        validator: (value) => value.length < 6 ? 'Debe ser mayor a 6 caracteres' : null,
        keyboardType: TextInputType.text,
        obscureText: _obscureText,
        decoration: InputDecoration(
          icon: Icon(Icons.lock,color: AppTheme.nearlyBlue),
          hintText: '',
          labelText: 'Contraseña',
          suffixIcon: IconButton( 
            icon:  Icon(_obscureText ? Icons.visibility : Icons.visibility_off), 
            onPressed: (){
             
              setState(() => _obscureText = !_obscureText);              
              
            }
          ) 
        ),
      ),
    );
  }

  Widget _buildButtonSignIn(){
    return Container(
      margin: EdgeInsets.only(top: 40.0),
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
        child: Text('Ingresar con JIRA'),
        onPressed: () async{

          final form = _formKey.currentState;
          form.save();

          // print(_controllerEmail.text );
          // print(_controllerPassword.text );

          //userProvider.loginFirebase(_controllerEmail.text, _controllerPassword.text)

          //AuthResult user;

          //user = await _auth.signInWithEmailAndPassword(email: "", password: "");
          Navigator.pushReplacementNamed(context, 'NavbarPage');

          if (form.validate()) {

            Navigator.pushReplacementNamed(context, 'NavbarPage');
         
              // bool res = await userProvider.loginUser(email: _email, password: _password);
           
              // if(!res){
              //   print("Error de autenticación");
              // }

            // try {
            //   user = await _auth.signInWithEmailAndPassword(
            //     email: _email,
            //     password: _password
            //   );              
            // } catch (e) {
            //   print("Ingrersó al error:  $e");
            // } finally {
            //   if(user != null ){
            //     print(user);
            //   }else{
            //     print("Es null.. $user");
            //   }
            // }
          }else{
            print("Campos requeridos!");
          }

          


          // Map info = await userProvider.login(_controllerEmail.text, _controllerPassword.text);
          
          // if(info['ok']){
          //   Navigator.pushReplacementNamed(context, 'NavbarPage');
          // }else{
          //   showDialog(
          //     context: context,
          //     builder: (context){
          //       return AlertDialog(
          //         title: Text("Información incorrecta"),
          //         content: Text(info['msg']),
          //         actions: <Widget>[
          //           FlatButton(
          //             child: Text('Ok'),
          //             onPressed: () => Navigator.of(context).pop(),
          //           )
          //         ],
          //       );
          //     }
          //   );
          // }
          

          
        },
        shape: StadiumBorder(),
        color: AppTheme.nearlyBlue,
        textColor: Colors.white,
        
      ),
    );
  }

  // Widget _buildForgotPassword(){
  //   return Container(
  //     width: double.infinity,
  //     alignment: Alignment.centerRight,
  //     child: InkWell(
  //       child: Text("¿Olvidé mi contraseña?", style: TextStyle(fontSize: 12.0, color: PRIMARY_COLOR, fontFamily: 'Helvetica Light'),),
  //       onTap: (){
  //         showDialog(
  //           context: context,
  //           builder: (context){
  //             return DialogResetPassword();
  //           }
  //         );
  //       },
  //     ),
  //   );
  // }

  Widget _buildDontHaveAccount(){
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 30.0),
      child: Wrap(
        children: <Widget>[
          Text('Aún no tengo cuenta.'),
          InkWell(
            child: Text("Registrarse", style: TextStyle(color: AppTheme.nearlyBlue)),
            onTap: (){
              Navigator.pushReplacementNamed(context, 'RegisterPage');
            },
          ),
        ],
      
      ),
    );
  }
}