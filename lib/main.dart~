import 'package:flutter/material.dart';
import 'dart:math';

void main()
{
  Mozg mozg = new Mozg();
  runApp(MyApp(mozg));
}

class MyApp extends StatelessWidget
{
  Mozg mozg;
  MyApp(this.mozg){}
  Widget build(BuildContext cont)
  {
    return MaterialApp
    (
      /*body:
        Container
        (
          child:
          BodyWid()
        ) */
          initialRoute: '/',
          routes:
          {
            '/': (BuildContext c) => BodyWid(mozg),
        //    '/sec': (BuildContext c) => SecondScreen(),
          }
      
    ); 
  }
}


class BodyWid extends StatefulWidget
{
  Mozg mozg;
  BodyWid(this.mozg){}
  createState() => BodyWidState(mozg);
}

class BodyWidState extends State
{
  Mozg mozg;
  BodyWidState(this.mozg){}
  Widget build(BuildContext cont)
  {
    
    return Scaffold
      (
        appBar: AppBar
        (
          title: const Text('Новости')
        ),
        body:
        ListView.builder(itemBuilder: (cont, i)
          {
        
            if(i<10) return ListTile(title: MyWidget(mozg, i, mozg.getTitle(i),mozg.getText(i), img: mozg.getImg(i)));
      }
    )
  );
  }
}



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
      height: 100,
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
            padding: EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
            //              padding: EdgeInsets.symmetric(horisontal: 10),
            width: 90.0,
            child:
            NewsBoxFavourit(10000, false),
          )
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
      height: 100,
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
          Container
          (
            padding: EdgeInsets.only(top: 5.0, left: 2.0, right: 2.0),
            //              padding: EdgeInsets.symmetric(horisontal: 10),
            width: 90.0,
            child:
            NewsBoxFavourit(10000, false),
          )
        ]
      )
    )
  );
  }
}

    class NewsBoxFavourit extends StatefulWidget {
      final int _num;
      final bool _like;

      NewsBoxFavourit(this._num, this._like);

      @override
      createState() => new NewsBoxFavouritState(_num, _like);
    }

    class NewsBoxFavouritState extends State<NewsBoxFavourit> {
      int num;
      bool like;

      NewsBoxFavouritState(this.num, this.like);

      void pressButton() {
        setState(() {
            like = !like;

            if(like) num++;
            else num--;
        });
      }

      @override
      Widget build(BuildContext context) {
        return new Column(children: [
            Container(
              child:
              Text('В избранном $num', textAlign: TextAlign.center, // softWrap: true,
                style: new TextStyle(fontSize: 10.0)
              ),
              //    padding: EdgeInsets.only(bottom: 0.0)
            ),
            new IconButton(
              icon: new Icon(like ? Icons.star : Icons.star_border, size: 30.0, color: Colors.blue[500]),
              onPressed: pressButton
            )
        ]);
      }
    }
    
    class SecondScreen extends StatelessWidget {
      int _id;
      Mozg mozg;
      SecondScreen (this._id, this.mozg){}
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text('Второе окно')),
          body: Container(
            child:
            Column
            (
              children:
              [
                Text(mozg.getTitle(_id)),
                Text(mozg.getText(_id)),
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
              ]
              
          )
        )       
    );
  }
}


class Mozg
{
  List<String> arrayTitle = [];
  List<String> arrayText = [];
  List<String> arrayImg = [];
  String  str;
  Mozg ()
  {
    Random random = new Random();
    for (int a = 0; a < 100; a++)
    {
      arrayTitle.add('Название $a');
    }
    for (int a = 0; a < 100; a++)
    {
      str = '';
      for (int b = 0; b<1000; b++)
      str+= random.nextInt(9).toString()+' ';
      arrayText.add('Текст $str');
    }
    arrayImg.addAll([
        '',
        'https://im0-tub-ru.yandex.net/i?id=98172eacd8678719f03c973aa438da13&n=13',
        'https://lastfm.freetls.fastly.net/i/u/ar0/3ec8844068ca052a493c2ca11806597d.jpg',
        'https://www.coolaccidents.com/sites/g/files/g2000006916/files/styles/og_original_no_style/public/58006bbc29abd.jpg?itok=7CsPNeCR',
        'https://flutter.su/favicon.png',
        'https://avatars.yandex.net/get-music-content/33216/66f656c7.a.2043390-1/m1000x1000?webp=false',
        '',
        null,
        'https://www.musicportal.su/sites/default/files/album/album-new-108217.jpg',
        'https://i.pinimg.com/originals/bb/41/3f/bb413fec71c167588ff6861c4a2e3019.jpg',
        'https://illustrators.ru/uploads/illustration/image/1218172/main_%D0%BE%D0%B1%D0%BB%D0%BE%D0%B6%D0%BA%D0%B02.jpg',
        'https://st.weblancer.net/download/3389115_935xp.png',
        null,
        ''
     //   'https://lastfm.freetls.fastly.net/i/u/ar0/1ff332ea14f546f4c6578abb62bbd47a.jpg'
    ]);
  }
  
    String getTitle(int a)
    {
      return arrayTitle[a];
    }

     String getText(int a)
    {
      return arrayText[a];
    }
 
     String getImg(int a)
    {
      return arrayImg[a];
    }

  }
