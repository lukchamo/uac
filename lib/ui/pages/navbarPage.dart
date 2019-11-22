import 'package:flutter/material.dart';

import 'package:medco_ftd/appTheme.dart';
import 'package:medco_ftd/ui/pages/badgesPage.dart';

import 'package:medco_ftd/ui/pages/dashboardPage.dart';
import 'package:medco_ftd/ui/pages/leaderboard.dart';
import 'package:medco_ftd/ui/pages/loginPage.dart';
import 'package:medco_ftd/ui/widgets/BuildDrawer.dart';
import 'package:medco_ftd/ui/widgets/backgrounds.dart';


class NavbarPage extends StatefulWidget {
  NavbarPage({Key key}) : super(key: key);

  _NavbarPageState createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {

  int _currentIndex = 0;

   GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {

   

    //final data = ModalRoute.of(context).settings.arguments;

    //final loginProvider = Provider.of<LoginProvider>(context);
    
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Dravimedic"),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      // ),
      key: _scaffoldKey,
      drawer: BuildDrawer(),
      body: Stack(
        children: <Widget>[
          widgetBackground(context),
          _buildHeader(),
          Container(
            margin: EdgeInsets.only(top: 100.0), 
            child: _callNav(_currentIndex)
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.local_hospital),
      //   backgroundColor: AppTheme.nearlyBlue,
      //   onPressed: (){
      //     Navigator.pushNamed(context, 'ScheduleService', arguments: {"id":0});
      //   },
      // ),
    );
  }

  Widget _callNav( int currentNav){
    switch (currentNav) {
      case 0 : return DashboardPage();       
      case 1 : return BadgesPage();
      case 2 : return LeaderboardPage();
      default:
        return DashboardPage();
    }
  }

  Widget _bottomNavigationBar(BuildContext context){
    
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.white,
        primaryColor: AppTheme.nearlyBlue,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(200,200,200, 0.9), fontSize: 8.0)
        ),
      ),
      child: BottomNavigationBar(
          currentIndex: _currentIndex,
          //type: BottomNavigationBarType.fixed ,
          //elevation: 10.0,
          //selectedFontSize: ,
          //iconSize: 20.0,
          
          showUnselectedLabels: false,
          onTap: (index){
            setState(() {
             _currentIndex = index; 
            });
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.scatter_plot),
              title: Text("FTD")
            ),
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.chat),
            //   title: Text("Chat")
            // ),
            //  BottomNavigationBarItem(
            //   icon: Icon(Icons.local_hospital),
            //   title: Text("Servicios")
            // ),
            BottomNavigationBarItem(
              icon: Icon(Icons.sentiment_very_satisfied),
              title: Text("Insignias")
            ),  
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle),
              title: Text("Leaderboard")
            ),  
            // BottomNavigationBarItem(
            //   icon: Icon(Icons.flag),
            //   title: Text("Metas")
            // )
          ],
        ),
    );
  }

 
  Widget _buildHeader(){
    return Container(
       child: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu, color: AppTheme.white),
                onPressed: (){
                  _scaffoldKey.currentState.openDrawer();
                 // Scaffold.of(context).openDrawer();
                },
              )
              ,
              Container(child: Image.asset("assets/images/farmatodo-logo.png"), width: 180.0,),
              IconButton(
                //icon: Icon(Icons.notifications_none, color: AppTheme.nearlyBlue),
                icon: CircleAvatar(
                  backgroundColor: AppTheme.white,
                  radius: 30.0,
                  child: Text('LC'),
                ),
                onPressed: (){                 
                  Navigator.pushNamed(context, "ProfilePage");
                },
              )
            ],
          )
          )
        )
    );
  }
  

}

