import 'package:medco_ftd/appTheme.dart';

class BadgesPage extends StatefulWidget {
  const BadgesPage({Key key}) : super(key: key);

  @override
  _BadgesPageState createState() => _BadgesPageState();
}

class _BadgesPageState extends State<BadgesPage> {

  final List<Map> _badges = [
    {
      'icon': 'assets/badges/badge1.png',
      'title': '´Respaldador de Código',
      'description': "Lleva a cabo la organización de las tareas..."
    },
    {
      'icon': 'assets/badges/badge2.png',
      'title': 'Buen Planeador',
      'description': "Lleva a cabo la organización de las tareas..."
    },
    {
      'icon': 'assets/badges/badge3.png',
      'title': 'Buen Trabajo',
      'description': "Lleva a cabo la organización de las tareas..."
    },{
      'icon': 'assets/badges/data.png',
      'title': 'Codeador Nivel 1',
      'description': "Lleva a cabo la organización de las tareas..."
    }
    ,{
      'icon': 'assets/badges/biomass.png',
      'title': 'Ayuda al Medio Ambiente',
      'description': "Lleva a cabo la organización de las tareas..."
    },
    {
      'icon': 'assets/badges/discussion.png',
      'title': 'Mediador Profesional',
      'description': "Lleva a cabo la organización de las tareas..."
    },{
      'icon': 'assets/badges/drunk.png',
      'title': 'Borrachit@ Feliz',
      'description': "Lleva a cabo la organización de las tareas..."
    },
    {
      'icon': 'assets/badges/waking-up.png',
      'title': 'Madrugador',
      'description': "Lleva a cabo la organización de las tareas..."
    }
  ];


  @override
  Widget build(BuildContext context) {

    
    return Column(
      children: <Widget>[

        
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Text(_badges.length.toString() + " Insignias", style: TextStyle(color: AppTheme.white, fontWeight: FontWeight.bold, fontSize: 20.0, fontFamily: AppTheme.fontName)),          
        ),
        Expanded(
          flex: 1,
          child: Container(   
            margin: EdgeInsets.only(top: 20.0),
            //padding: EdgeInsets.only(top: 80.0),
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
            child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                  child: Text("Select a category to start the quiz", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0
                  ),),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(16.0),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0
                  ),
                  delegate: SliverChildBuilderDelegate(
                    _buildCategoryItem,
                    childCount: _badges.length,

                  )

                ),
              ),
            ],
            ),  
          ),
        )   
      ],
    );
  }

  Widget _buildCategoryItem(BuildContext context, int index) {
    final badge = _badges[index];
    return Column(
     
      children: <Widget>[
        Container(
          child: Image.asset(badge['icon'], width: 90.0,),
        ),
        Text(
          badge['title'],
          textAlign: TextAlign.center,
          maxLines: 3,),
      ],
    );
    
    
  }
}