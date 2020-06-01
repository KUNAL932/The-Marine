import 'package:flutter/material.dart';

class PlaceOrder extends StatelessWidget {
  final addressController = TextEditingController();
  @required final String title;
  @required final double quantity;
  @required final double price;
  @required final String imageUrl;

  PlaceOrder(this.title,this.quantity,this.price,this.imageUrl);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text("Place Order"),
      ),
      body: Padding(padding: EdgeInsets.all(10.0),
              child: Column(
                children:  <Widget>[
                  Center(
                    child: Container(
                      child: Column(children: <Widget>[
                        Text("Deliver To"),
                        Card(
                          elevation: 6,
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            child: Column(children: <Widget>[
                              Text("YOUR ADDRESS"),
                              TextField(
                            controller: addressController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: "House Number/Street",
                              // labelText: "Near Point/Next To",
                              
                            ),
                              maxLines:1,
                                
                                ),
                              ],)
                            ),
                          ),
                          Card(
                          elevation: 6,
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Column(children: <Widget>[
                              // Text("YOUR ADDRESS"),
                              TextField(
                            controller: addressController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "City/Town",                              
                            ),
                              maxLines:1,
                                
                                ),
                              ],)
                            ),
                          ),
                          Card(
                          elevation: 6, 
                          color: Colors.white,
                          child: Container(
                            padding: EdgeInsets.all(5.0),
                            child: Column(children: <Widget>[
                              // Text("YOUR ADDRESS"),
                              TextField(
                            controller: addressController,
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: "LandScape",
                              
                            ),
                              maxLines:1,
                                
                                ),
                              ],)
                            ),
                          ),
                          // Card(
                          // elevation: 6, 
                          // color: Colors.white,
                          // child: Container(
                          //   padding: EdgeInsets.all(5.0),
                          //   child: Column(children: <Widget>[
                          //     TextField(
                          //   controller: addressController,
                          //   decoration: InputDecoration(
                          //     border: UnderlineInputBorder(),
                          //     labelText: "STATE",                              
                          //   ),
                          //     maxLines:1,
                                
                          //       ),
                          //     ],)
                          //   ),
                          // ),
                      ],),
                    ),
                  ),
                  Card(
                    child: Container(
                      width: 400,
                      height: 100,
                      padding: EdgeInsets.all(10),
                      child: Column(children: <Widget> [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          Text("Total"),
                          Column(
                            children: <Widget>[
                              Chip(
                                label: Text("$price"),
                                // shape: ShapeBorder.lerp(),
                                backgroundColor: Theme.of(context).backgroundColor,),
                              Text("$quantity"),
                              
                            ],
                          ),

                        ],)
                      ]),),
                  ),
                   Align(
                     alignment: Alignment.bottomCenter,
                          child: Container(
                            // margin: EdgeInsets.symmetric(vertical: 20),
                          width: 400,
                          child: RaisedButton(
                            onPressed: (){
                              // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PlaceOrder,),);
                            },
                            child: Text("Place Order"),
                            ),
                              ),
                   ),
                  
                ]
              ),
      ),
      
    );
  }
}

