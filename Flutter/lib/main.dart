import 'dart:io';

import 'package:flutter/material.dart';
import 'package:freerasp/talsec_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Strings to hold state (Android)
  String _rootState = 'Secured';
  String _emulatorState = 'Secured';
  String _tamperState = 'Secured';
  String _hookState = 'Secured';
  String _fingerPrintState = 'Secured';

  // String to hold state (iOS)
  String _signatureState = 'Secured';
  String _jailbreakState = 'Secured';
  String _runtimeManipulationState = 'Secured';
  String _passcodeState = 'Secured';
  String _passcodeChangeState = 'Secured';
  String _simulatorState = 'Secured';
  String _missingSecureEnclaveState = 'Secured';

  // String to hold state (common)
  String _debuggerState = 'Secured';

  // Getter to determine which states we care about
  List<Widget> get overview {
    if (Platform.isAndroid) {
      return [
        Text('Root: $_rootState\n'),
        Text('Debugger: $_debuggerState\n'),
        Text('Emulator: $_emulatorState\n'),
        Text('Tamper: $_tamperState\n'),
        Text('Hook: $_hookState\n'),
        Text('Fingerprint: $_fingerPrintState\n'),
      ];
    }
    return [
      Text('Signature: $_signatureState\n'),
      Text('Jailbreak: $_jailbreakState\n'),
      Text('Debugger: $_debuggerState\n'),
      Text('Runtime Manipulation: $_runtimeManipulationState\n'),
      Text('Passcode: $_passcodeState\n'),
      Text('Passcode change: $_passcodeChangeState\n'),
      Text('Simulator: $_simulatorState\n'),
      Text('Missing secure enclave: $_missingSecureEnclaveState\n'),
    ];
  }

  /// Override initState of the "highest" widget in order to start freeRASP
  /// as soon as possible.
  @override
  void initState() {
    super.initState();
    initSecurityState();
  }

  initSecurityState() {
    /// Provide TalsecConfig your expected data and then use them in TalsecApp
    TalsecConfig config = TalsecConfig(
      /// For Android
      androidConfig: AndroidConfig(
        expectedPackageName: 'YOUR_PACKAGE_NAME',
        expectedSigningCertificateHash: 'HASH_OF_YOUR_APP',
        supportedAlternativeStores: ["com.sec.android.app.samsungapps"],
      ),

      /// For iOS
      IOSConfig: IOSconfig(
        appBundleId: 'YOUR_APP_BUNDLE_ID',
        appTeamId: 'YOUR_APP_TEAM_ID',
      ),

      watcherMail: 'your_mail@example.com',
    );

    /// Callbacks thrown by library
    TalsecCallback callback = TalsecCallback(
      /// For Android
      androidCallback: AndroidCallback(
        onRootDetected: () {
          setState(() {
            _rootState = 'Detected';
          });
        },
        onEmulatorDetected: () {
          setState(() {
            _emulatorState = 'Detected';
          });
        },
        onFingerprintDetected: () {
          setState(() {
            _fingerPrintState = 'Detected';
          });
        },
        onHookDetected: () {
          setState(() {
            _hookState = 'Detected';
          });
        },
        onTamperDetected: () {
          setState(() {
            _tamperState = 'Detected';
          });
        },
      ),

      /// For iOS
      IOSCallback: IOScallback(
        onSignatureDetected: () {
          setState(() {
            _signatureState = 'Detected';
          });
        },
        onRuntimeManipulationDetected: () {
          setState(() {
            _runtimeManipulationState = 'Detected';
          });
        },
        onJailbreakDetected: () {
          setState(() {
            _jailbreakState = 'Detected';
          });
        },
        onPasscodeChangeDetected: () {
          setState(() {
            _passcodeChangeState = 'Detected';
          });
        },
        onPasscodeDetected: () {
          setState(() {
            _passcodeState = 'Detected';
          });
        },
        onSimulatorDetected: () {
          setState(() {
            _simulatorState = 'Detected';
          });
        },
        onMissingSecureEnclaveDetected: () {
          setState(() {
            _missingSecureEnclaveState = 'Detected';
          });
        },
      ),

      /// Debugger is common for both platforms
      onDebuggerDetected: () {
        setState(() {
          _debuggerState = 'Detected';
        });
      },
    );

    TalsecApp app = TalsecApp(
      config: config,
      callback: callback,
    );

    /// Turn on freeRASP
    app.start();

    if (!mounted) return;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('freeRASP Demo App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: overview,
          ),
        ),
      ),
    );
  }
}