import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CreateAsset.dart';
import 'TrackAsset.dart';
import 'AssetsList.dart';

import 'package:dsc_dapp/AssetsModel.dart';

void main() => runApp(DSC());

class DSC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AssetsModel(),
      child: MaterialApp(
        title: 'AuthenticMax',
        debugShowCheckedModeBanner: true,
        // Set Raleway as the default app font
        theme: ThemeData(
          fontFamily: 'Candara',
        ),

        home: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFC6A7F)),
                  child: new Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 30.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFFFFCE56)),
                  child: new Icon(
                    Icons.attach_money,
                    color: Colors.white,
                  ),
                ),
                new Container(
                  margin: new EdgeInsets.only(left: 100.0, top: 50.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                      borderRadius: new BorderRadius.circular(50.0),
                      color: Color(0xFF45E0EC)),
                  child: new Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 80.0),
                  child: new Text(
                    "AuthenticMax",
                    style: new TextStyle(fontSize: 30.0),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CreateAsset(),
                            ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF18D191),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Create Asset",
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white))),
                    ),
                  ),
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AssetsList(),
                            ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFF4364A1),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("View Assets",
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white))),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TrackAsset(),
                            ));
                      },
                      child: new Container(
                          alignment: Alignment.center,
                          height: 40.0,
                          decoration: new BoxDecoration(
                              color: Color(0xFFDF513B),
                              borderRadius: new BorderRadius.circular(9.0)),
                          child: new Text("Track Asset",
                              style: new TextStyle(
                                  fontSize: 16.0, color: Colors.white))),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
