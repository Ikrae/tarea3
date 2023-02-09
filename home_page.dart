import 'package:flutter/material.dart';
import 'package:tarea3/info_lugar.dart';
import 'package:tarea3/item_actividad.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva tu hotel'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage
                    (image: NetworkImage
                    ("https://images.pexels.com/photos/1619317/pexels-photo-1619317.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                    fit:BoxFit.fill,
                    ),
                  
                  ),
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              // para poder poner column o listview en stack hay que encerrarlas en positioned y anclarla a todos lados
              Positioned(
                top: 64,
                bottom: 0,
                left: 0,
                right: 0,
                child: ListView(
                  children: [
                    InfoLugar(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Details"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.grey[200],
                          ),
                        ),
                        Text("Walkthrough Flight Detail"),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (BuildContext context, int index) {
                          return ItemActividad();
                        },
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                          ScaffoldMessenger.of(context)
                          ..hideCurrentSnackBar()
                          ..showSnackBar(
                            const SnackBar(
                              content: Text("Reservación en progreso"),
                            ),
                          );
                      },
                      child: Text("Start booking", style: TextStyle(color: Colors.grey[500]),),
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
