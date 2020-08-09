part of 'main.dart';

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
