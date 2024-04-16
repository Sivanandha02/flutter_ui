import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_ui/model/model.dart';
import 'package:google_fonts/google_fonts.dart';

class Plant_List extends StatelessWidget {
  List<data>place=[
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),
    data(name: "Philodendron \nAtom ", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwmM7RdbJzSWl443wI9hqmuMhncWgXrNX42F3-XXcYOQ&s",desc:"500 ml"),

  ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
        // toolbarHeight: 110,
        leading: Column(
          children: [
            Icon(
              Icons.settings,
              size: 35,
            ),
          ],
        ),
        // title:
        // ),
        actions: [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: CircleAvatar(
              child: Icon(
                Icons.add,
                size: 35,
              ),
            ),
          )
        ],
      ),
  
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Water Today",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.normal,
                    color: Colors.green,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: ListView.separated(
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Card(
                      color: Colors
                          .primaries[Random().nextInt(Colors.primaries.length)],
                      child: ListTile(
                        leading: Container(
                          // height: 200,

                          child: Image.network("${place[index].image}"),
                        ),
                        // leading:  CircleAvatar(
                        // backgroundColor: MyColors.iconColors,
                        // backgroundImage: NetworkImage("${lists[index]['pic']}"
                        //     ),
                        // ),
                        trailing: Icon(
                          Icons.water_drop,
                          color: Colors.lightBlue,
                          // size: 50,
                        ),

                        title: Text(
                          "${place[index].name}",
                          style: GoogleFonts.sail(
                            fontStyle: FontStyle.italic
                          ),
                        ),
                        // style: GoogleFonts.abel(fontSize: 40)),

                        subtitle: Row(
                          children: [
                            Icon(
                              Icons.water_drop,
                              color: Colors.lightBlue,
                            ),
                            Text(
                              "${place[index].desc}",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ))
                  // return null;
                  ,
                  separatorBuilder: (context, index) {
                    if ((index + 1) % 4 == 0) {
                      return Text(
                        'Fri,February 7',
                        style: TextStyle(fontSize: 30),
                      );
                    } else {
                      return Container();
                    }
                  },
                  itemCount: place.length),
            ),
          ],
        ),
      ),
    );
  }
}
