part of 'main.dart';



class SecondScreen extends StatelessWidget {
  int _id;
  Mozg mozg;
  SecondScreen (this._id, this.mozg){}
  @override
  Widget build(BuildContext context) {
    if(mozg.getImg(_id)!=null && mozg.getImg(_id)!="")
    return Scaffold(
      appBar: AppBar(title: Text('Второе окно')),
      body: 
      SingleChildScrollView(
        child:
        Container(
          child:
          Column
          (
            children:
            [
              Container
              (
                color: Color(0x30B74093),
                padding: EdgeInsets.all(5.0),
                child:
                Align
                (
                  alignment: Alignment(-1.0,-1.0),
                  child:
                  Text(mozg.getTitle(_id),  textAlign: TextAlign.left,  softWrap: true,
                    style: new TextStyle(fontSize: 30.0))
                )
              ),
              Container
              (
                height: 497.0,
                child:
                SingleChildScrollView(
                  //  scrollDirection: Axis.vertical,
                  child:
                  Text(mozg.getText(_id),//  softWrap: true,
                  )
                )
              )
              ,
              Image.network(mozg.getImg(_id), width: 300.0, height: 300.0, fit: BoxFit.cover
              ),
              Container
              (
                
                padding: EdgeInsets.only(right: 20.0, bottom: 10.0, top: 30.0),
                child:
                Align
                (
                  alignment: Alignment(1.0,-1.0),
                  child:
                  Container
                  (
                    color: Colors.black12,
                    width: 50.0,
                    height: 30.0,
                    child:
                    Center(
                      child:
                      GestureDetector
                      (
                        onTap: ()
                        {
                          Navigator.pop(context);
                        },
                        child:
                        Text('Назад')
                      )
                    )
                  )
                )
              )
            ]
            
          )
        )       
    ));
    else
    return Scaffold(
      appBar: AppBar(title: Text('Второе окно')),
      body: Container(
        child:
        Column
        (
          children:
          [
            Container
            (
              color: Color(0x30B74093),
              padding: EdgeInsets.all(5.0),
              child:
              Align
              (
                alignment: Alignment(-1.0,-1.0),
                child:
                Text(mozg.getTitle(_id),  textAlign: TextAlign.left,  softWrap: true,
                  style: new TextStyle(fontSize: 30.0))
              )
            ),
            Container
            (
              height: 497.0,
              child:
              SingleChildScrollView(
                child:
                Text(mozg.getText(_id),//  softWrap: true,
                )
              )
            )
            ,
            
            Container(height:50.0),
            Container
            (
              
              padding: EdgeInsets.only(right: 20.0),
              child:
              Align
              (
                alignment: Alignment(1.0,-1.0),
                child:
                Container
                (
                  color: Colors.black12,
                  width: 50.0,
                  height: 30.0,
                  child:
                  Center(
                    child:
                    GestureDetector
                    (
                      onTap: ()
                      {
                        Navigator.pop(context);
                      },
                      child:
                      Text('Назад')
                    )
                  )
                )
              )
            )
          ]
          
        )
      )       
    );
  }
}
