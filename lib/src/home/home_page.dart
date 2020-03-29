import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(
              Icons.shopping_basket,
              color: Colors.black,
            ),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Perfume",
                    textAlign: TextAlign.left,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 36.0)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                width: MediaQuery.of(context).size.width,
                height: 60.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    RotatedBox(
                      quarterTurns: 3,
                      child: Container(
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color(0xFF59A05E),
                            borderRadius: BorderRadius.circular(15)),
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: 160,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "FLORAL",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF59A05E),
                          ),
                        )),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                        width: 160,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "WARM & SPICY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF59A05E),
                          ),
                        )),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          RotatedBox(
            quarterTurns: 15,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'SUGGESTED',
                    style: TextStyle(
                      color: Color(0xFF59A05E),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                CircleAvatar(
                  backgroundColor: Color(0xFF59A05E),
                  radius: 2,
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          RotatedBox(
            quarterTurns: 3,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'POPULAR',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                CircleAvatar(
                  backgroundColor: Colors.grey,
                  radius: 2,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
