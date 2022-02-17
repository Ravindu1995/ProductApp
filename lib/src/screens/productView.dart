import 'package:flutter/material.dart';
import 'package:interview/src/core/button_custom.dart';
import 'package:interview/src/core/color.dart';
import 'package:interview/src/core/container_custom.dart';
import 'package:interview/src/core/text_custom.dart';

class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primarycol,
      appBar: AppBar(
        backgroundColor: primarycol,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
          color: pWhite,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_mall_outlined),
            color: pWhite,
          ),
        ],
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ContainerCustom(
              
              height: 375,
              boxDecoration: BoxDecoration( color: white,borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))),
              child: Column(
              children: [
                TextCustom(text: "Bobo VR Z5",marginTop: 18, textColor: black,fontWeight: FontWeight.bold,fontSize: 20,),
                TextCustom(text: "18.33", textColor: black,fontWeight: FontWeight.bold,fontSize: 18,),
                TextCustom(marginLeft: 25,marginRight: 25,marginTop: 5, text: "Bobo VR 25 is connected with Daydream platform, more interesting and easier for VR experience, Material lens made of professional optical lens. Aspheric Design and Maximum power up to 50MW", textColor: ash,fontSize: 12,),
                ContainerCustom(
                  marginLeft: 25,marginRight: 25, marginTop: 25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_rounded),
                          color: ash,
                        ),
                        TextCustom(text: 'Improved optics',textColor: black,fontSize: 12,)
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.brightness_4),
                          color: ash,
                        ),
                        TextCustom(text: 'Clear Brightness',textColor: black,fontSize: 12,)
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.wifi),
                          color: ash,
                        ),
                        TextCustom(text: 'Wifi Controllers',textColor: black,fontSize: 12,)
                        ],
                      )
                    ],
                  ),
                ),
                ButtonCustom(text: "Checkout", onTap: (){},color: black, height: 45,marginTop: 25,)
              ],
            ))

          ],
        ),
      ),
    );
  }
}