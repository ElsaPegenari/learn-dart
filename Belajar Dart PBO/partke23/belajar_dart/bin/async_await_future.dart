void main(List<String> argumensts) async {
   var p = Person();

   print('job 1');
   print('job 2');
   await p.getDataAsync().then((value) {
      print('job 3' + p.name);
   });
   print('job 4');
}
class Person {
   String name= 'default name';

   void getData() {
      name = 'joko'; //Misalnya: ambil Data dari database (3 detik)
      print('get data [done]');

   }
   Future<void> getDataAsync() async {
      await Future.delayed(Duration(seconds: 3));
      name = 'joko'; //Misalnya: ambil Data dari database (3 detik)
      print('get data [done]');

   }
}