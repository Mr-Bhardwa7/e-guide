import 'package:easy_dsa/app/tabs/courses_widget.dart';
import 'package:easy_dsa/app/tabs/home_widget.dart';
import 'package:easy_dsa/app/tabs/profile_widget.dart';
import 'package:easy_dsa/app/tabs/quiz_widget.dart';
import 'package:easy_dsa/store/cubit/bottomNavigation/bottom_navigation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:easy_dsa/components/main_layout.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      child: BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
        builder: (context, state) {
          switch (state.currentIndex) {
            case 0:
              return const Home();
            case 1:
              return const Courses();
            case 2:
              return const Quiz();
            case 3:
              return const Profile();
            default:
              return const Home();
          }
        },
      ),
    );
  }
}
