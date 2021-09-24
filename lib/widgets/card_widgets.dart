import 'package:flutter/material.dart';
import 'package:trial_project/constants/colors.dart';
import 'package:trial_project/constants/constraints.dart';
import 'package:trial_project/widgets/buttons.dart';

Widget letsBeginCard(Size size, int index){



  return Container(
    margin: EdgeInsets.all(LayCon.double5),
    padding: EdgeInsets.all(LayCon.double15),
    decoration: BoxDecoration(
        color: index==0 ? lightYellow : Colors.white,
        borderRadius: BorderRadius.circular(LayCon.double20),
        border: Border.all(color: yellow, width: LayCon.double2),
        boxShadow: [
          BoxShadow(
              color: lightYellow,
              blurRadius: LayCon.double5
          )
        ]
    ),
    child: Column(
      children: [
        SizedBox(height: LayCon.double30,),
        Image(
          image: AssetImage("assets/images/image0.png"),
          width: size.width * 0.35,
        ),
        Spacer(),
        Text(
          "Let's begin!",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.black,
              fontSize: LayCon.double24,
              fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: LayCon.double15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Do you have a pre-order or other order code from a purchase already made?",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: LayCon.double14,
                ),
              ),
              SizedBox(height: LayCon.double10,),
              Text(
                "Yes - Enter your code below to activate\nNo - Swipe to browse plans.",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: LayCon.double14,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: LayCon.double10,),
        Spacer(),
        Container(
          height: LayCon.double50,
          padding: EdgeInsets.symmetric(horizontal: LayCon.double15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LayCon.double50),
            color: Colors.white,
            border: Border.all(color: yellow, width: LayCon.double2)
          ),
          child: TextField(
            textAlign: TextAlign.center,
            cursorColor: yellow,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "xxxx-xxxx",
              hintStyle: TextStyle(
                color: Colors.grey
              )
            ),
          ),
        ),
        Spacer(),
        FilledButton(
            onPressed: (){},
          filledColor: yellow,
            text: "Activate",
        ),
        SizedBox(height: LayCon.double10,),
      ],
    ),
  );
}

Widget freeCard(Size size, int index){

  return Container(
    margin: EdgeInsets.all(LayCon.double5),
    padding: EdgeInsets.all(LayCon.double15),
    decoration: BoxDecoration(
        color:index==1 ? lightBlue : Colors.white,
        borderRadius: BorderRadius.circular(LayCon.double20),
        border: Border.all(color: blue, width: LayCon.double2),
        boxShadow: [
          BoxShadow(
              color: lightBlue,
              blurRadius: LayCon.double5
          )
        ]
    ),
    child: Column(
      children: [
        SizedBox(height: LayCon.double30,),
        Image(
          image: AssetImage("assets/images/image1.png"),
          width: size.width * 0.35,
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.done,
              color: blue,
              size: LayCon.double20,
            ),
            SizedBox(width: LayCon.double5,),
            Expanded(
              child: Text(
                "Explore the application",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: LayCon.double14,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: LayCon.double5,),
        Row(
          children: [
            Icon(
              Icons.done,
              color: blue,
              size: LayCon.double20,
            ),
            SizedBox(width: LayCon.double5,),
            Expanded(
              child: Text(
                "Lessons for quitting (coming soon)",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: LayCon.double14,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          "Free",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: LayCon.double24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Spacer(),
        FilledButton(
          onPressed: (){},
          filledColor: blue,
          text: "Explore",
        ),
        SizedBox(height: LayCon.double10,),
      ],
    ),
  );
}

Widget otherCard(Size size, Map planCard, int index){

  return Container(
    margin: EdgeInsets.all(LayCon.double5),
    padding: EdgeInsets.all(LayCon.double10),
    decoration: BoxDecoration(
        color:index==planCard["position"] ? lightGreen : Colors.white ,
        borderRadius: BorderRadius.circular(LayCon.double20),
        border: Border.all(color: green, width: LayCon.double2),
        boxShadow: [
          BoxShadow(
              color: lightGreen,
              blurRadius: LayCon.double5
          )
        ]
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: LayCon.double20,),
        Center(
          child: Image(
            image: AssetImage("assets/images/${planCard["image"]}.png"),
            height: size.width * 0.35,
          ),
        ),
        Text(
          planCard['duration'],
          textAlign: TextAlign.left,
          style: TextStyle(
            color: Colors.black,
            fontSize: LayCon.double16,
            fontWeight: FontWeight.bold
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "\$",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: LayCon.double16,
                  fontWeight: FontWeight.bold
              ),
            ),
            Text(
              planCard['price'],
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: LayCon.double35,
                  fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        SizedBox(height: LayCon.double10,),
        Text(
          planCard['description'],
          textAlign: TextAlign.left,
          style: TextStyle(
            color: textColor,
            fontSize: LayCon.double14,
          ),
        ),
        Spacer(),
        ...planCard["highlights"].map((point)=>Padding(
          padding: EdgeInsets.only(bottom: LayCon.double5),
          child: Row(
            children: [
              Icon(
                Icons.done,
                color: green,
                size: LayCon.double20,
              ),
              SizedBox(width: LayCon.double5,),
              Expanded(
                child: Text(
                  point,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: textColor,
                    fontSize: LayCon.double14,
                  ),
                ),
              ),
            ],
          ),
        )).toList(),
        Row(
          children: [
            SizedBox(width: LayCon.double25,),
            Expanded(
              child: Text(
                "Learn more",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: green,
                  fontSize: LayCon.double14,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        FilledButton(
          onPressed: (){},
          filledColor: green,
          text: "Choose Plan",
        ),
        SizedBox(height: LayCon.double5,),
      ],
    ),
  );
}

Widget giftCard(Size size, int index){

  return Container(
    margin: EdgeInsets.all(LayCon.double5),
    padding: EdgeInsets.symmetric(vertical: LayCon.double10, horizontal: LayCon.double15),
    decoration: BoxDecoration(
        color:index==6 ? lightRed : Colors.white ,
        borderRadius: BorderRadius.circular(LayCon.double20),
        border: Border.all(color: red, width: LayCon.double2),
        boxShadow: [
          BoxShadow(
              color: lightRed,
              blurRadius: LayCon.double5
          )
        ]
    ),
    child: Column(
      children: [
        // SizedBox(height: 10,),
        Image(
          image: AssetImage("assets/images/image6.png"),
          width: size.width * 0.60,
        ),
        Spacer(),
        Row(
          children: [
            Icon(
              Icons.done,
              color: red,
              size: LayCon.double20,
            ),
            SizedBox(width: LayCon.double5,),
            Expanded(
              child: Text(
                "Customize a gift and reward",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: textColor,
                  fontSize: LayCon.double14,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: LayCon.double5,),
        Row(
          children: [
            SizedBox(width: LayCon.double25,),
            Expanded(
              child: Text(
                "Learn more",
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: red,
                  fontSize: LayCon.double14,
                ),
              ),
            ),
          ],
        ),
        Spacer(),
        FilledButton(
            onPressed: (){},
          filledColor: red,
            text: "Choose Giftcard",
        ),
        SizedBox(height: LayCon.double5,),
      ],
    ),
  );
}