import 'package:flutter/material.dart';

class ItemActividad extends StatelessWidget {
  ItemActividad({super.key});
  List a =[
    "https://www.nationalgeographic.com.es/medio/2018/02/27/playa-de-isuntza-lekeitio__1280x720.jpg",
    "https://mott.pe/noticias/wp-content/uploads/2019/03/los-50-paisajes-maravillosos-del-mundo-para-tomar-fotos.jpg",
    "https://www.sierralagoresort.com/blog/wp-content/uploads/2022/06/El-Mejor-Lugar-Para-Tomar-Fotos-de-Paisajes-Naturales.jpg",
    "https://images.unsplash.com/photo-1500964757637-c85e8a162699?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFpc2FqZXMlMjBoZXJtb3Nvc3xlbnwwfHwwfHw%3D&w=1000&q=80",
    "https://res.cloudinary.com/worldpackers/image/upload/c_fill,f_auto,q_auto,w_1024/v1/guides/article_cover/gfuvmfczfyosqs1k4ema"
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1xQjuHhpRIS8VlzTQZWsTD5rlQGoPQPj2WA&usqp=CAU"
    "https://www.hofmann.es/blog/wp-content/uploads/2021/09/HF_3_Paisajes_WEB-23-1024x768.jpg",
    "https://www.nippon.com/es/ncommon/contents/japan-data/1331263/1331263.jpg"
    "https://thumbs.dreamstime.com/b/paisajes-de-yosemite-46208063.jpg",
    "https://static3.leonoticias.com/www/multimedia/202107/06/media/MM-senderismo-asturias/oddle-1-ksRC--1350x900@El%20Comercio.jpg"
    ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Column(
        
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            
            height: 120,
            width: 120,
            color: Colors.purple,
          ),
          Text("Day ])", style: TextStyle(fontSize: 11)),
          Text("Bali mountains"),
        ],
      ),
    );
  }
}
