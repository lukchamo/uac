
import 'package:medco_ftd/appTheme.dart';

class BuildDrawer extends StatelessWidget {
  const BuildDrawer({Key key}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {

    //PrefUser _prefUser = new PrefUser();

    return Drawer(      
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(            
            //accountName: Text(_prefUser.displayName),
            accountName: Text('Eduardo'),
            accountEmail: Text("asd@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Text("LC", style: TextStyle(color: AppTheme.nearlyBlue),),
              maxRadius: 30.0,
            ),

          ),
          // DrawerHeader(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: <Widget>[
          //       Wrap(
          //       spacing: 15.0,
          //       alignment: WrapAlignment.center,
          //       verticalDirection: VerticalDirection.down,                
          //       children: <Widget>[
          //         CircleAvatar(
          //           backgroundColor: Colors.white,
          //           child: Text("LC", style: TextStyle(color: PRIMARY_COLOR),),
          //           maxRadius: 30.0,
          //         ),
          //         Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: <Widget>[
          //             Container(
          //               width: 180.0,
          //               child: Text(_prefUser.displayName, style: TextStyle(fontSize: 20.0, color: Colors.white), overflow: TextOverflow.ellipsis,),
          //             ),
          //             InkWell(
          //               child: Text("Editar perfil", style: TextStyle(color: Colors.white),),
          //               onTap: () => Navigator.pushNamed(context, 'EditProfile'),
          //             )
          //           ],
          //         )
          //       ],
          //     ),
          //     ]
          //   ),
          //   decoration: BoxDecoration(
          //     color: PRIMARY_COLOR              
          //   ),
          //   padding: EdgeInsets.all(10.0),
          // ),
          // ListTile(
          //   title: Text("Mis Historia Clinica"),
          //   leading: Icon(Icons.collections_bookmark),
          // ),
          // ListTile(
          //   title: Text("Mis Agentes Favoritos"),
          //   leading: Icon(Icons.star_border),
          // ),
          // ListTile(
          //   title: Text("Gestionar Familia"),
          //   leading: Icon(Icons.people_outline),
          // ),
          // ListTile(
          //   title: Text("Chats"),
          //   leading: Icon(Icons.message),
          // ),
          Divider(),
          ListTile(
            title: Text("Centro de Ayuda"),
            leading: Icon(Icons.help_outline),
          ),
           ListTile(
            title: Text("Terminos y condiciones"),
            leading: Icon(Icons.info_outline),
          ),
          Divider(),
           ListTile(
            title: Text("Cerrar Sesión"),
            leading: Icon(Icons.exit_to_app),
            onTap: () async {
              // print(_prefUser.token);
              // _prefUser.token = null;
              // print(_prefUser.token);
              // FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, 'LoginPage');
              
            },
          )
        ],
      ),
    );
  }
}