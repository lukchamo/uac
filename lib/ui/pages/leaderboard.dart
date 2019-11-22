import 'package:medco_ftd/appTheme.dart';
import 'package:medco_ftd/ui/widgets/cardProfileInfo.dart';
import 'package:medco_ftd/ui/widgets/titleView.dart';


class LeaderboardPage extends StatefulWidget {
  const LeaderboardPage({Key key}) : super(key: key);

  @override
  _LeaderboardPageState createState() => _LeaderboardPageState();
}

class _LeaderboardPageState extends State<LeaderboardPage> {

  final List<Map> leaders = [
    {
      "title": 'Eduardo Molina',
      "points": 1245,
      "position": 1
    },
    {
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },
    {
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },
    {
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },
    {
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },
    {
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },{
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },
    {
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    },{
      "title": 'Jose Espitia',
      "points": 942,
      "position": 2
    }
  ];




  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Stack(
              children: <Widget>[
                

                Positioned(
                  child: Container(   
                    margin: EdgeInsets.only(top: 50.0),
                    padding: EdgeInsets.only(top: 80.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0)
                      ),
                      color: AppTheme.white,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: AppTheme.grey.withOpacity(0.2),
                            offset: Offset(1.1, 1.1),
                            blurRadius: 10.0),
                      ],
                    ),         
                    child: ListView.builder(
                      itemCount: leaders.length,
                      padding: EdgeInsets.only(top: 0.0),
                      itemBuilder: (context, index){
                        return _buildItemLeader(title: 'Luis', points: 2445, position: index+1);
                      },
                    )
                    
                  ),
                ),

                Positioned(
                  left: MediaQuery.of(context).size.width * 0.33,
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage('https://pickaface.net/gallery/avatar/Eminero5439f53ce66cd.png'),
                        radius: 60.0,
                      ),
                      Positioned(
                        child: CircleAvatar(
                          child: Text("1"),
                          backgroundColor: AppTheme.white,
                        ),
                      )
                    ],
                  )
                ),

              ],
          ),
        )
      ],
    );
     
  }

  Widget _buildItemLeader({title: String, points: int, position: int}){
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: AppTheme.nearlyBlue,
        radius: 20.0,
      ),
      title: Wrap(
        direction: Axis.vertical,
        children: <Widget>[
          Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(points.toString() + ' Pts', style: TextStyle(fontSize: 12.0)),
        ],
      ),
      trailing: Text(position.toString()),      
    );
  }
}