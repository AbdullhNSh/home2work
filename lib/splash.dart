import 'package:flutter/material.dart';
import 'package:home2work/profile.dart';
import 'package:home2work/register.dart';
import 'package:home2work/signin.dart';

class Splash extends StatefulWidget{
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Scaffold(
       /* body: Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [ */
        body: Center(
                child: Container(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
children: [
   Container(child:Text("Buy your favourites",style: TextStyle(fontSize: 18 ,color: Colors.black ,fontStyle: FontStyle.italic
   ,fontFamily: 'Arimo' ) , ),
       color:Colors.greenAccent,
       
         ),
         Container(child:Text("personalization of your shopping brands",style: TextStyle(fontSize: 13), textAlign: TextAlign.center,),
       width: 200,
       //margin: ,
               padding: EdgeInsets.only(top:30),

       
         ),
         
         
         Container(

         child:  SingleChildScrollView(
                                scrollDirection: Axis.horizontal,

           child: Row(

            children: [
             Container(
               margin: EdgeInsets.all(20),
               child: ClipRRect(
                           borderRadius: BorderRadius.circular(8.0),
                           child: Image.asset( 'images/1 (1).jpg',
                             width: 300.0,
                              height: 300.0,
                              fit: BoxFit.fill,
                              )
                           
                             ),
             ),
                           Container(
                                            margin: EdgeInsets.all(20),

                             child: ClipRRect(
                         borderRadius: BorderRadius.circular(8.0),
                         child: Image.asset( 'images/1 (1).jpg',
                          width: 300.0,
                              height: 300.0,
                              fit: BoxFit.fill,
                              )
                         
                             ),
                           ),
                           Container(
                                            margin: EdgeInsets.all(20),

                             child: ClipRRect(
                         borderRadius: BorderRadius.circular(8.0),
                         child: Image.asset( 'images/1 (1).jpg',
                             width: 300.0,
                              height: 300.0,
                              fit: BoxFit.fill,
                              )
                         
                             ),
                           ),
              ] ),
         )
,

               
        )
            
         ,
          Center(
            child: new Container(
margin: EdgeInsets.only(),
    child: new MaterialButton( 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

height: 70, 
 minWidth: 90.0, 
 
 padding: EdgeInsets.only(left:20,right: 20),
 //color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

 color:Colors.grey[800],
 textColor: Colors.white, 
 child: new Text("         START SHOPPING       ",style: TextStyle( fontSize: 18 ,//color: '#676767'.toColor()
 )), 
onPressed: () => {
                 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Profile(); }, ) 
                    )  
                } ,
                splashColor: Colors.grey,
),
  ),
          ),
          
           
            Center(
              child: Row(
                children: [
                  
                                  Container(


               
margin: EdgeInsets.only(left:90,top:20),          
          child: new MaterialButton( 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

                height: 70, 
                minWidth: 90.0, 
                
                padding: EdgeInsets.only(left:20,right: 20),
                //color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

                child: Text('Sign up', style: TextStyle(fontWeight: FontWeight.w900,),
                ), 
                onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return Register(); }, ) 
                    )
                }
                ),
  ),
         // ),



                                //  )



                    // 
                    // child: Text('Sign up', style: TextStyle(fontWeight: FontWeight.w900,),
                     
                     //)
                     
                    // ),
                  Container(
                       margin: EdgeInsets.only(left:20,top:20),

                    child: Text('or')),


                  Container(


               
margin: EdgeInsets.only(left:20,top:20),          
          child: new MaterialButton( 
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),

                height: 70, 
                minWidth: 90.0, 
                
                padding: EdgeInsets.only(left:20,right: 20),
                //color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

                child: Text('Log in', style: TextStyle(fontWeight: FontWeight.w900,),
                ), 
                onPressed: () => {
 Navigator.of(context).push(MaterialPageRoute(builder: (context){
                  return SignIn(); }, ) 
                    )
                }, 
                splashColor: Colors.grey,
                ),
  ),

                ]
              ),
            )
        
])))));}
}
        
      
   



