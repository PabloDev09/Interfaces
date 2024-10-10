enum FromWho { country, me }

class Message {
  String text;     // Texto del mensaje
  String imageUrl; // URL de la imagen (puede ser vacío)
  FromWho fromWho; // Quién envió el mensaje

  // Constructor que requiere texto, de quién es y permite una URL de imagen opcional
  Message({this.imageUrl = "", required this.text, required this.fromWho});
}
