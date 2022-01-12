<h1 align=center>
<img src="visuals/hero.png" width=100%>
</h1>

![Stack Exchange monthly questions](https://img.shields.io/stackexchange/stackoverflow/qm/freerasp)
![GitHub](https://img.shields.io/github/license/talsec/Free-RASP-Community)

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

# In-App Protection and RASP
In-App protection is a mobile security technology that allows mobile applications to check the security state of the environment that it runs within, actively counteract attack attempts, and control the integrity of the app. Such technology is also called RASP (Runtime App Self Protection) or App Shielding.

freeRASP provides multi-platform mobile all-in-one protection for mobile applications free of charge.

**The protection features**:

:heavy_check_mark: Tamper protection

:heavy_check_mark: Repackaging/Cloning protection

:heavy_check_mark: Runtime analysis protection

:heavy_check_mark: Threat alerts & weekly security reports

The core of freeRASP is a security library which is freely distributed for all mobile platforms. The compiled library is part of a sample application together with an integration manual.

Check platform-specific submodule for details:
* [Flutter](https://github.com/talsec/Free-RASP-Flutter)
* [Android](https://github.com/talsec/Free-RASP-Android)
* [iOS](https://github.com/talsec/Free-RASP-iOS)

## Key Benefits
* Reactions to attacks and detected security threats via an API
* Alerts for critical incidents like app tampering and cloning
* Simple download and install with clear source code snippets
* Weekly security report via email indicating security status of devices and app integrity
* Fullfills OWASP Code Tampering and Reverse Engineering measures

# Cloud Services
Cloud services are shared both for Android and iOS. Cloud services (ie. reports and email alerts) for freeRASP are provided by Talsec free of charge. However freeRASP currently does not support self-hosted cloud service.

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

Thus this data is not Subject to generic GDPR regulations.

Google Play’s User Data policy indicates that a prominent disclosure should be presented to the users, **in case of an app collecting personal or sensitive data**. 

Though freeRASP doesn’t collect personal or sensitive data, the App publisher may still consider adding a disclosure screen, describing why the security diagnostic data is needed, what data, and how the data is used. [Link to best practices and guidelines](https://support.google.com/googleplay/android-developer/answer/11150561?hl=en&ref_topic=2364761) of Google.

An example of a disclosure screen:
<h1 align=left>
<img src="https://github.com/talsec/Free-RASP-Community/blob/master/visuals/android_talsec_disclosure_screen.png" width=25%>
</h1>

## Security Report
The Security Report comes with Incident rate dynamics, Root/Jailbreak, Tamper/Cloning, RE attempts and many other types of security information you can further investigate to protect your app and users.

_The value of email field in Talsec's config (check platform-specific submodule for more info) is automatically used as target address for your security reports. Email has a strict form `'name@domain.com'`._

<h1 align=center>
<img src="visuals/dashboard.png" width=100%>
</h1>

# Community Development
Contributions are welcomed. Protections currently in place need to be continuously updated as new threats arise. You can start contributing in many different ways:
* Filing or reporting issues
* Working on one of the existing issues
* Browsing existing code and manuals and proofreading it
Support and maintenance is in the hands of the community. Feel free to open issues and ask questions.

# About Us
Talsec is an academic-based and community-driven mobile security company. We deliver in-App Protection and a User Safety suite for Fintechs.

We bridge the gaps between the user's perception of app safety and the strong security requirements of the financial industry. 

Talsec freeRASP provides a commercial-grade easy-to-integrate mobile security SDK that actively protects apps from attacks. SDK interacts with an on-line app security service that generates regular status reports, detects attacks and triggers watchdog notifications to app developers.

The freeRASP is available for Android and iOS developers. We encourage community contributions, investigations of attack cases, joint data researches and other activities aiming to make bettera app security and app safety for end-users.

# Enterprise Services
We provide extended services (ie. malware detection, detailed configurable threat reactions, immediate alerts and penetration testing) to our commercial customers with a self-hosted cloud platform as well. To get the most advanced protection compliant with PSD2 RT and eIDAS and support from our experts contact us at https://talsec.app.

**TIP:** You can try freeRASP and then upgrade easily to an enterprise service.

## Plans Comparison
<table>
    <thead>
        <tr>
            <th></th>
            <th>freeRASP</th>
            <th>Premium</th>
            <th>Business</th>
            <th>Enterprise</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Number of active devices </td>
            <td>unlimitted (monitoring up to 100k)</td>
            <td>up to 10&nbsp;000k </td>
            <td>unlimitted</td>
            <td>unlimitted</td>
        </tr>
        <tr>
            <td colspan=5><strong>Runtime App Self Protection (RASP, app shielding)</strong></td>
        </tr>
        <tr>
            <td>Advanced root/jailbreak protections</td>
            <td>basic</td>
            <td>standard</td>
            <td>advanced</td>
            <td>custom</td>
        </tr>
        <tr>
            <td>Runtime reverse engineering controls</br> 
                <ul>
                    <li>Debug</li>
                    <li>Emulator</li>
                    <li>Hooking protections</li>
                </ul>
            </td>
            <td>basic</td>
            <td>standard</td>
            <td>advanced</td>
            <td>custom</td>
        </tr>
        <tr>
            <td>Runtime integrity controls</br> 
                <ul>
                    <li>Tamper protection</li>
                    <li>Repackaging / Cloning protection</li>
                    <li>Device binding protection</li>
                </ul>
            </td>
            <td>basic</td>
            <td>standard</td>
            <td>advanced</td>
            <td>custom</td>
        </tr>
        <tr>
            <td>Device OS security status check</br> 
                <ul>
                    <li>HW security module control</li>
                    <li>Device lock control</li>
                    <li>Device lock change control</li>
                </ul>
            </td>
            <td>yes</td>
            <td>yes</td>
            <td>yes</td>
            <td>custom</td>
        </tr>
        <tr>
            <td>UI protection</br> 
                <ul>
                    <li>Overlay protection</li>
                    <li>Accessibility services protection</li>
                </ul>
            </td>
            <td>no</td>
            <td>yes</td>
            <td>yes</td>
            <td>custom</td>
        </tr>
        <tr>
            <td colspan=5><strong>Hardening suite</strong></td>
        </tr>
        <tr>
            <td>Security hardening suite</br> 
                <ul>
                    <li>Dynamic certificate pinning</li>
                    <li>Obfuscation</li>
                    <li>Secure storage hardening</li>
                    <li>Secure pinpad</li>
                </ul>
            </td>
            <td>no</td>
            <td>no</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td colspan=5><strong>Attestation and API protection</strong></td>
        </tr>
        <tr>
            <td>Device attestation and dynamic API protection</td>
            <td>no</td>
            <td>no</td>
            <td>no</td>
            <td>yes</td>
        </tr>
        <tr>
            <td colspan=5><strong>Monitoring</strong></td>
        </tr>
        <tr>
            <td>AppSec regular email reporting</td>
            <td>yes (up to 100k devices)</td>
            <td>yes</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Data insights and auditing portal</td>
            <td>no</td>
            <td>yes</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Embed code to integrate with portal</td>
            <td>no</td>
            <td>no</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>API data access</td>
            <td>no</td>
            <td>no</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Data retention</td>
            <td>1 month</td>
            <td>1 month</td>
            <td>1 year</td>
            <td>custom</td>
        </tr>
        <tr>
            <td colspan=5><strong>Malware detection</strong></td>
        </tr>
        <tr>
            <td>SDK for Malware detection and backend monitoring</td>
            <td>no</td>
            <td>optional</td>
            <td>optional</td>
            <td>optional</td>
        </tr>
        <tr>
            <td colspan=5><strong>User Safety suite</strong></td>
        </tr>
        <tr>
            <td>SDK API for Safety Dashboard for end-users</td>
            <td>min</td>
            <td>min</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>User Safety Assurance service (Improvement plan report, Top10 tips, hot attacks info)</td>
            <td>no</td>
            <td>no</td>
            <td>basic</td>
            <td>custom</td>
        </tr>
        <tr>
            <td colspan=5><strong>Deployment</strong></td>
        </tr>
        <tr>
            <td>Individual unique SDK build</td>
            <td>no</td>
            <td>yes</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Private cloud cluster</td>
            <td>no</td>
            <td>no</td>
            <td>no</td>
            <td>custom</td>
        </tr>
        <tr>
            <td colspan=5><strong>Platforms</strong></td>
        </tr>
        <tr>
            <td>Native (iOS and Android)</td>
            <td>yes</td>
            <td>yes</td>
            <td>yes</td>
            <td>yes</td>
        </tr>
        <tr>
            <td>Flutter (multiplatform)</td>
            <td>yes</td>
            <td>yes</td>
            <td>custom</td>
            <td>custom</td>
        </tr>
    </tbody>
</table>
