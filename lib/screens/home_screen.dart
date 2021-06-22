import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:xcrino_machine_test/app_colors.dart';
import 'package:xcrino_machine_test/models/list_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool indicator = false;
  List<Products> productsList = [];

  void getHttp() async {
    setState(() {
      indicator = true;
    });
    try {
      Response response =
          await Dio().get("https://cat-fact.herokuapp.com/facts");
      setState(() {
        productsList = productsFromMap(jsonEncode(response.data));
        indicator = false;
      });
    } catch (e) {
      setState(() {
        indicator = false;
        print("error ---> $e");
      });
      print(e);
    }
  }

  @override
  void initState() {
    getHttp();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[50],
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_sharp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          color: AppColors.appColor,
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            indicator
                ? Center(
                    child: CircularProgressIndicator(
                    color: AppColors.appColor,
                  ))
                : productsList.length == 0
                    ? Text("no data")
                    : ListView.separated(
                        shrinkWrap: true,
                        itemCount: productsList.length,
                        itemBuilder: (context, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                productsList[index].user,
                                style: TextStyle(
                                    color: AppColors.beginGradientColor,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                productsList[index].text,
                                style: TextStyle(
                                    color: AppColors.endGradientColor,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          );
                        },
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: 30,
                          );
                        },
                      )
          ],
        ),
      ),
    );
  }
}
