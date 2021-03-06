import 'package:flutter/material.dart';
import 'dart:math';

class FriendsRq extends StatelessWidget {
  const FriendsRq({Key? key}) : super(key: key);

  Widget actionButton(IconData icon, String actionTitle, Color iconColor) {
    return Expanded(
      child: FlatButton.icon(
       onPressed: () {},
        icon: Icon(
         icon,
          color: iconColor,
        ),
        label: Text(
          actionTitle,
          style: TextStyle(
            color: Colors.white,
         ),
       ),
      ),
    );
  }
   Widget account(String avatarUS, String userName, String avatarFR){
      final number= Random().nextInt(100);
      return Container(
        
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //First of all we need to creat the post editor
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  //color: mainBlack,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 50.0,
                            backgroundImage: NetworkImage(avatarUS),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            
                            children: [
                              Container(
                                
                                padding: const EdgeInsets.only(bottom: 8),
                                child:  Text(
                                  userName,
                                 style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                 ),
                                ),
                              ),
                              Row(
                              children: [                               
                              CircleAvatar(
                               radius: 8.0,
                               backgroundImage: NetworkImage(avatarFR),
                              ),
                                SizedBox(
                                width: 10.0,
                              ), 
                              Text(
                              '${number.toString()} b???n chung',
                              style: TextStyle(
                              color: Colors.grey[500],
                               ),
                              ), 
                               ], 
                              ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                            Container(  
                              padding: const EdgeInsets.all(10),
                             // margin: EdgeInsets.all(25),  
                              child: FlatButton(  
                              child: Text('Ch???p nh???n', style: TextStyle(fontSize: 20.0),),  
                              color: Colors.blueAccent,  
                              textColor: Colors.white,  
                               onPressed: () {},  
                              ),
                                ), 
                                Container(  
                             // margin: EdgeInsets.all(25),  
                              child: FlatButton(  
                              child: Text('X??a', style: TextStyle(fontSize: 20.0),),  
                              color: Colors.grey,  
                              textColor: Colors.white,  
                               onPressed: () {},  
                              ),
                                ), 
                            ],                           
                              ),
                            ],
                          ),
                        ],
                      ), 
                    ],                 
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    List<String> avatarUrl = [
    "https://pbs.twimg.com/profile_images/1300137889267937280/4zf4z8dg_400x400.jpg",
    "https://static.wikia.nocookie.net/kamenrider/images/8/8c/Horobi_Rebuilt.png",
    "https://static.wikia.nocookie.net/ultramananthology/images/5/51/Trigger_Multi_Type.png",
  ];

    return MaterialApp(
      home: Scaffold(
      body: Container(
       padding: EdgeInsets.all(10),
        color: Colors.grey.shade200,
        child: ListView(
          children: <Widget> [
            Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "G???i ??",
                      style: TextStyle(fontSize: 15, color: Colors.black, fontWeight: FontWeight.w700,fontFamily: 'Roboto'),
                    ),
                    style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                  ),

                ),
                
                SizedBox(
                  width: 5,
                ),
                SizedBox(
                   height: 50.0,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      "T???t c??? b???n b??",
                      style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.w700,fontFamily: 'Roboto'),
                    ),
                    style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)))),
                  ),

                )
              ],   
            ),
            Padding(padding: EdgeInsets.only(top: 13)),
            const Divider(
              height: 1.0,
              thickness: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text('L???i m???i k???t b???n',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,fontSize: 18,fontFamily: 'Roboto'),),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 230),
                            child: Text(
                              '3',
                              style: TextStyle(color: Colors.red,fontWeight: FontWeight.w700,fontSize: 18,fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [                        
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              'Xem t???t c???',
                              style: TextStyle(color: Colors.blue, fontSize: 18,fontFamily: 'Roboto'),
                            ),
                          ),
                        ],
                      )
                    ),
                ],
              ),
            ),
            Divider(
            thickness: 1.5,
            color: Color(0xFF505050),
            ),
            SizedBox(
              height: 20.0,
            ),
              account(avatarUrl[0], 'Ch??? T???ch Aruto', avatarUrl[1]),
              account(avatarUrl[1], 'H??? Bi Cu???ng Ark', avatarUrl[0]),
              account(avatarUrl[2], 'Renbu Shima', avatarUrl[0]),   
          ],
        ),
          ],
        ),  
      ),
      ),
  );   
  }
}
