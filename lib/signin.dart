import 'package:flutter/material.dart';
import 'package:home2work/profile.dart';
import 'package:home2work/register.dart';
import 'package:string_validator/string_validator.dart';

class SignIn extends StatefulWidget{

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {


    String email;
    String name;

GlobalKey<FormState> formKey = GlobalKey();

  GlobalKey<ScaffoldState> scaffolKey = GlobalKey();
saveForm(){
  
          if(formKey.currentState.validate()){
                

                formKey.currentState.save();
      var map = {'email':'$email','name':"$name"};
print(map);
          
              }else{

                 return;
               //scaffolKey.currentState.showSnackBar(
                //  SnackBar(content:Text('you have to accept out conditions')));
              }
          }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: SingleChildScrollView(
          child: Center(
                    child: Container(

                 padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),

                   //   child: SingleChildScrollView(
                 child: Form(
                                 key: formKey,

                   child: Column(

                                              
                          //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children : [
            Container(child: Text('Sign In',
            
              style: TextStyle(fontWeight: FontWeight.w900 ,fontSize: 20),
              
            ),
            margin: EdgeInsets.all(40),
                             padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),

            ),
                                      

             Container(child: Text('Enter your data',
            
              style: TextStyle(fontSize: 15),
              
            ),
            
            margin: EdgeInsets.all(40),
            

            ),

                        Container( 
                          margin: EdgeInsets.all(10),
                          child: 

                      
                           TextFormField(
                           
 validator: (value){
                              if(value==null || value ==""){
                                return 'required field';
                              }
                            },
                            onSaved: (newValue){
                            },
                           
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              fillColor: Colors.black12,
                              labelText: 'Name',
                              
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(200))),
                          )),
                         Container( 
                          margin: EdgeInsets.all(10),
                          child: 

                      
                           TextFormField(
                           

                            onSaved: (newValue){
                             this.email=newValue;
                            },
                            validator: (value){
                              if(value==null || value ==""){
                                return 'required field';
                              }else if(!isEmail(value)){
                                  return 'wrong email syntax';
                              }
                            },
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              fillColor: Colors.black12,
                              labelText: 'Email',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(200))),
                          )),
 Container(child: Text('Forgot password?',
            
              style: TextStyle(fontWeight: FontWeight.w400 ,fontSize: 15),
              
            ),
            margin: EdgeInsets.all(5),
                             padding: EdgeInsets.symmetric(horizontal:5,vertical: 5),

            ),
                          
                          
                          Container(
                            margin: EdgeInsets.only(top:30),
              width: double.infinity,
              height: 55,
               child: RaisedButton(
                     color: Colors.blueAccent,

                    child: Text('LOG IN' ,style: TextStyle(fontWeight: FontWeight.w900 , fontSize: 20 ,color: Colors.white)),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                    onPressed: (){
                    saveForm(
                      
                    );
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Profile(); }, ) 
                    );
                    
                })),
                

Container(child: Row(
   
    mainAxisAlignment: MainAxisAlignment.center,
children: [
  Container(child: Text('Dont have account?' ,style: TextStyle( fontSize: 12 ,color: Colors.black)),
                margin: EdgeInsets.only(top:15),

 
   ),
    Container(child: Text('Sign Up' ,style: TextStyle( fontSize: 12 ,color: Colors.black)),
                margin: EdgeInsets.only(top:15),

 
   ),
]  
                    
                )),
                    ]

                   ),
                 )),
          ),
        ));
  }
}