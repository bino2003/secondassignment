import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:secondassignment/PostsModel.dart';

import 'Data.dart';

class PostWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Filter Icons'),
        actions: [
          IconButton(
            icon: Icon(Icons.filter_1, color: null), // Inherit color
            onPressed: () {
              // Add your action here
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_2, color: null), // Inherit color
            onPressed: () {
              // Add your action here
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_3, color: null), // Inherit color
            onPressed: () {
              // Add your action here
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_4, color: null), // Inherit color
            onPressed: () {
              // Add your action here
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_5, color: null), // Inherit color
            onPressed: () {
              // Add your action here
            },
          ),
        ],
      ),
      body: ListView.builder(itemCount: posts.length,itemBuilder: (context, index) {
        return Container(
          color: Colors.white,
          margin: EdgeInsets.only(top: 10,bottom: 10),
          child: Column(
            children: [
              Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: CircleAvatar(
                         radius: 15,child:             Image.asset(posts[index]["image"],height: 200,width: 200),

                       ),
                     ),

                     Text(posts[index]["username"]),

                   ],
                 ),
               ),
// Icons.messenger_outline_rounded
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Icon(Icons.more_horiz_outlined,),
                         ),
                         Icon(Icons.close,),
                       ],
                     ),
                   )


                ],

              ),

              Image.asset(posts[index]["post"],fit: BoxFit.cover, ),
              Divider(
                indent: 2,
                endIndent: 2,
              )
,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.front_hand),

                        ),

                        Text("like"),

                      ],
                    ),
                  ),
// Icons.messenger_outline_rounded
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.messenger_outline_rounded),
                        ),
                        Text("comment"),
                      ],
                    ),
                  ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.share_outlined),
          ),
          Text("share"),
          ],
          ),



                ],

              ),


            ],
          ),
        );
      },),
    );
    throw UnimplementedError();
  }

}