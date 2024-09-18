import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:easy_dsa/app/app_widget.dart';

//STORES
import 'package:easy_dsa/store/bloc/theme/theme_bloc.dart';
import 'package:easy_dsa/store/cubit/localization/localization_cubit.dart';
import 'package:easy_dsa/store/cubit/bottomNavigation/bottom_navigation_cubit.dart';

// import 'package:flutter/services.dart';

// Future<void> statusDynamic(BuildContext context) async {
//   SystemUiOverlayStyle style = SystemUiOverlayStyle.light.copyWith(
//     statusBarIconBrightness: Brightness.light,
//   );
//   if (context.read<ThemeBloc>().state is DarkThemeState) {
//     style = SystemUiOverlayStyle.dark.copyWith(
//       statusBarIconBrightness: Brightness.dark,
//     );
//   } else {
//     style = SystemUiOverlayStyle.light.copyWith(
//       statusBarIconBrightness: Brightness.light,
//     );
//   }
//   SystemChrome.setSystemUIOverlayStyle(style);
// }

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent,
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => ThemeBloc(),
        ),
        BlocProvider(
          create: (context) => LocalizationCubit(),
        ),
        BlocProvider(
          create: (context) => BottomNavigationCubit(),
        ),
      ],
      child: const AppWidget(),
    );
  }
}
