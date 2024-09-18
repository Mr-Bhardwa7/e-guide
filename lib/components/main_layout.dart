import 'package:easy_dsa/store/bloc/theme/theme_bloc.dart';
import 'package:easy_dsa/store/cubit/bottomNavigation/bottom_navigation_cubit.dart';
import 'package:easy_dsa/store/cubit/localization/localization_cubit.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainLayout extends StatelessWidget {
  final Widget child;
  const MainLayout({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: child,
      bottomNavigationBar: _bottomNavBar(context),
    );
  }

  BlocBuilder _bottomNavBar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<IconData> listOfIcons = [
      Icons.home_rounded,
      Icons.book,
      Icons.quiz,
      Icons.person_rounded,
    ];

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return BlocBuilder<BottomNavigationCubit, BottomNavigationState>(
          builder: (context, navState) {
            return Container(
              margin: const EdgeInsets.all(20),
              height: size.width * .155,
              decoration: BoxDecoration(
                color: state is LightThemeState ? Colors.white : Colors.black,
                boxShadow: [
                  BoxShadow(
                    color: state is LightThemeState
                        ? Colors.black.withOpacity(.15)
                        : Colors.white.withOpacity(.15),
                    blurRadius: 30,
                    offset: const Offset(0, 10),
                  ),
                ],
                borderRadius: BorderRadius.circular(50),
              ),
              child: ListView.builder(
                itemCount: listOfIcons.length,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: size.width * .024),
                itemBuilder: (context, index) => InkWell(
                  onTap: () {
                    context
                        .read<BottomNavigationCubit>()
                        .setCurrentIndex(index);
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 1500),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: EdgeInsets.only(
                          bottom: index == navState.currentIndex
                              ? 0
                              : size.width * .029,
                          right: size.width * .0422,
                          left: size.width * .0422,
                        ),
                        width: size.width * .128,
                        height: index == navState.currentIndex
                            ? size.width * .014
                            : 0,
                        decoration: const BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.vertical(
                            bottom: Radius.circular(10),
                          ),
                        ),
                      ),
                      Icon(
                        listOfIcons[index],
                        size: size.width * .076,
                        color: index == navState.currentIndex
                            ? Colors.blueAccent
                            : state is LightThemeState
                                ? Colors.black38
                                : Colors.white,
                      ),
                      SizedBox(height: size.width * .03),
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  AppBar _appHeader(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          icon: const Icon(Icons.brightness_6),
          onPressed: () {
            context.read<ThemeBloc>().add(ToggleThemeEvent());
          },
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: IconButton(
            icon: const Icon(Icons.g_translate),
            onPressed: () {
              _showLanguageActionSheet(context);
            },
          ),
        ),
      ],
    );
  }

  void _changeAppLanguage(BuildContext context, String language) {
    if (language != 'cancel') {
      context.read<LocalizationCubit>().setLocale(Locale(language));
    }
    Navigator.pop(context, language);
  }

  void _showLanguageActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) =>
          BlocBuilder<LocalizationCubit, LocalizationState>(
        builder: (context, state) {
          return CupertinoActionSheet(
            title: Text(AppLocalizations.of(context)!.selectLanguage),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text(AppLocalizations.of(context)!.english),
                onPressed: () {
                  _changeAppLanguage(context, 'en');
                },
              ),
              CupertinoActionSheetAction(
                child: Text(AppLocalizations.of(context)!.arabic),
                onPressed: () {
                  _changeAppLanguage(context, 'ar');
                },
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text(AppLocalizations.of(context)!.cancel),
              onPressed: () {
                _changeAppLanguage(context, 'cancel');
              },
            ),
          );
        },
      ),
    );
  }
}
