# freeRASP for Flutter

freeRASP for Flutter is a part of security SDK for the app shielding and security monitoring. Learn more about provided features on the [freeRASP's main repository](https://github.com/talsec/Free-RASP-Community) first.

# Usage
We will guide you step-by-step, but you can always check the expected result. This is how final implementation should look like:

* [main.dart](https://github.com/talsec/Free-RASP-Flutter/blob/master/lib/main.dart)

## Step 1: Prepare Talsec library
Add dependency to your `pubspec.yaml` file  
```yaml
dependencies:
  freerasp: 1.0.0
```  
and then run: `pub get`

### iOS setup
After depending on plugin follow with these steps:
1. Open terminal 
2. Navigate to your Flutter project 
3. Switch to `ios` folder
```shell script
$ cd ios
```
4. Run: `pod install`  
```shell script
$ pod install
```
Note: `.symlinks` folder should be now visible under your `ios` folder.

5. Open `.xcworkspace/.xcodeproject` folder of Flutter project in xcode
6. Go to **Product > Scheme > Edit Scheme... > Build (dropdown arrow) > Pre-actions**
7. Hit **+** and then **New Run Script Action**
8. Set **Provide build setting from** to **Runner**
9. Use the following code to automatically use an appropriate Talsec version for a release or debug (dev) build (see an explanation [here](#dev-vs-release-version)):
```shell script
cd "${SRCROOT}/.symlinks/plugins/freerasp/ios"
if [ "${CONFIGURATION}" = "Release" ]; then
    rm -rf ./TalsecRuntime.xcframework
    ln -s ./Release/TalsecRuntime.xcframework/ TalsecRuntime.xcframework
else
    rm -rf ./TalsecRuntime.xcframework
    ln -s ./Debug/TalsecRuntime.xcframework/ TalsecRuntime.xcframework
fi
```
10. Close the terminal window and then resolve warnings in the xcode project:

    1. Go to **Show the Issue navigator**  
    2. Click twice on **Update to recommended settings** under **Runner project** issue > **Perform changes**  
    3. Click twice on **Update to recommended settings** under **Pods project** issue  > **Perform changes**  
    
    Issues should be clear now.  

### Android setup
* From root of your project, go to **android > app > build.gradle**
* In `defaultConfig` update `minSdkVersion` to at least **19** (Android 4.4) or higher
```gradle
android {
...
defaultConfig {
    ...
    minSdkVersion 19
    ...
    }
...
}
```

### Dev vs. Release version
Dev version is used during the development of application. It separates development and production data and disables some checks which won't be triggered during development process:

* Emulator-usage
* Debugging
* Signing


## Step 2: Setup the Configuration for your App
Make (convert or create a new one) your "top-most" widget (typically one in `runApp(MyWidget())`) and override its `initState` in `State`
```dart
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    
    //TODO: freeRASP implementation
  }
}

```
and then create a Talsec config and insert `androidConfig` and/or `IOSConfig` with highlighted identifiers: `expectedPackageName` and `expectedSigningCertificateHash` are needed for Android version. Similarly, `appBundleId` and `appTeamId` are needed for iOS version of app. If you publish on the Google Play Store and/or Huawei AppGallery, you **don't have to assign anything** to `supportedAlternativeStores` as those are supported out of the box.

```dart
@override
 void initState() {
    super.initState();

    TalsecConfig config = TalsecConfig(

      // For Android
      androidConfig: AndroidConfig(
        expectedPackageName: 'YOUR_PACKAGE_NAME',
        expectedSigningCertificateHash: 'HASH_OF_YOUR_APP',
        supportedAlternativeStores: ["com.sec.android.app.samsungapps"],
      ),
   
      // For iOS
      IOSConfig: IOSconfig(
        appBundleId: 'YOUR_APP_BUNDLE_ID',
        appTeamId: 'YOUR_APP_TEAM_ID',
      ),
  
      // Common email for Alerts and Reports
      watcherMail: 'john@example.com',
  );
}
```  

## Step 3: Handle detected threats
Create `AndroidCallback` and/or `IOSCallback` objects and provide `VoidCallback` function pointers to handle detected threats:

```dart
@override
void initState(){
    // Talsec config
    // ...
    
    // Callback setup
    TalsecCallback callback = TalsecCallback(

      // For Android
      androidCallback: AndroidCallback(
          onRootDetected: () => print('Root detected'),
          onEmulatorDetected: () => print('Emulator detected'),
          onFingerprintDetected: () => print('Fingerprint detected'),
          onHookDetected: () => print('Hook detected'),
          onTamperDetected: () => print('Tamper detected'),
      ),

      // For iOS
      IOSCallback: IOScallback(
        onSignatureDetected: () => print('Signature detected'),
        onRuntimeManipulationDetected: () => print('Runtime manipulation detected'),
        onJailbreakDetected: () => print('Jailbreak detected'),
        onPasscodeChangeDetected: () => print('Passcode change detected'),
        onPasscodeDetected: () => print('Passcode detected'),
        onSimulatorDetected: () => print('Simulator detected'),
        onMissingSecureEnclaveDetected: () => print('Missing secure enclave detected'),
      ),

      // Common for both platforms
      onDebuggerDetected: () => print("Debugger detected"),
    );
}
```
## Step 4: Start the Talsec
Start Talsec to detect threats just by adding these two lines below the created config and the callback handler:
```dart
void initState(){
  // Talsec config
  // ...
  // Talsec callback handler
  // ...
  
  TalsecApp app = TalsecApp(
        config: config,
        callback: callback,
  );
  app.start();
}
```
And you're done 🎉! You can open issue if you get stuck anywhere in the guide or show your appreciation by starring this repository ⭐!