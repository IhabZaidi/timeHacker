import 'package:stacked/stacked_annotations.dart';
import 'package:timehacker/representation/screens/home/home_screen_view.dart';
import 'package:timehacker/service/home_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeScreenView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: HomeServices),
  ],
)
class App {}
