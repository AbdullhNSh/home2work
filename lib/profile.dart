
import 'package:flutter/material.dart';
extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
            print( Color(int.parse("0x$hexColor")));

      return Color(int.parse("0x$hexColor"));
    }
  }
}
class Profile extends StatefulWidget{


  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {

@override
  State<StatefulWidget> createState() {
    throw UnimplementedError();
  }
  TabController tabController;
   int index = 0;

   void initState(){
      super.initState();
   tabController =TabController(length: 3,vsync: this);

    }

    List<String> data = ['images/1 (1).jpg','images/1 (2).jpg','images/1 (3).jpg','images/1 (4).jpg',
    'images/1 (5).jpg','images/1 (6).jpg','images/1 (7).jpg','images/1 (8).jpg','images/1 (9).jpg',
    'images/1 (10).jpg','images/1 (11).jpg','images/1 (12).jpg','images/1 (13).jpg','images/1 (14).jpg',
    'images/1 (15).jpg','images/1 (16).jpg','images/1 (17).jpg','images/1 (18).jpg','images/1 (19).jpg',
    'images/1 (20).jpg',
    'images/1 (21).jpg','images/1 (22).jpg','images/1 (23).jpg','images/1 (24).jpg',
    'images/1 (25).jpg','images/1 (26).jpg','images/1 (27).jpg',
    'images/1 (28).jpg','images/1 (29).jpg'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           bottomNavigationBar: BottomNavigationBar(
         
          onTap: (value){
            

            print(value);
            tabController.animateTo(value);
           index = value;
            setState(() {
              
            });
          },
          backgroundColor: Colors.white,
          currentIndex: index,
          items: [
          BottomNavigationBarItem(

            
            icon: Icon(Icons.home),
        
           title:  Text("home", style: new TextStyle(
                color: const Color(0xFF06244e), fontSize: 14.0)),
           ),
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text('search')),
        //  BottomNavigationBarItem(icon: Icon(Icons.favorite), title: Text('favorite')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('profile')),

        ],),
        appBar:AppBar(
          backgroundColor: Colors.white,
  actions: [
        Icon(Icons.arrow_drop_down_sharp,color: Colors.black,),
        Icon(Icons.add,color: Colors.black,),
    ],
            title: Text('STYLISH',
            style: TextStyle(color: Colors.black),),
           //: Icon(Icons.ac_unit),
       ),
      
      
      body: Container(
         child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,

          children: <Widget>[

            Row(children: [
              
              
Container(
  width: 90,
  height: 90,
  margin: EdgeInsets.only(left:25,top:20),
  child:   CircleAvatar(
  
    radius: 50.0,
  
    backgroundImage: AssetImage('images/1 (27).jpg'),
  
  ),
),

        Container(
          margin: EdgeInsets.only(left:50,top: 20),
          child: Column(
          children: [
Row(children: [

            Column(children: [

              Container(
                margin: EdgeInsets.only(left: 10,top:5,right: 5),
                child: Text('1,252',style: TextStyle(fontWeight: FontWeight.w900), ),
              ), Container(
                margin: EdgeInsets.only(left: 10,top:5,right: 5,bottom: 5),

                child: Text('posts'),
              ),
            ],),
            
            Column(children: [

              Container(
                
                margin: EdgeInsets.only(left: 10,top:5,right: 5),
                child: Text('4m',style: TextStyle(fontWeight: FontWeight.w900), ),
              ), Container(
                margin: EdgeInsets.only(left: 10,top:5,right: 5,bottom: 5),

                child: Text('followers'),
              ),
            ],),

            Column(children: [

              Container(
                margin: EdgeInsets.only(left: 10,top:5,right: 5),
                child: Text('256',style: TextStyle(fontWeight: FontWeight.w900), ),
              ), Container(
                margin: EdgeInsets.only(left: 10,top:5,right: 5,bottom: 5),

                child: Text('following'),
              ),
            ],
            
            ),],),
          
        new Container(
margin: EdgeInsets.only(),
    child: new MaterialButton( 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),

height: 30, 
 minWidth: 90.0, 
 
 padding: EdgeInsets.only(left:20,right: 20),
 color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

 //color:Colors.amber[10], 
 textColor: Colors.white, 
 child: new Text("         Edit Profile       ",style: TextStyle( fontSize: 18 ,color: '#676767'.toColor())), 
 onPressed: () => {}, 
 splashColor: Colors.grey,
),
  ),
          ]),
        )
                  

                  ],),
      Column(
        children: [

        Container(
          margin: EdgeInsets.only(left:10,top:10),
          child:
  
          
                    Text('Home Furniture',style: TextStyle(fontWeight: FontWeight.w900,fontSize: 15),
                )
                    ),


                    Container(
     margin: EdgeInsets.only(left:0,top:10),
     child:
  
          
                    Text('Contact us:',style: TextStyle(fontSize: 15),
                    textAlign: TextAlign.left,)
                    ),


                    Container(
     margin: EdgeInsets.only(left:10,top:3),
     child:
  
          
                    Text('+925 987 952 2365',style: TextStyle(fontSize: 15,color: Colors.blue),
                  )
                    ),


                    Container(
     margin: EdgeInsets.only(left:0,top:5),
     child:
  
          
                    Text('Chennai, India',style: TextStyle(fontSize: 15),
                   )
                    ),


                         
],),
            Row(
              children: [
            
  Container(
        margin: EdgeInsets.only(left:10),
    child: new MaterialButton( 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),

height: 30, 
 minWidth: 90.0, 
 
 color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

 //color:Colors.amber[10], 
 textColor: Colors.white, 
 child: new Text("Add Product",style: TextStyle( fontSize: 18 ,color: '#676767'.toColor())), 
 onPressed: () => {}, 
 splashColor: Colors.grey,
),
  ),Container(
        margin: EdgeInsets.only(left:10),

    child: new MaterialButton( 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),

height: 30, 
 minWidth: 90.0, 
 padding: EdgeInsets.only(left:20,right: 20),
 color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

 //color:Colors.amber[10], 
 textColor: Colors.white, 
 child: new Text("    Share   ",style: TextStyle( fontSize: 18 ,color: '#676767'.toColor())), 
 onPressed: () => {}, 
 splashColor: Colors.grey,
),
  ),
  Container(

        margin: EdgeInsets.only(left:10),

    child: new MaterialButton( 
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),

 height: 30, 
 minWidth: 90.0, 
 
 
 color:'#F1F1F1'.toColor(), //isHexColor()//Color(value),

 //color:Colors.amber[10], 
 textColor: Colors.white, 
 child: new Text("Contact Us",style: TextStyle( fontSize: 18 ,color: '#676767'.toColor())), 
 onPressed: () => {}, 
 splashColor: Colors.grey,
),
  )
           
           ] ),




             Container(
              height: 375,
              color: Colors.white30,
              margin: EdgeInsets.only(top:20),

            child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(//مساحة كل عنصر 
                      maxCrossAxisExtent: 140,
                      //crossAxisCount: 3,
                      childAspectRatio: 1,
                      crossAxisSpacing: 7,
                      mainAxisSpacing: 7,

                      
),
itemCount:data.length,
                     itemBuilder: (context,index){
                       return ClipRRect(
                     borderRadius: BorderRadius.circular(8.0),
                     child: Image.asset(data[index],
                       width: 100.0,
                        height: 100.0,
                        fit: BoxFit.fill,
                        )
                     
                       );
                     }
  )
  
           )  ] )
         
      )   
    );
      
    
  }
}