import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
   int _selected=0;
   void changeSelected(int index){
     setState((){
       _selected=index;
     });
   }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Khaliqproject',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Engineer Abdul Khaliq"),
          backgroundColor: Colors.red,
        ),
        body:Container(
          color: Colors.yellow,
          child: Center(child: Image.asset('assets/images/abdul khaliq.jpg')),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              SafeArea(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img3.jpg"),
                    ),
                  ),
                  padding: EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                          image: AssetImage('assets/images/abdul khaliq.jpg',
                          ),
                          fit: BoxFit.fill,
                          ),
                        ),
                        ), 
                        Text("Engineer Abdul Khaliq",
                        style: TextStyle(fontSize: 20,color: Colors.yellow),
                        ),
                        Text("abdulkhaliq076@gmail.com",
                        style: TextStyle(color: Colors.yellow),
                        ),
                    ],
                  ),
                ),
      
              ),
              ListTile(
                selected: _selected == 0,
                leading: Icon(Icons.folder,
                size: 35,
                color: Colors.black87,
                ),
                title:Text(
                  "My Files",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(0);
                },
              ),
              ListTile(
                selected: _selected == 1,
                leading: Icon(Icons.share,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("Share",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(1);
                },
              ),
              ListTile(
                selected: _selected == 2,
                leading: Icon(Icons.star,
                 size: 35,
                color: Colors.black87,
                ),
                title: Text("Starred",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(2);
                },
              ),
              ListTile(
              selected: _selected == 3,
                leading: Icon(Icons.search,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("Search",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(3);
                },
              ),
              new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ), 
              ListTile(
                selected: _selected == 4,
                leading: Icon(Icons.file_upload,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("Upload",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(4);
                },
              ), 
              ListTile(
                selected: _selected == 5,
                leading: Icon(Icons.settings,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("Settings",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(5);
                },
              ),
              ListTile(
                selected: _selected == 6,
                leading: Icon(Icons.person,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("My Profile",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(6);
                },
              ),
              ListTile(
                selected: _selected == 7,
                leading: Icon(Icons.contacts,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("Contacts",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(7);
                },
              ),
               new Divider(
                thickness: 3,
                indent: 10,
                endIndent: 10,
              ),
              ListTile(
                selected: _selected == 8,
                leading: Icon(Icons.upload,
                size: 35,
                color: Colors.black87,
                ),
                title: Text("infomation",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: (){
                  changeSelected(8);
                },
              ), 
            ],
        ),
      ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
