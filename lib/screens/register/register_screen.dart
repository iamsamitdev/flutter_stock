import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final formKey = GlobalKey<FormState>();
  String nameString, emailString, telString, passwordString;

  Widget nameText() {
    return TextFormField(
      keyboardType: TextInputType.text,
      autofocus: false,
      // initialValue: 'user@email.com',
      style: TextStyle(fontSize: 24, color: Colors.teal),
      decoration: InputDecoration(
          // icon: Icon(
          //   Icons.email,
          //   color: Colors.teal,
          //   size: 24,
          // ),
          prefixIcon: Icon(
            Icons.people,
            color: Colors.teal,
            size: 24,
          ),
          hintText: "John Doe",
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          labelText: 'Fullname',
          labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
          ),
          // helperText: 'Type your fullname to register',
          // helperStyle: TextStyle(
          //     color: Colors.brown, fontSize: 16, fontStyle: FontStyle.italic
          // ),
          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          ),
          errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value) {
        if(value.isEmpty){
          return "Fullname cannot be empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        nameString = value.trim();
      },
    );
  }


  Widget emailText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      // initialValue: 'user@email.com',
      style: TextStyle(fontSize: 24, color: Colors.teal),
      decoration: InputDecoration(
          // icon: Icon(
          //   Icons.email,
          //   color: Colors.teal,
          //   size: 24,
          // ),
          prefixIcon: Icon(
            Icons.email,
            color: Colors.teal,
            size: 24,
          ),
          hintText: "your@email.com",
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          labelText: 'Email',
          labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
          ),
          // helperText: 'Type your email to register',
          // helperStyle: TextStyle(
          //     color: Colors.brown, fontSize: 16, fontStyle: FontStyle.italic
          // ),
          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          ),
          errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value) {
        if(!((value.contains('@')) && (value.contains('.')))){
          return "Email format is you@email.com";
        }else{
          return null;
        }
      },
      onSaved: (value){
        emailString = value.trim();
      },
    );
  }


  Widget passwordText() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      obscureText: true,
      // initialValue: 'user@email.com',
      style: TextStyle(fontSize: 24, color: Colors.teal),
      decoration: InputDecoration(
          // icon: Icon(
          //   Icons.email,
          //   color: Colors.teal,
          //   size: 24,
          // ),
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.teal,
            size: 24,
          ),
          hintText: "********",
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          labelText: 'Password',
          labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
          ),
          // helperText: 'Type your email to register',
          // helperStyle: TextStyle(
          //     color: Colors.brown, fontSize: 16, fontStyle: FontStyle.italic
          // ),
          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          ),
          errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value) {
        if(value.length < 8){
          return "Password more 8 charactor";
        }else{
          return null;
        }
      },
      onSaved: (value){
        passwordString = value.trim();
      },
    );
  }


  Widget telText() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      autofocus: false,
      // initialValue: 'user@email.com',
      style: TextStyle(fontSize: 24, color: Colors.teal),
      decoration: InputDecoration(
          // icon: Icon(
          //   Icons.email,
          //   color: Colors.teal,
          //   size: 24,
          // ),
          prefixIcon: Icon(
            Icons.phone_iphone,
            color: Colors.teal,
            size: 24,
          ),
          hintText: "8888888888",
          hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
          labelText: 'Phone number',
          labelStyle: TextStyle(
              color: Colors.teal, fontSize: 20
          ),
          // helperText: 'Type your email to register',
          // helperStyle: TextStyle(
          //     color: Colors.brown, fontSize: 16, fontStyle: FontStyle.italic
          // ),
          contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0),
          ),
          errorStyle: TextStyle(fontSize: 16.0)
      ),
      validator: (value) {
        if(value.isEmpty){
          return "Phone number cannot be empty";
        }else{
          return null;
        }
      },
      onSaved: (value){
        telString = value.trim();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('ลงทะเบียน'),
      // ),
      body: GestureDetector(
        onTap: () {
          // call this method here to hide soft keyboard
          FocusScope.of(context).unfocus();
        },
        child: Form(
          key: formKey,
          child: ListView(
            children: <Widget>[
              Container(
                color: Colors.teal,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("ฟอร์มลงทะเบียนบุคคล", style: TextStyle(fontSize: 32, color: Colors.white)
                  ),
                  ],
                )
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: nameText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: emailText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: passwordText(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: telText(),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: RaisedButton(
                  color: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28.0),
                  ),
                  onPressed: (){
                    
                    if(formKey.currentState.validate()){
                      formKey.currentState.save();
                      // print("Your Click Register");
                      print('name=$nameString, email=$emailString, tel=$telString, password=$passwordString');
                    }

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('REGISTER', style: TextStyle(fontSize: 24, color: Colors.white),),
                  ),
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
