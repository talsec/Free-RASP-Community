<h1 align=center>
<img src="visuals/freeRASP.png" width=100%>
</h1>

![GitHub Repo stars](https://img.shields.io/github/stars/talsec/Free-RASP-Community?color=green) ![GitHub](https://img.shields.io/github/license/talsec/Free-RASP-Community) ![GitHub](https://img.shields.io/github/last-commit/talsec/Free-RASP-Community) ![Publisher](https://img.shields.io/pub/publisher/freerasp) [![42matters](https://42matters.com/badges/sdk-installations/talsec)](https://42matters.com/sdks/android/talsec)

[<img src="https://assets.42matters.com/badges/2024/04/rising-star.svg?m=04" width="100"/>](https://42matters.com/sdks/android/talsec)

# freeRASP
In-App protection is a mobile security technology that allows mobile applications to check the security state of the environment they run within, actively counteract attack attempts, and control the integrity of the app. Such technology is also called RASP (Runtime App Self Protection) or App Shielding. 

freeRASP is a mobile in-app protection and security monitoring SDK. It aims to cover the  main aspects of RASP and application shielding.

# Overview
The freeRASP is a lightweight and easy-to-integrate security library designed to protect apps from potential  threats during their runtime. It contains multiple security checks, each aimed to cover a possible attack vector to ensure a high level of application security. Among other options, it is able to detect reverse engineering, repackaging or cloning attempts, and running in an unsafe OS environment. It is freely distributed for all mobile platforms and is also available for Flutter, Capacitor, Cordova and React Native developers. 

You can check platform-specific submodules for the installation guide and specific details down below:
* [Flutter](https://github.com/talsec/Free-RASP-Flutter) ([pub.dev package](https://pub.dev/packages/freerasp))
* [Capacitor](https://github.com/talsec/Free-RASP-Capacitor)
* [React Native](https://github.com/talsec/Free-RASP-ReactNative)
* [Cordova](https://github.com/talsec/Free-RASP-Cordova)
* [Android](https://github.com/talsec/Free-RASP-Android)
* [iOS](https://github.com/talsec/Free-RASP-iOS)

### Key advantages
* Reactions to attacks and detected security threats via an API
* Simple download and install with clear source code snippets
* No significant effect on the app performance
* Weekly security report via email indicating security status of devices and app integrity
* Fulfills [OWASP MASVS V8: Resiliency Against Reverse Engineering Requirements](https://mobile-security.gitbook.io/masvs/security-requirements/0x15-v8-resiliency_against_reverse_engineering_requirements)

##  :dart: Features
freeRASP **provides protection** against potentially dangerous behavior,  including the following:

:heavy_check_mark: Using rooted or jailbroken devices (e.g., unc0ver, check1rain)

:heavy_check_mark: Reverse engineering attempts

:heavy_check_mark: Running hooking frameworks (e.g., Frida, Xposed or Shadow)

:heavy_check_mark: Tampering or repackaging the  application

:heavy_check_mark: Installing the app through untrusted methods/unofficial stores

Visit our [wiki](https://github.com/talsec/Free-RASP-Community/wiki/Threat-detection) to learn more details about the performed checks and their importance for app security.

# :rocket: Discover GitBook Documentation
Explore a comprehensive collection of resources, including guides, tutorials, and technical documentation on the [GitBook page](https://talsec.gitbook.io/freerasp). Whether you're just starting out or looking for advanced tips to enhance your project, you'll find everything you need here.

## :link: Integration Guide
For a seamless integration experience, follow the steps provided in the [Integration Guide](https://talsec.gitbook.io/freerasp/integration). This guide offers detailed instructions to ensure a smooth and efficient process, no matter what platform you're working with.

Make sure to bookmark the page and stay updated :books: :sparkles: !

# Reference to Legacy Documentation
If you encounter any discrepancies or errors in the documentation, please open an issue so it can be improved for everyone's benefit. For additional information and historical context, you can refer to the [freeRASP wiki](https://github.com/talsec/Free-RASP-Community/wiki), which includes valuable legacy details and insights. Your feedback is greatly appreciated, as it helps refine these resources and better support the community’s needs.