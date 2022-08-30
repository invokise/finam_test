import 'package:finam_test/assets/app_colors.dart';
import 'package:finam_test/data/data_sources/api_service.dart';
import 'package:finam_test/generated/l10n.dart';
import 'package:finam_test/logic/bloc/post_bloc.dart';
import 'package:finam_test/presentation/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(MyApp(apiService: APIService()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key, required this.apiService}) : super(key: key);
  final APIService apiService;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      theme: ThemeData(
        primarySwatch: AppColors.purple,
      ),
      home: BlocProvider<PostBloc>(
        create: (context) =>
            PostBloc(apiService: apiService)..add(PostLoadedEvent()),
        child: const MainScreen(),
      ),
    );
  }
}
