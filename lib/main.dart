import 'package:android/controllers/home_controller.dart';
import 'package:android/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ImportApp());
}

class ImportApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeController(),
        ),
      ],
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
