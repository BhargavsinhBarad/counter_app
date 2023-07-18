import 'package:counter_app/Providers/counter_provider.dart';
import 'package:counter_app/Providers/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Screens/count_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ListenableProvider<counterprovide>(create: (ctx) => counterprovide()),
        ListenableProvider<themeprovider>(create: (ctx) => themeprovider()),
      ],
      builder: (ctx, _) => MaterialApp(
        theme: ThemeData.light(),
        darkTheme: ThemeData.dark(),
        themeMode:
            (Provider.of<themeprovider>(ctx, listen: true).theme.isdark ==
                    false)
                ? ThemeMode.light
                : ThemeMode.dark,
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (ctx) => count(),
        },
      ),
    ),
  );
}
