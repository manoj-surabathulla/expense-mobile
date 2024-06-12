import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

var kColorSchema =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 245, 70, 57));

var kDarkColorSchema = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
  //     .then((fn) { // to stop the rotation of the phone screen
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    darkTheme: ThemeData.dark().copyWith(
      colorScheme: kDarkColorSchema,
      cardTheme: const CardTheme().copyWith(
        color: kDarkColorSchema.secondaryContainer,
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kDarkColorSchema.primaryContainer,
          foregroundColor: kDarkColorSchema.onPrimaryContainer,
        ),
      ),
    ),
    theme: ThemeData().copyWith(
      colorScheme: kColorSchema,
      appBarTheme: AppBarTheme(
        backgroundColor: kColorSchema.onPrimaryContainer,
        foregroundColor: kColorSchema.primaryContainer,
      ),
      cardTheme: const CardTheme().copyWith(
        color: kColorSchema.secondaryContainer,
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: kColorSchema.primaryContainer,
        ),
      ),
      textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontSize: 16,
              color: kColorSchema.onSecondaryContainer,
              fontWeight: FontWeight.normal,
            ),
          ),
    ),
    themeMode: ThemeMode.light,
    home: const Expenses(),
  ));
  // });
}
