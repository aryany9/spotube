import 'package:flutter/material.dart';

ThemeData theme(Color seed, Brightness brightness) {
  final scheme = ColorScheme.fromSeed(
    seedColor: seed,
    shadow: Colors.black12,
    brightness: brightness,
  );
  return ThemeData(
    useMaterial3: true,
    colorScheme: scheme,
    listTileTheme: ListTileThemeData(
      horizontalTitleGap: 0,
      iconColor: scheme.onSurface,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    iconTheme: IconThemeData(size: 16, color: scheme.onSurface),
    navigationBarTheme: const NavigationBarThemeData(
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      height: 50,
      iconTheme: MaterialStatePropertyAll(
        IconThemeData(size: 18),
      ),
    ),
    tabBarTheme: TabBarTheme(
      indicatorSize: TabBarIndicatorSize.tab,
      labelStyle: const TextStyle(fontWeight: FontWeight.w600),
      labelColor: scheme.primary,
      dividerColor: Colors.transparent,
      indicator: BoxDecoration(
        color: scheme.secondaryContainer,
        borderRadius: BorderRadius.circular(15),
      ),
    ),
  );
}
