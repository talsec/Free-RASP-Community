<h1 align=center>
<img src="visuals/freeRASP.png" width=100%>
</h1>

![GitHub Repo stars](https://img.shields.io/github/stars/talsec/Free-RASP-Community?color=green) ![GitHub](https://img.shields.io/github/license/talsec/Free-RASP-Community) ![GitHub](https://img.shields.io/github/last-commit/talsec/Free-RASP-Community) [![extra_pedantic on pub.dev](https://img.shields.io/badge/style-extra__pedantic-blue)](https://pub.dev/packages/extra_pedantic)


<p>
    <a href="https://github.com/talsec/Free-RASP-Flutter" target="_blank">
        <img align="center" style="height: 3rem; width: auto; margin: 2px;"alt="Open Flutter Submodule" src="visuals/button_flutter.png"/>
    </a>
    <a href="https://github.com/talsec/Free-RASP-Android" target="_blank">
        <img align="center" style="height: 3rem; width: auto; margin: 2px;" alt="Open Android Submodule" src="visuals/button_android.png"/>
    </a>
    <a href="https://github.com/talsec/Free-RASP-iOS" target="_blank">
        <img align="center" style="height: 3rem; width: auto; margin: 2px;"alt="Open iOS Submodule" src="visuals/button_ios.png"/>
    </a>
</p>

# freeRASP
In-App protection is a mobile security technology that allows mobile applications to check the security state of the environment they run within, actively counteract attack attempts, and control the integrity of the app. Such technology is also called RASP (Runtime App Self Protection) or App Shielding. 

freeRASP is a mobile in-app protection and security monitoring SDK. It aims to cover the  main aspects of RASP and application shielding.

# :notebook_with_decorative_cover: Table of contents
- [Overview](#overview) 
    * [Key advantages](#key-advantages) 
	* [Features](#dart-features) 
	* [Security Report](#security-report) 
- [Cloud Services](#cloud-services)
    * [Data collection](#data-collection-processing-and-gdpr-compliance)
- [Enterprise Services](#enterprise-services) 
    * [Commercial version](#commercial-version)
	* [Plans comparison](#plans-comparison)
- [Community development](#community-development) 
- [About us](#about-us)
- [License](#license) 

# Overview
The freeRASP is a lightweight and easy-to-integrate security library designed to protect apps from potential  threats during their runtime. It contains multiple security checks, each aimed to cover a possible attack vector to ensure a high level of application security. Among other options, it is able to detect reverse engineering, repackaging or cloning attempts, and running in an unsafe OS environment. It is freely distributed for all mobile platforms and is available for Flutter developers. 

You can check platform-specific submodules for the installation guide and specific details down below:
* [Flutter](https://pub.dev/packages/freerasp)
* [Android](https://github.com/talsec/Free-RASP-Android)
* [iOS](https://github.com/talsec/Free-RASP-iOS)

### Key advantages
* Reactions to attacks and detected security threats via an API
* Simple download and install with clear source code snippets
* No significant effect on the app performance
* Weekly security report via email indicating security status of devices and app integrity
* Fulfills OWASP Code Tampering and Reverse Engineering measures
##  :dart: Features
freeRASP **provides protection** against potentially dangerous behavior,  including the following:

:heavy_check_mark: Using rooted or jailbroken devices (e.g., unc0ver, check1rain)

:heavy_check_mark: Reverse engineering attempts

:heavy_check_mark: Running hooking frameworks (e.g., Frida, Xposed or Shadow)

:heavy_check_mark: Tampering or repackaging the  application

:heavy_check_mark: Installing the app through untrusted methods/unofficial stores

Visit our [wiki](https://github.com/talsec/Free-RASP-Community/wiki/Threat-detection) to learn more details about the performed checks and their importance for app security.

## Security report
The Security Report is a weekly summary describing the application's security state and characteristics of the devices it runs on in a practical and easy-to-understand way.

The report provides a quick overview of the security incidents, their dynamics, app integrity, and reverse engineering attempts. It contains info about the security of devices, such as OS version or the ratio of devices with screen locks and biometrics. Each visualization also comes with a concise explanation.

![enter image description here](https://raw.githubusercontent.com/talsec/Free-RASP-Community/master/visuals/dashboard.png)

# :outbox_tray: Cloud Services

Cloud services are shared both for Android and iOS. Cloud services (i.e., reports and email alerts) for freeRASP are provided by Talsec free of charge. However, freeRASP currently does not support self-hosted cloud service.

* Anonymized data logs are sent to ElasticSearch
* Data are continuously evaluated and ML-classified to detect anomalies
* Each account can set up a Watcher to receive weekly alerts about detected attempts for app modifications

## Data Collection, Processing, and GDPR compliance
By April 2022 [Google Play requires](https://support.google.com/googleplay/android-developer/answer/10787469?hl=en) all app publishers to declare how they collect and handle user data for the apps they publish on Google Play. They should inform users properly of the data collected by the apps and how the data is shared and processed. Therefore, Google will reject the apps which do not comply with the policy.

Apple has a similar [approach](https://developer.apple.com/app-store/app-privacy-details/) and data types specification.

Talsec recommends adding the following statements to the Privacy Policy page dedicated to your app. Also, use the text below while filling in the Google Play Safety Section or similar for Apple App Store publishing.

<i>
For the purpose of Fraud prevention, user safety, and compliance the dedicated App safety SDK needs to send the following anonymous diagnostic data off the device for detection of security issues. Thus the application collects the following data:

* Category: App info and performance
    * Data Type: Diagnostics
    * Information about the integrity of the app and the operating system. For example, rooting, running in an emulator, hooking framework usage, etc...
* Category: Device or other identifiers
    * Data Type: Device or other identifiers
    * Information that relates to an individual device. For example, a device model and anonymous identifier to control that app instance executed on the original device that it was initially installed on. It is needed to combat threats like bots and API abuse.
</i>

None of the data collected by the freeRASP Talsec Security SDK is considered personal or sensitive. Also, there is no technical way to identify the real person by the identifiers collected by freeRASP SDK.

Google Play’s User Data policy indicates that a prominent disclosure should be presented to the users, **in case of an app collecting personal or sensitive data**. 

Though freeRASP doesn’t collect personal or sensitive data, the App publisher may still consider adding a disclosure screen, describing why the security diagnostic data is needed, what data, and how the data is used. [Link to best practices and guidelines](https://support.google.com/googleplay/android-developer/answer/11150561?hl=en&ref_topic=2364761) of Google.

An example of a disclosure screen:

<h1>
<img src="https://raw.githubusercontent.com/talsec/Free-RASP-Community/master/visuals/android_disclosure_screen.png" width=25%>
</h1>

# :bar_chart: Enterprise Services
We provide extended services (AppiCrypt, Hardening, Secure Storage, and Certificate Pinning) to our commercial customers as well. To get the most advanced protection compliant with PSD2 RT and eIDAS and support from our experts, contact us at [talsec.app](https://talsec.app).

## Commercial version
The commercial version provides a top-notch protection level, extra features, support, and maintenance. One of the most valued commercial features is [AppiCrypt®](https://www.talsec.app/appicrypt) - App Integrity Cryptogram.

It allows easy to implement API protection and App Integrity verification on the backend to prevent API abuse:

-   Bruteforce attacks
-   Botnets
-   Session-hijacking
-   DDoS

It is a unified solution that works across all mobile platforms without dependency on external web services (i.e., without extra latency, an additional point of failure, and maintenance costs).

Learn more about commercial features at  [https://talsec.app](https://talsec.app/).

**TIP:** You can try freeRASP and then upgrade easily to an enterprise service.


## Plans Comparison

<table>
    <thead>
        <tr>
            <th></th>
            <th>freeRASP</th>
            <th>Business</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan=5><strong>Runtime App Self Protection (RASP, app shielding)</strong></td>
        </tr>
        <tr>
            <td>Advanced root/jailbreak protections</td>
            <td>basic</td>
            <td>advanced</td>
        </tr>
        <tr>
            <td>Runtime reverse engineering controls 
                <ul>
                    <li>Debug</li>
                    <li>Emulator</li>
                    <li>Hooking protections</li>
                </ul>
            </td>
            <td>basic</td>
            <td>advanced</td>
        </tr>
        <tr>
            <td>Runtime integrity controls 
                <ul>
                    <li>Tamper protection</li>
                    <li>Repackaging / Cloning protection</li>
                    <li>Device binding protection</li>
                </ul>
            </td>
            <td>basic</td>
            <td>advanced</td>
        </tr>
        <tr>
            <td>Device OS security status check 
                <ul>
                    <li>HW security module control</li>
                    <li>Device lock control</li>
                    <li>Device lock change control</li>
                </ul>
            </td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>UI protection 
                <ul>
                    <li>Overlay protection</li>
                    <li>Accessibility services protection</li>
                </ul>
            </td>
            <td>no</td>
            <td>yes</td>
        </tr>
        <tr>
            <td colspan=5><strong>Hardening suite</strong></td>
        </tr>
        <tr>
            <td>Security hardening suite 
                <ul>
                    <li>Dynamic certificate pinning</li>
                    <li>Obfuscation</li>
                    <li>Secure storage hardening</li>
                    <li>Secure pinpad</li>
                </ul>
            </td>
            <td>no</td>
            <td>yes</td>
        </tr>
        <tr>
            <td colspan=5><strong>Attestation and API protection</strong></td>
        </tr>
        <tr>
            <td>Device attestation and dynamic API protection</td>
            <td>no</td>
            <td>no</td>
        </tr>
        <tr>
            <td colspan=5><strong>Monitoring</strong></td>
        </tr>
        <tr>
            <td>AppSec regular email reporting</td>
            <td>yes (up to 100k devices)</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Data insights and auditing portal</td>
            <td>no</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Embed code to integrate with portal</td>
            <td>no</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>API data access</td>
            <td>no</td>
            <td>yes</td>
        </tr>
    </tbody>
</table>

# Community Development

Contributions are always welcomed. With new threats arising, protections currently in place need to be continuously updated. You can start contributing in many different ways:
* Filing or reporting issues
* Working on one of the existing issues
* Browsing existing code and manuals and proofreading it

Support and maintenance are in the hands of the community. Feel free to open new issues and ask questions.

# About Us
Talsec is an academic-based and community-driven mobile security company. We deliver in-App Protection and a User Safety suite for Fintechs. We aim to bridge the gaps between the user's perception of app safety and the strong security requirements of the financial industry. 

Talsec offers a wide range of security solutions, such as App and API protection SDK, Penetration testing, monitoring services, and the User Safety suite. You can check out offered products at [our web](https://www.talsec.app).

# License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/talsec/Free-RASP-Community/blob/master/LICENSE) file for details.
