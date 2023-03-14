import 'package:flutter/material.dart';
import 'details_img.dart';

List<ImageDetails> _images = [
  ImageDetails(
      iPath: 'images/IMG1.jpg',
      iTitle: 'Foto Pertama',
      iDec:
          'Jauh-jauh dari Pekalongan ke Tanggerang untuk ketemu orang yang di sayangi walau hanya sebentar rasanya bahagia sekali'),
  ImageDetails(
    iPath: 'images/IMG2.jpg',
    iTitle: 'Pertama Bukber',
    iDec:
        'Ga sabar nunggu adek pulang dari Tanggerang, setelah terima kabar adek pulang langsung sorenya langsung main kerumah dan terus ngabuburit sambil nunggu magrib trus buka puasa bareng deh',
  ),
  ImageDetails(
    iPath: 'images/IMG3.jpg',
    iTitle: 'Ngapel ke Rumah Ayank',
    iDec:
        'Seneng banget bisa main kerumah adek, kenalan sama bapak ibunya adek, dan ternyata bapak ibunya ramah sama baik banget sama mas',
  ),
  ImageDetails(
    iPath: 'images/IMG4.jpg',
    iTitle: 'Jalan Bareng di Jakarta',
    iDec:
        'Karena kangenya udah menumpuk jadi putusin pergi ke Jakarta agar bisa ketemu adek dan jalan bareng lihat-lihat jakarta',
  ),
  ImageDetails(
      iPath: 'images/IMG5.jpg',
      iTitle: 'Kondangan Bareng',
      iDec:
          'Pergi ke acara perniahannya saudaranya adek, kondangan pertama diawal kita baru jadian, ada aja momen lucunya dimana lagi foto bareng ternyata ada bapak-bapak dibelakang kita'),
  ImageDetails(
      iPath: 'images/IMG6.jpg',
      iTitle: 'Kondangan bareng lagi ',
      iDec:
          'kalo ini ada rasa sedihnya karna adek habis kecelakan, tapi seneng karna bisa gandengan terus agar bisa mapah adek jalan'),
  ImageDetails(
      iPath: 'images/IMG7.jpg',
      iTitle: 'Nonton Pertama',
      iDec:
          'untuk pertama kalinya nonton bareng sama ayank, pas mau masuk mallnya dikira bocah sama securitynya padahal sudah 20++ semua lucu banget kaya bocah lagi belajar pacaran'),
  ImageDetails(
      iPath: 'images/IMG8.jpg',
      iTitle: 'Tahun baruan bareng',
      iDec:
          'Jalan-jalan bareng ayang ke bundaran HI lihat kembang api yang banyak sambil menunggu momen orang pertama yang ku gandeng di tahun 2023'),
];

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 40),
            Text(
              "Our Memories",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
              textAlign: TextAlign.center,
              selectionColor: Colors.black,
            ),
            SizedBox(height: 40),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return RawMaterialButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsImg(
                              iPath: _images[index].iPath,
                              iTitle: _images[index].iTitle,
                              iDet: _images[index].iDec,
                            ),
                          ),
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(_images[index].iPath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: _images.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
    // TODO: implement build
  }
}

class ImageDetails {
  late final String iPath;
  late final String iTitle;
  late final String iDec;
  ImageDetails({required this.iPath, required this.iTitle, required this.iDec});
}
