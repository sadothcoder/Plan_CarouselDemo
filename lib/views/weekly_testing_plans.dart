import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:trial_project/constants/colors.dart';
import 'package:trial_project/constants/constraints.dart';
import 'package:trial_project/data/plan_data.dart';
import 'package:trial_project/widgets/card_widgets.dart';
import 'package:trial_project/constants/constraints.dart';

class WeeklyPlans extends StatefulWidget {

  @override
  _WeeklyPlansState createState() => _WeeklyPlansState();
}

class _WeeklyPlansState extends State<WeeklyPlans> {

  SwiperController swiperController = new SwiperController();
  int currentIndex = 0;


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    LayCon.init(size);

    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          "Weekly Testing Plans",
          style: TextStyle(
            color: Colors.black,
            fontSize: LayCon.double18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: size.height * 0.70,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  List cards = cardsList(size);
                  return cards[index];
                },
                onIndexChanged: (index){
                  setState(() {
                    currentIndex = index;
                  });
                },
                itemCount: cardsList(size).length,
                viewportFraction: 0.8,
                scale: 0.9,
                autoplay: false,
                loop: false,
              ),
            ),
            SizedBox(height: LayCon.double10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==0 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==0 ? yellow: Colors.grey[300],
                    borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==1 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==1 ? blue: Colors.grey[300],
                      borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==2 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==2 ? green: Colors.grey[300],
                      borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==3 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==3 ? green: Colors.grey[300],
                      borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==4 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==4 ? green: Colors.grey[300],
                      borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==5 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==5 ? green: Colors.grey[300],
                      borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
                AnimatedContainer(
                  duration: Duration(milliseconds: 200),
                  margin: EdgeInsets.only(right: LayCon.double5),
                  height: LayCon.double8,
                  width: currentIndex==6 ? LayCon.double15: LayCon.double8,
                  decoration: BoxDecoration(
                      color: currentIndex==6 ? red: Colors.grey[300],
                      borderRadius: BorderRadius.circular(LayCon.double20)
                  ),
                ),
              ],
            ),
            SizedBox(height: LayCon.double10,),
            InkWell(
              onTap: (){},
              child: Image(
                image: AssetImage("assets/icons/play.png"),
                height: LayCon.double50,
                width: LayCon.double50,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: LayCon.double10,),
            Text(
              "Video: How testing works.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: blue,
                  fontSize: LayCon.double18,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline
              ),
            ),
            SizedBox(height: LayCon.double5,),
            Text(
              "Why should I quit?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: blue,
                  fontSize: LayCon.double18,
                  fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
              ),
            ),
            SizedBox(height: LayCon.double15,),
          ],
        ),
      ),
    );
  }

  List<Widget> cardsList(Size size){

    return [
      letsBeginCard(size, currentIndex),
      freeCard(size, currentIndex),
      otherCard(size, planDataList[0], currentIndex),
      otherCard(size, planDataList[1], currentIndex),
      otherCard(size, planDataList[2], currentIndex),
      otherCard(size, planDataList[3], currentIndex),
      giftCard(size, currentIndex)
    ];
  }

}
