import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color x = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo.shade900,
        title: Text("Posts",style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(boxShadow :[BoxShadow(color: Colors.grey.shade200, blurRadius: 4, offset: Offset(3, 3))], color: Colors.white),
          width: 400,
          height: 500,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgdZpEDslKnjBmPC6dlF6pf9Q2m1o5aMdHwg&usqp=CAU"),),
                    SizedBox(width: 10,),
                    Text("Al raiyan")
                  ],
                ),
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgdZpEDslKnjBmPC6dlF6pf9Q2m1o5aMdHwg&usqp=CAU", width: 400,height: 300,fit: BoxFit.cover,),
              Container(
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){
                      x = Colors.red;
                      setState(() {});
                    }, 
                    icon: Icon(Icons.favorite, color:x)),
                    Text("100")
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.comment, color: Colors.grey,)),
                        Text("100")
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
      