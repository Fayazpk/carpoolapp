import 'package:carpooling_app/views/helpSupport/newComplain.dart';
import 'package:carpooling_app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelpAndSupport extends StatelessWidget {
  const HelpAndSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Help & Support"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Get.to(() => NewComplain());
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.new_label,
                        size: 35,
                      ),
                      SizedBox(width: 10),
                      CustomText(
                        text: "Submit a new request",
                        size: 22,
                      ),
                    ],
                  ),
                ),
              ),
              requestItem(),
              requestItem(),
              requestItem(),
            ],
          ),
        ),
      ),
    );
  }

  Container requestItem() {
    return Container(
      padding: EdgeInsets.all(13),
      margin: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 3,
            // offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: "Created: 5 Days ago",
            size: 15,
            weight: FontWeight.bold,
            color: Colors.blue,
          ),
          Container(
            color: Colors.grey,
            height: 0.5,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          CustomText(
            text: "Id # 2334455667",
            size: 18,
            weight: FontWeight.bold,
            color: Colors.blue[900],
          ),
          SizedBox(height: 5),
          Container(
            child: Text(
              "Driver did not complete ride, instead he kick me out from the car ",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textScaleFactor: 1.5,
            ),
          ),
          Container(
            color: Colors.grey,
            height: 0.5,
            margin: EdgeInsets.symmetric(vertical: 8),
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons
                  .pending_actions), //add different iccon for solved and pending
              SizedBox(width: 5),
              CustomText(text: "Pending"),
              Spacer(),
              CustomText(
                text: "Last Activity: Today",
                size: 15,
                weight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
