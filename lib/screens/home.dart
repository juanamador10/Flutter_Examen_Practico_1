import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Color verdeClaro = const Color.fromARGB(255 ,227, 244, 236 );
    Color naranja = const Color.fromARGB(255,255, 193, 7);
    Color verdeOscuro = const Color.fromARGB(255, 45, 99, 84 );
    Color elevationColor = const Color.fromARGB(255, 211, 216, 214);
    
    String typography = 'Ebrima';
    TextStyle letra20BoldBlack = TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: typography);
    TextStyle letra16BoldBlack = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 85, 83, 83), fontFamily: typography);
    TextStyle letra16BoldGrey = TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 158, 158, 158), fontFamily: typography);
    

    return  Scaffold(
      appBar: AppBar(
        elevation: 20,
        bottomOpacity: 2.0,
        backgroundColor: Colors.white,
        title: Text('Develop\'s Pizzas', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontFamily: typography), ),
        centerTitle: true,
        actions: [
          Ink(
          decoration: const ShapeDecoration(
            color: Color.fromARGB(255, 161, 240, 216),
            shape: CircleBorder(),
          ),
           child:IconButton(icon: 
            const Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
              size: 25,
            ), 
            onPressed: () {  },)
          ),
            
          const Padding(padding: EdgeInsets.only(right: 10)),],
          
      ),
      body:  SingleChildScrollView(
        child:  Container(
          margin: const EdgeInsets.all(30),
          child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 5),
                  //color: const Color.fromARGB(231, 241, 236, 1),
                  decoration:BoxDecoration(
                    color: verdeClaro,
                    borderRadius: BorderRadius.circular(10.0), 
                    boxShadow: [
                      BoxShadow(
                          color: elevationColor,
                          blurRadius: 2.0,
                          spreadRadius: 0.5,
                          offset: const Offset(0.5, 2.0), // shadow direction: bottom right
                      )
                    ],     // Radius of the border
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 35),
                          child: Column(
                            children: [
                              Text("Pepperoni Pizza", style: letra20BoldBlack,),
                              Text("Hot pizza with pepper", style: letra16BoldGrey,)
                            ],
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          height: 200,
                          width: 200,
                          margin: const EdgeInsets.only(bottom: 35),
                          child: const Image(
                            image: AssetImage(
                              "lib/assets/images/Pizza.png"
                            ),
                          )
                        ),
                      ),
                      Center(
                        child: Container(
                          //margin: const EdgeInsets.only(bottom: 45),
                          child: Column(
                            children: [
                              Text("Made by", style: letra16BoldGrey,),
                              Text("Juan Fernando Amador Miranda", style: letra16BoldGrey,)
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Sizes", 
                        style: letra16BoldBlack, 
                      )
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CuadroBotonTexto(texto: "S"),
                          CuadroBotonTexto(texto: "M", colorBorde: naranja, colorBoton: naranja,),
                          CuadroBotonTexto(texto: "X"),
                          CuadroBotonTexto(texto: "XL"),
                        ],
                      ),
                    ),


                    const SizedBox(height: 10,),
                    Container(
                      width: double.infinity,
                      child: Text(
                        "Ingredients", 
                        style: letra16BoldBlack, 
                      )
                    ),
                    const SizedBox(height: 10,),
                    SizedBox(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CuadroBotonImagen(texto: "Tomate.png"),
                          CuadroBotonImagen(texto: "Aguacate.png"),
                          CuadroBotonImagen(texto: "ChileRojo.png", bordeColor: naranja, colorBoton: naranja,),
                          CuadroBotonImagen(texto:"Cebolla.png")
                        ],
                      ),
                    ),
                    const SizedBox(height: 35,),
                    SizedBox(
                      width: 100,
                      height: 40,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: verdeClaro,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                          elevation: 6.0,
                          
                        ),
                        onPressed: () {}, 
                        
                        child: Text(
                          "Buy Now", 
                          style: TextStyle(
                            color: verdeOscuro, 
                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ),
                  ],
                )
              ]
            ),
        ),
        ),
      
    );
  }

}

//Clase para añadir los tamaños de pizza
class CuadroBotonTexto extends StatelessWidget {
  final Color colorBorde;
  final Color colorBoton;
  final String texto;
  const CuadroBotonTexto({super.key, required this.texto, this.colorBorde = Colors.black, this.colorBoton = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration:BoxDecoration(
        color: colorBoton,                             // Color of the container
        borderRadius: BorderRadius.circular(10.0),      // Radius of the border
        border: Border.all(
          width: 2.0,
          color: colorBorde,                        // Color of the border
        )
      ),
      child: Center(child: Text(texto, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)),
    );
  }
}

//Clase para añadir las imagenes de los ingredientes en la pizza
class CuadroBotonImagen extends StatelessWidget {
  final Color bordeColor;
  final Color colorBoton;
  final String texto;
  const CuadroBotonImagen({super.key, required this.texto, this.bordeColor = Colors.black, this.colorBoton = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration:BoxDecoration(
        color: colorBoton,                             // Color of the container
        borderRadius: BorderRadius.circular(10.0),      // Radius of the border
        border: Border.all(
          width: 2.0,
          color: bordeColor,                        // Color of the border
        )
      ),
      child: Center(
        child: SizedBox(
          height: 20,
          child: Image(image: AssetImage("lib/assets/images/$texto")),
        )
      ),
    );
  }
}