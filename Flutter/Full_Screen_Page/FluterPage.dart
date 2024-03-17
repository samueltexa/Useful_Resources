// import your packages from here
// This is the entry point of the application
void main() {
  // It starts the Flutter application by running an instance of MyApp
  runApp(const MyApp());
}

// MyApp is a Flutter widget representing the entire application
class MyApp extends StatelessWidget {
  // Constructor for MyApp widget
  const MyApp({super.key});

  // Build method for MyApp widget
  @override
  Widget build(BuildContext context) {
    // Returns a MaterialApp widget, which sets up the material design style for the app
    return const MaterialApp(
      // Sets the home page of the app to an instance of MyHomePage
      home: MyHomePage(),
      // Turns off the debug banner in the app
      debugShowCheckedModeBanner: false,
    );
  }
}

// MyHomePage is a Flutter widget representing the home page of the application
class MyHomePage extends StatelessWidget {
  // Constructor for MyHomePage widget
  const MyHomePage({super.key});

  // Build method for MyHomePage widget
  @override
  Widget build(BuildContext context) {
    // Adding the system UI overlay settings
    // These settings customize the appearance of the status bar and navigation bar
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
      systemNavigationBarContrastEnforced: false,
      systemStatusBarContrastEnforced: false,
    );

    // Setting the system UI overlay style
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

    // Setting the system UI mode to manual, immersiveSticky, and edgeToEdge
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky,
        overlays: [SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

    // Returns a Scaffold widget with a grey background color
    return const Scaffold(backgroundColor: Colors.grey);
  }
}
