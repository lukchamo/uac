 
// import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_ui_challenges/core/presentation/res/assets.dart';
// import 'package:flutter_ui_challenges/src/widgets/network_image.dart';
class ProfilePage extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile3.dart";
  //final image = avatars[1];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image(
                image: NetworkImage('https://pplware.sapo.pt/wp-content/uploads/2018/06/developer_01.jpg'),
                fit: BoxFit.cover,
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 96.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text("Eduardo Molina", style: Theme.of(context).textTheme.title,),
                                  ListTile(
                                    contentPadding: EdgeInsets.all(0),
                                    title: Text("Ingeniero de Desarrollo"),
                                    subtitle: Text("Backend"),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Row(
                              children: <Widget>[
                                Expanded(child: Column(
                                  children: <Widget>[
                                    Text("2"),
                                    Text("Años")
                                  ],
                                ),),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    Text("3025"),
                                    Text("Tareas")
                                  ],
                                ),),
                                Expanded(child: Column(
                                  children: <Widget>[
                                    Text("20"),
                                    Text("Sprints")
                                  ],
                                ),),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                            image: NetworkImage('https://cdn3.vectorstock.com/i/thumb-large/48/37/web-developer-design-vector-5884837.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                        margin: EdgeInsets.only(left: 16.0),
                        ),
                    ],
                  ),

                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(title: Text("Información Personal"),),
                        Divider(),
                        ListTile(
                          title: Text("Email"),
                          subtitle: Text("xxx@farmatodo.com"),
                          leading: Icon(Icons.email),
                        ),
                        ListTile(
                          title: Text("Telefono"),
                          subtitle: Text("(302) 1234 5678"),
                          leading: Icon(Icons.phone),
                        ),
                        ListTile(
                          title: Text("Github"),
                          subtitle: Text("https://www.github.com/xxxxxx"),
                          leading: Icon(Icons.web),
                        ),
                        ListTile(
                          title: Text("Acerca de mi"),
                          subtitle: Text("Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nulla, illo repellendus quas beatae reprehenderit nemo, debitis explicabo officiis sit aut obcaecati iusto porro? Exercitationem illum consequuntur magnam eveniet delectus ab."),
                          leading: Icon(Icons.person),
                        ),
                        ListTile(
                          title: Text("Inicio Farmatod"),
                          subtitle: Text("15 Febrero 2017"),
                          leading: Icon(Icons.calendar_today),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
            )
          ],
        ),
      ),
    );
  }
}