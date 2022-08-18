import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // leading: const Icon(
        //   Icons.logout,
        //   size: 25,
        // ),
        actions: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Row(
              children: const [
                Icon(Icons.logout),
                SizedBox(width: 3),
                Text("Cerrar sesión")
              ],
            ),
          ),
          const Spacer(),
          Container(
            margin: const EdgeInsets.only(right: 20),
            child: Row(
              children: const [
                Icon(Icons.edit),
                SizedBox(width: 5),
                Text("Editar")
              ],
            ),
          )
        ],
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Cerca a mí',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_checkout_outlined),
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Perfil',
          ),
        ],
        selectedItemColor: const Color(0xFF6C80FE),
        unselectedItemColor: Colors.grey,
        currentIndex: 3,
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    height: 100,
                    decoration: const BoxDecoration(color: Color(0xFF6C80FE)),
                  ),
                  const Expanded(child: SizedBox())
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: ClipOval(
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(color: Color(0xFF6C80FE)),
                  ),
                ),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 70),
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "avatar.png",
                      height: 100,
                    )),
                const Text(
                  "Nombre completo",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "Nicolas Rojas Niño",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
                const Spacer(),
                const Text(
                  "Correo Electrónico",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "nicolas @imagineapps.co",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
                const Spacer(),
                const Text(
                  "Celular",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const Text(
                  "3114797257",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.normal),
                ),
                const Spacer(),
                const Text("Terminos y condiciones"),
                const Spacer(),
                const Option(
                  text: "Lista de Pedidos",
                  image: "assets/img2.png",
                ),
                const Spacer(),
                const Option(
                  text: "Mis métodos de pago",
                  image: "assets/img1.png",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Option extends StatelessWidget {
  const Option({Key? key, required this.text, required this.image})
      : super(key: key);

  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color(0xFFCACFEC)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: const TextStyle(color: Color(0xFF6C80FE))),
          Image.asset(image)
        ],
      ),
    );
  }
}
