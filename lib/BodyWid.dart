part of 'main.dart';

class BodyWid extends StatefulWidget
{
  Mozg mozg;
  BodyWid(this.mozg){}
  createState() => BodyWidState(mozg);
}

class BodyWidState extends State
{
  Mozg mozg;
  BodyWidState(this.mozg)
  {
  }
  Widget build(BuildContext cont)
  {

   if (mozg.getF()) 
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('Новости'),
        actions:
        [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed:()
            {
              Navigator.push(context, PageRouteBuilder(
              opaque: false,
              pageBuilder: (BuildContext context, _, __) => Popper(mozg)));
            }
          )
        ]
      ),
      body:
      ListView.builder(itemBuilder: (cont, i)
        {
          
          if(i<10) return ListTile(title: MyWidget(mozg, i, mozg.getTitle(i),mozg.getText(i), img: mozg.getImg(i)));
        }
      )
    );
    else
    return null;                                //TODO
  
  }
}
