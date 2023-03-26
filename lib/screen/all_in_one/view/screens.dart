import 'package:flutter/material.dart';
import 'package:mirror_wall_project/screen/all_in_one/provider/home_provider.dart';
import 'package:provider/provider.dart';

class home_screen extends StatefulWidget {
  const home_screen({Key? key}) : super(key: key);

  @override
  State<home_screen> createState() => _home_screenState();
}
Home_p?home_pt,home_p;
class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    home_p=Provider.of<Home_p>(context,listen: false);
    home_pt=Provider.of<Home_p>(context,listen: true);
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text("Mutiple Apps"),
          centerTitle: true,
        ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,mainAxisExtent: 236,),
          itemCount: 8,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'screen_2');
                home_p!.loadurl(index);
              },
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      Image.asset("${home_p!.Images[index]}",height: 140,
                       width: 200, fit: BoxFit.cover,),
                      SizedBox(height: 20),
                      Text("${home_p!.name[index]}"),
                    ],
                  ),
                ),
              ),
            );
          },
        ),

    ),
    );
  }
}
