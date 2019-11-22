
import 'package:medco_ftd/appTheme.dart';
import 'package:medco_ftd/ui/widgets/cardProfileInfo.dart';
import 'package:medco_ftd/ui/widgets/titleView.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
         CardProfileInfo(),
         TitleView(titleTxt: 'Proyectos',subTxt: "Ver todos"),
         _buildBadgesCarrusel(),
         TitleView(titleTxt: 'Retos',subTxt: "Ver mas"),
         _buildBadgesCarrusel()
        ],
      ),
    );
  }

  Widget _buildBadgesCarrusel(){
    return Container(
      height: 120.0,
      
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 20.0),

        children: <Widget>[
          _buildItemBadge(),
          _buildItemBadge(),
          _buildItemBadge(),
          _buildItemBadge()
        ],
      ),
    );
  }


  Widget _buildItemBadge(){
    return Padding(
      padding: const EdgeInsets.only(top:10.0, left: 10.0, right: 5.0, bottom: 10.0),
      child: Container(
        //margin: EdgeInsets.only(right: 10.0),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: AppTheme.grey.withOpacity(0.2),
                offset: Offset(1.1, 1.1),
                blurRadius: 10.0),
          ],
        ),
        //height: 100.0,
        width: 100.0,
      ),
    );
  }



  
}
