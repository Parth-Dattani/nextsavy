import 'package:get/get.dart';
import 'binding/binding.dart';
import 'screen/screen.dart';

final List<GetPage> appPage = [
  GetPage(
      name: SplashScreen.pageId,
      page: ()=> const SplashScreen(),
      binding: SplashBinding()
  ),
  GetPage(
      name: HomeScreen.pageId,
      page: ()=> const HomeScreen(),
      binding: HomeBinding()
  ),
  GetPage(
      name: FormScreen.pageId,
      page: ()=>  FormScreen(),
      binding: FormBinding()
  ),
  // GetPage(
  //     name: FormScreen.pageId,
  //     page: ()=>  FormScreen(),
  //     binding: FormBinding()
  // ),

];