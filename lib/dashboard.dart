import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:structure_demo/bloc/city_bloc.dart';
import 'package:structure_demo/global.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  CityBloc cityBloc = CityBloc();
  @override
  void initState() {
    cityBloc.cityList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: green,
        title: Text('List of city'),
      ),
      body: imageList(),
    );
  }

  Widget imageList() {
    return StreamBuilder<dynamic>(
      stream: cityBloc.cityData,
      builder: (context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData == false) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Container(
            color: Colors.black,
            child: ListView.builder(
              itemCount: snapshot.data.length + 1,
              itemBuilder: (BuildContext contex, int index) {
                return Container(
                  child: Card(
                    color: Colors.white,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    margin: EdgeInsets.all(5),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 5, top: 5),
                            height: MediaQuery.of(context).size.height - 560,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      snapshot.data[index].attachment)),
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width - 50,
                            margin: EdgeInsets.only(
                                left: 5, right: 5, top: 5, bottom: 5),
                            child: Column(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text('Name :'),
                                          Text(snapshot.data[index].name),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text('Deal :'),
                                          Text(snapshot.data[index].id),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Text('City :'),
                                          Text(snapshot.data[index].city),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }
      },
    );
  }
}
