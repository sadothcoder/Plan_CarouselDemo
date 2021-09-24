import 'package:flutter/material.dart';
import 'package:trial_project/constants/colors.dart';
import 'package:trial_project/constants/constraints.dart';

class BorderedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color borderColor;
  final Color textColor;
  BorderedButton(
      {@required this.onPressed,
        @required this.text,
        this.borderColor,
        this.textColor});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    print(size.height);
    print(size.width);

    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: borderColor ?? blue,
          ),
        ),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: 20,
                  color: textColor ?? borderColor ?? blue,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}

class FilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color filledColor;
  final Color textColor;
  FilledButton(
      {@required this.onPressed,
        @required this.text,
        this.filledColor,
        this.textColor});

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onPressed,
      child: Container(
        height: LayCon.double50,
        // width: 200,
        // padding: EdgeInsets.all(padding1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LayCon.double50),
          color: filledColor?? blue,
        ),
        child: Center(
            child: Text(
              text,
              style: TextStyle(
                  fontSize: LayCon.double18,
                  color: textColor ?? Colors.white,
                  fontWeight: FontWeight.bold
              ),
            )
        ),
      ),
    );
  }
}