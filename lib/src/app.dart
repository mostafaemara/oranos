import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:oranos/src/bloc/chat/chat_cubit.dart';
import 'package:oranos/src/bloc/home/home_cubit.dart';
import 'package:oranos/src/data/repository/expert_repository.dart';
import 'package:oranos/src/routes.dart';
import 'package:oranos/src/screens/chat/chat_screen.dart';
import 'package:oranos/src/screens/get_start/get_start_screen.dart';
import 'package:oranos/src/screens/home/home_screen.dart';
import 'package:oranos/src/screens/landing/landing_screen.dart';
import 'package:oranos/src/styles/app_themes.dart';

import 'data/repository/chat_repository.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ChatCubit(ChatRepository()),
          ),
          BlocProvider(
            create: (context) => HomeCubit(ExpertRepository()),
          ),
        ],
        child: MaterialApp(
          // Providing a restorationScopeId allows the Navigator built by the
          // MaterialApp to restore the navigation stack when a user leaves and
          // returns to the app after it has been killed while running in the
          // background.
          restorationScopeId: 'app',
          home: const LandingScreen(),
          // Provide the generated AppLocalizations to the MaterialApp. This
          // allows descendant Widgets to display the correct translations
          // depending on the user's locale.
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''), // English, no country code
          ],

          // Use AppLocalizations to configure the correct application title
          // depending on the user's locale.
          //
          // The appTitle is defined in .arb files found in the localization
          // directory.
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,

          // Define a light and dark color theme. Then, read the user's
          // preferred ThemeMode (light, dark, or system default) from the
          // SettingsController to display the correct theme.
          theme: AppTheme.lightTheme,

          routes: {
            AppRoutes.landing: (context) => const LandingScreen(),
            AppRoutes.getStart: (context) => const GetStartScreen(),
            AppRoutes.chat: (context) => const ChatScreen(),
            AppRoutes.home: (context) => const HomeScreen()
          },

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
        ));
  }
}
