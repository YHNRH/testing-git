part of 'main.dart';

class Mozg
{
  List<String> arrayTitle = [];
  List<String> arrayText = [];
  List<String> arrayImg = [];
  List<String> arrayTop = [];
  String  str;
  bool f = true;
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
      for (int b = 0; b<10000; b++)
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
     for (int a = 0; a < 100; a++)
  {
    int r = random.nextInt(3);
    print(r);
    switch (r)
    {
      case 0:
      arrayTop.add('Наука');
      break;
      case 1:
      arrayTop.add('Политика');
      break;
      case 2:
      arrayTop.add('Спорт');
      break;
    }
  }
 
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

  String getTop(int a)
  {
    return arrayTop[a];
  }

  bool getF()
  {
    print('You are good! $f');
    return f;
  }
  void changeF()
  {
    f = !f;
  }

  
}
