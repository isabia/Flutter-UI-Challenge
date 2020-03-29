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
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              top: 30.0,
              bottom: 20.0,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
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
                SizedBox(height: 20),
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
                Expanded(
                  child: Container(
                    height: 300,
                    child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      itemCount: 5,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Text("Details page"),
                            ),
                          );
                        },
                        child: Stack(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  alignment: Alignment.center,
                                  margin: EdgeInsets.only(right: 15),
                                  width: 140,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      stops: [0.5, 1],
                                      colors: [
                                        Color(0xff7CB25C),
                                        Color(0xff458F52),
                                      ],
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(30.0),
                                    child: Image.network(
                                      'https://shopping.tallink.com/images/prod/B/E/2/2/BE22720F-B613-4826-AD0B-F715DF1E44EE_1_big.png',
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Text(
                                  'Chanel Coco Noir',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(
                                  '\$ 44.00',
                                  style: TextStyle(
                                    color: Color(0xff7CB25C),
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                  margin: EdgeInsets.only(
                                    bottom: 20,
                                    right: 15,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(13),
                                      topRight: Radius.circular(12),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  width: 45,
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.black,
                                    size: 20,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
