import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactDetailsView extends StatelessWidget {
  Map<String,dynamic>contactDetails;

   ContactDetailsView({Key?key,required this.contactDetails})
  :super( key:key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Contacts",
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Icon(Icons.more_vert, color: Colors.black),
        ],
        bottom: PreferredSize(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('image/np.jpg'),
                ),
                SizedBox(height: 10),
                Text("${this.contactDetails["name"]}"),
                SizedBox(height: 10),
                Text("${this.contactDetails["region"]} ${this.contactDetails["country"]}"),
              ],
            ),
            preferredSize: Size.fromHeight(150)),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.indigo,
            child: Column(
              children: [
                ListTile(
                  title: Text('mobile',
                  style: TextStyle(color: Colors.white),),
                  subtitle: Text('${this.contactDetails["phone"]}',
                  style: TextStyle(color: Colors.white),),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    TextButton(
                        onPressed: null,
                        child: Icon(Icons.message),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                        )),
                    TextButton(
                      onPressed: null,
                      child: Icon(Icons.phone),
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: CircleBorder(),
                      ),
                    ),
                  ]),
                ),
                ListTile(
                  title: Text('Email',
                  style: TextStyle(color: Colors.white),),
                  subtitle: Text('${this.contactDetails['email']}',
                  style: TextStyle(color: Colors.white),),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                
                    TextButton(
                        onPressed: null,
                        child: Icon(Icons.email),
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          shape: CircleBorder(),
                        ))
                  ]),
                ),
                ListTile(
                  title: Text('Groups',
                  style: TextStyle(color: Colors.white),),
                  subtitle: Text('ui friends',
                  style: TextStyle(color: Colors.white),),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Account Linked',
            style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Telegram",
                        style: TextStyle(fontSize: 17,
                        color: Colors.white),
                      ),
                     
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Whatsap",
                        style: TextStyle(fontSize: 17,
                        color: Colors.white),
                      ),
              
                      
                    ],
                  ),
                ],
              ),
            ),
          ),

          //More Options
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "More Options",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),

          Container(
            color: Colors.indigo,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Share Contact",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "QR Code",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17),
                      ),
                    ],
                  ),
                ],
              ),
      ),
        ),
        ],
    
    ),
    );
  }
}
