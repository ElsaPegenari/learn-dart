import 'package:belajar_dart/int_secure_box.dart';
import 'package:belajar_dart/datetime_secure_box.dart';

void main(List<String> arguments) {
   var box = DateTimeSecureBox(DateTime.now(), '123');

   print(box.getData('123').toString());
}
