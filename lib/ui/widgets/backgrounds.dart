import 'package:medco_ftd/appTheme.dart';
import 'dart:math';

final _bg = Container(
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      gradient: AppTheme.primaryGradient
    ),
  );

Widget widgetBackground(BuildContext context){ 

    final box =  Transform.rotate(
      angle: -pi / 20.0,      
      child: Container(
        width: 500.0,
        height: 500.0,
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(100.0),
            bottomLeft: Radius.circular(100.0),

          ),
          gradient: AppTheme.primaryGradient
        ),
      )
    );

    final round = Container(
        width: MediaQuery.of(context).size.width + 100,
        height: 270.0,
        decoration: BoxDecoration(
          //shape: BoxShape.circle,
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(300.0),
            bottomLeft: Radius.circular(300.0),

          ),
          gradient: AppTheme.primaryGradient
        ),
    );
    

    //return

    return Stack(
      
      children: <Widget>[
        //_bg,
        Positioned(
          left: -50,
          top: 0,
          child: round,           
        ),
      ],
    );
  }

  
  

