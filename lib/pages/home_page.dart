import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
 // const HomePage({Key? key}) : super(key: key);
  static final String id = 'home_page';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: CustomScrollView(
        slivers: [
         SliverAppBar(
           expandedHeight: 220.0,
           floating: true,
           pinned: true,
           snap: true,
           elevation: 50,
           backgroundColor: Colors.green,
           flexibleSpace: FlexibleSpaceBar(
             title: Text('Nature'),
             centerTitle: true,
             background: Image(
               image: AssetImage('assets/images/travel2.jpg'),
               fit: BoxFit.cover,
             ),

           ),
         ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index){
                return Container(
                  height: 50,
                  alignment: Alignment.center,
                  color: Colors.green[100*(index % 9)],
                  child: Text('green $index'),
                );
              },
            childCount: 9
          ),
          ),
           SliverFixedExtentList(
               delegate: SliverChildListDelegate([
             Container(color: Colors.green,),
             Container(color: Colors.lightGreen,),
             Container(color: Colors.lightGreenAccent,),
           ]), itemExtent: 45),
          SliverGrid(
              delegate:SliverChildBuilderDelegate(
                  (context, index){
                    return Container(
                      alignment: Alignment.center,
                      color: Colors.teal[100 * (index % 9) ],
                      child: Text('teal $index'),
                    );
                  },
                childCount: 30,
          ) ,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 3,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
                childAspectRatio: 2,
          ))
        ],
      ),
    );
  }

}
