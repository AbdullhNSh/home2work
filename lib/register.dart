import 'package:flutter/material.dart';
import 'package:home2work/custom_textfield.dart';
import 'package:home2work/profile.dart';
import 'package:home2work/signin.dart';
import 'package:string_validator/string_validator.dart';

class Register extends StatefulWidget{


  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  String radio ;
  String companyName;

  String gender ='male';

  String acountName;

  String instagramAcount;

  String mobile;

  String email;

  String city ;

  String country = 'gaza';

  String password;

  String cPassword;

    List<String> nameCountry = ['gaza','jabalia','Rafah','khanYouns']; 

    List<String> grndar = ['male','female']; 

GlobalKey<FormState> formKey = GlobalKey();

  GlobalKey<ScaffoldState> scaffolKey = GlobalKey();

saveMobile(String value){
      this.mobile=value;

}

saveGender(String value){
      this.gender=value;

}

saveInstagramAcount(String value){
    this.instagramAcount=value;
  }

saveCountry(String value){
    this.country=value;
  }

  saveAcountName(String value){
    this.acountName=value;
  }

saveCity(String value){
    this.city=value;
  }

 saveCompanyName(String value){
    this.companyName=value;
  }

  saveEmail(String value){
    this.email=value;
  }

  savePassword(String value){
    this.password=value;
  }

  saveCPassword(String value){
    this.cPassword=value;
  }

validateNullValue(value){ 
    if(value==null || value ==""){
       return 'required field';
     }
  }

  validateEmail(value){ 
     if(value==null || value ==""){
           return 'required field';
       }else if(!isEmail(value)){
           return 'wrong email syntax';
       }
                        }

     validatePassword(value){ 
    if(value==null || value ==""){
           return 'required field';
    }else if(value.length<6){
          return 'very week password';
      }else if(this.password!=this.cPassword){

         setState(() {
          
        });

        return 'password not matched  $password  $cPassword';

       
      }
  }

saveForm(){
  
          if(formKey.currentState.validate()){
                

                formKey.currentState.save();
      var map = {'radio':"$radio",'companyName' : '$companyName','gender':"$gender",'acountName':'$acountName',
      'instagramAcount':'$instagramAcount','mobile':'$mobile','email':'$email','country':'$country','city':'$city','password':'$password'};
      //  var map = {'name' : 'ahmed','age':18,'jop':"student"};
print(map);
          
              }else{

                 return;
               //scaffolKey.currentState.showSnackBar(
                //  SnackBar(content:Text('you have to accept out conditions')));
              }
          }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          
             padding: EdgeInsets.symmetric(horizontal:20,vertical: 20),
            

            child: Form(
              key: formKey,
               //   child: SingleChildScrollView(
           //  child: Center(
                            child: SingleChildScrollView(
                                                          child: Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                       children : [


      Container(child: Text('Sign Up' ,style: TextStyle(fontWeight: FontWeight.w900 , fontSize: 20), textAlign: TextAlign.center,) ,
      margin: EdgeInsets.only(top:50),),


      Container(child: Text('Enter your data' ,style: TextStyle(),  textAlign: TextAlign.left,
),
       margin: EdgeInsets.only(top:50)
       
       
      ),

      Column(
    children: <Widget>[
      _myRadioButton(
        title: "Company",
        value: 0,
        onChanged: (newValue) => setState(() { _groupValue = newValue;
                radio = 'Company';

        
        })
      ),
      _myRadioButton(
        title: "Name",
        value: 1,
        onChanged: (newValue) => setState((){ _groupValue = newValue;
        radio = 'name';
        }
        ),
      ),
    ],
  ),
      /*
Container(
        child: RadioListTile(
          title: Text(
            widget.option,
            style: TextStyle(fontSize: 20.0),
          ),
          activeColor: Colors.black,
          value: widget.optionvalue,
          groupValue: groupvalue,
          onChanged: (int a) {
            print(a);
            setState(() {
              groupvalue = a;
            });
          },
        ),
      ),
      */
                          
Container(
  /*child: Row(child: */

 /*child: Container(*//*child: Radio(
   
    mainAxisAlignment: MainAxisAlignment.center,
children: [
  Container(child: Text('Dont have account?' ,style: TextStyle( fontSize: 12 ,color: Colors.black)),
              margin: EdgeInsets.only(top:15),

 
   ),
    Container(child: Text('Sign Up' ,style: TextStyle( fontSize: 12 ,color: Colors.black)),
              margin: EdgeInsets.only(top:15),

 
   ),
]  
                
              )*/
              
              ),


CustomTextField( label: "Company name", saveFun: saveCompanyName, validationFun: validateNullValue),
        Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)
        ,border: Border.all(color:Colors.black12),),
              child: DropdownButton<String>(
                hint: Text(gender),
               isExpanded: true,
                /*underline: Container(/*child: Text(city),*/),*/
                items: grndar.map((e) =>   
        DropdownMenuItem<String>(child: Text(e),value: e )).toList()
        
        , onChanged: (value){
          this.city=value;
          setState(() {
            
          });
        }),
      ),
          
       
          CustomTextField( label: "@Account name", saveFun: saveAcountName, validationFun: validateNullValue  ),
          CustomTextField( label: "Instagram Account ", saveFun: saveInstagramAcount, validationFun: validateNullValue),
                    CustomTextField( label: "Mobile", saveFun: saveMobile, validationFun: validateNullValue),
          CustomTextField( label: "Email", saveFun: saveEmail, validationFun: validateEmail),
          
            Container(
        padding: EdgeInsets.symmetric(horizontal:20),
        width: double.infinity,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)
        ,border: Border.all(color:Colors.black12),),
              child: DropdownButton<String>(
                hint: Text(country),
               isExpanded: true,
                /*underline: Container(/*child: Text(city),*/),*/
                items: nameCountry.map((e) =>   
        DropdownMenuItem<String>(child: Text(e),value: e )).toList()
        
        , onChanged: (value){
          this.country=value;
          setState(() {
            
          });
        }),
      ),
          
          
          
          
          CustomTextField( label: "City", saveFun: saveCity, validationFun: validateNullValue),
         /* CustomTextField( label: "Password", saveFun: savePassword, validationFun: validatePassword),

          CustomTextField( label: "Confirn Password", saveFun: saveCPassword, validationFun: validatePassword),
                    
*/
Container(
       margin: EdgeInsets.all(10),

  child: TextFormField(

                          onChanged: (value){
                            this.password=value;
                          },
                        onSaved: (newValue){
                          this.password=newValue;
                        },
                        validator: (value){
                          if(value==null || value ==""){
                            return 'required field';
                          }else if(value.length<6){
                              return 'very week password';
                          }
                        },
                        decoration: InputDecoration(

                          labelText: 'Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                      ),),



                      Container(
       margin: EdgeInsets.all(10),

  child: TextFormField(
                        onChanged: (value){
                            this.cPassword=value;
                          },
                        onSaved: (newValue){
                          this.cPassword=newValue;
                        },
                        validator: (value){

                          if(value==null || value ==""){
                            return 'required field';
                          }else if(value.length<6){
                              return 'very week password';
                          }else if(this.cPassword != this.password){
                            return 'password not matched';
                          }
                        },
                        decoration: InputDecoration(
                          
                          labelText: 'Confirm Password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                      ),),
           Container(
                        margin: EdgeInsets.only(top:30),
            width: 300,
            height: 55,
             child: RaisedButton(
                 color: Colors.blueAccent,

                child: Text('SIGN UP' ,style: TextStyle(fontWeight: FontWeight.w900 , fontSize: 20 ,color: Colors.white)),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(200)),
                onPressed: (){
               saveForm();
              })),
                      


                   Container(
                      margin: EdgeInsets.all(20), 
                     child:Center(

                                        child: Row(children: [
                       Container(
                         margin: EdgeInsets.only(left:30),
                         child: Text("Already have account?")),

                         Container(


               
margin: EdgeInsets.only(left:10),          
          child: new MaterialButton( 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

                height: 20, 
                minWidth: 30.0, 
                
                //color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

                child: Text('Log in', style: TextStyle(fontWeight: FontWeight.w900,),
                ), 
                onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SignIn(); }, ) 
                    )
                }
                ),
  ),
                     //  Text("Log in" )
                     ],),
                   ),
                   ),
                   Container(


               
          child: new MaterialButton( 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

                height: 30, 
                minWidth: 30.0, 
                

                child: Text('SKIP', style: TextStyle(fontWeight: FontWeight.w900,),
                ), 
                onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Profile(); }, ) 
                    )
                }
                ),
  ),
                  
                   
                       ]

        ),
                            ),
             )
        //)
        )
    );
  }
}




int _groupValue = -1;
Widget _myRadioButton({String title, int value, Function onChanged}) {
  return RadioListTile(
    value: value,
    groupValue: _groupValue,
    onChanged: onChanged,
    title: Text(title),
  );
}