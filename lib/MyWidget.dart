part of 'main.dart';

class MyWidget extends StatelessWidget
{
  final String _title;
  int _id;
  final String _text;
  String _img;
  Mozg mozg;
  
  MyWidget(this.mozg, this._id, this._title, this._text, {String img})
  {_img = img;}
  
  Widget build(BuildContext cont)
  {
    if(_img != null && _img != '')
    return GestureDetector
    (
      onTap: ()
      {
        Navigator.push(cont, MaterialPageRoute(
            builder: (context) => SecondScreen(_id, mozg)));
      },
      child:
      Container
      (
        height: 120,
        color: Colors.black12,
        child:
        Row
        (
          children:
          [
            
                Image.network(_img, width: 100.0, height: 100.0, //fit: BoxFit.cover
         
    ),
            
            Expanded
            (
              child:
              Container
              (
                padding: EdgeInsets.all(5.0),
                child:
                Column(
                  children:
                  [
                    Text(_title, style: new TextStyle(fontSize: 20.0),
                      //  overflow: TextOverflow.ellipsis,
                      softWrap: true),
                    Expanded
                    (
                      child:
                      Text(_text, softWrap: true, textAlign: TextAlign.justify, style: TextStyle(fontSize: 13.0)),
                    )
                  ]
                )
              )
            ),
            Container
            (
               child:
            Column
            (
              children:
              [
                Container
                (
              padding: EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
              //              padding: EdgeInsets.symmetric(horisontal: 10),
              width: 90.0,
              child:
              NewsBoxFavourit(10000, false),
            ),
            Container
            (
              width: 90.0,
              height: 43.0,
              padding: EdgeInsets.only(right: 4.0),
              child:
            Align
             (
              
                  alignment: Alignment.bottomRight, //НЕ РАБОТАЕТ!!!!!!!!!!
                  child:
                   
                  Text(mozg.getTop(_id), style: TextStyle(color: Colors.grey)
              )))
                ]
            ))
          ]
        )
      )
    );
    
    else

    return GestureDetector
    (
      onTap: ()
      {
        Navigator.push(cont, MaterialPageRoute(
            builder: (context) => SecondScreen(_id, mozg)));
      },
      child:
      Container
      (
        height: 120,
        color: Colors.black12,
        child:
        Row
        (
          children:
          [
            Expanded
            (
              child:
              Container
              (
                padding: EdgeInsets.all(5.0),
                child:
                Column(
                  children:
                  [
                    Text(_title, style: new TextStyle(fontSize: 20.0),
                      //  overflow: TextOverflow.ellipsis,
                      softWrap: true),
                    Expanded
                    (
                      child:
                      Text(_text, softWrap: true, textAlign: TextAlign.justify, style: TextStyle(fontSize: 13.0)),
                    )
                  ]
                )
              )
            ),
            Column
            (
              children:
              [
            Container
            (
              padding: EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
              //              padding: EdgeInsets.symmetric(horisontal: 10),
              width: 90.0,
              child:
              NewsBoxFavourit(10000, false),
            ),
            Container
            (
              width: 90.0,
              height: 43.0,
              padding: EdgeInsets.only(right: 4.0),
              child:
            Align
             (
              
                  alignment: Alignment.bottomRight, //НЕ РАБОТАЕТ!!!!!!!!!!
                  child:
                   
                  Text(mozg.getTop(_id), style: TextStyle(color: Colors.grey)
              )))
            ]
          )
          ]
        )
      )
    );
  }
}
