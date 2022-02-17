import 'package:flutter/material.dart';
import 'package:interview/src/controller/productcontroller.dart';
import 'package:interview/src/core/button_custom.dart';
import 'package:interview/src/core/color.dart';
import 'package:interview/src/core/container_custom.dart';
import 'package:interview/src/core/text_custom.dart';
import 'package:interview/src/screens/productView.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.notes_outlined),
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: Colors.black,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_mall_outlined),
            color: Colors.black,
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 25.0, right: 20.0, top: 35),
                child: Text(
                  "Enjoy the world",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 25.0, right: 20.0, top: 5),
                child: Text(
                  "into vertual reality",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
                ),
              ),
            ),
            ContainerCustom(
              height: 125,
              marginTop: 20,marginRight: 25,marginLeft: 25,
              boxDecoration: BoxDecoration(color: primarycol ),
              child: Column(
                children: [
                  TextCustom(text: "Improved Controller",fontWeight: FontWeight.bold,marginTop: 15,),
                  TextCustom(text: " Design With",fontWeight: FontWeight.bold,),
                  TextCustom(text: " Virtual Reality",fontWeight: FontWeight.bold,),
                  ButtonCustom(text: 'Shop Now!', onTap: (){
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProductView()),);
                  },color: white,btntxtcol: primarycol,marginTop: 8,marginLeft: 55,marginRight: 55,)
                  
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15, left: 25),
              height: 30,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: primarycol,
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Center(
                        child: Text(
                      'All Product',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Center(
                        child: Text(
                      'Popular',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Center(
                        child: Text(
                      'Recent',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: const Center(
                        child: Text(
                      'Popular',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    )),
                  ),
                ],
              ),
            ),
            ContainerCustom(
                marginTop: 15,
                height: 252,
                width: 150,
                marginLeft: 25,
                        boxDecoration: BoxDecoration(color: pWhite),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return ContainerCustom(
                        child: Column(
                          children: [
                            //         Image.asset(
                            //   'ProductController.productList[index].images',
                            //   fit: BoxFit.cover,
                            // ),
                            // TextCustom(
                            //   text: ProductController.productList[index].title.toString(),
                            //   textColor: black,
                            //   fontWeight: FontWeight.bold,
                            //   fontSize: 20,
                            // ),
                            // TextCustom(
                            //   text: ProductController.productList[index].price.toString(),
                            //   textColor: black,
                            // )
                          ],
                        ),
                      );
                    }))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        //currentIndex: _selectedPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: '',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.near_me_outlined),
            label: '',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: '',
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
