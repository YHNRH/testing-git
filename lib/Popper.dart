part of 'main.dart';

class Popper extends StatelessWidget
{
  Mozg mozg;
  bool someValue = false;
  Popper(this.mozg);
  build(BuildContext bc)
  {
    return AlertDialog(
      title: Text('Фильтр'),
      content: CokaBoka(mozg),
      actions:
      [
        FlatButton
        (
          child: Text('Готово'),
          onPressed: () {Navigator.pushNamed(bc, '/');}
        )
      ]
    );
  }
}


class CokaBoka extends StatefulWidget
{
  Mozg mozg;
  CokaBoka(this.mozg);
  createState() => CokaBokaState(mozg);
}

class CokaBokaState extends State
{
  bool rememberMe;
  Mozg mozg;
  CokaBokaState(this.mozg)
  {
    rememberMe = mozg.getF();
  }
  

  void _onRememberMeChanged(bool newValue) => setState(() {
    rememberMe = newValue;
    mozg.changeF();
    /*
    if (rememberMe) {
      // TODO: Here goes your functionality that remembers the user.
    } else {
      // TODO: Forget the user
    }*/
  });

  @override
  Widget build(BuildContext context) {
    return
    Row
    (
      children:
      [
        Text('Ща будем фильтровать'),
    Checkbox(
      value: rememberMe,
      onChanged: _onRememberMeChanged
)]);
  }
}
