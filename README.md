<h1 align=center>
<img src="visuals/hero.png" width=100%>
</h1>

![Stack Exchange monthly questions](https://img.shields.io/stackexchange/stackoverflow/qm/freerasp)
![GitHub](https://img.shields.io/github/license/talsec/Free-RASP-Community)
# Overview
freeRASP provides multiplatform mobile all-in-one protection for mobile applications free of charge.

**The protection features**:

:heavy_check_mark: Tamper protection

:heavy_check_mark: Repackaging/Cloning protection

:heavy_check_mark: Runtime analysis protection

:heavy_check_mark: Threat alerts & monthly security reports

At the core of freeRASP is a security library which is freely distributed as a library/framework for Android and iOS. The compiled library is part of a sample application together with an integration manual.

## Key Benefits
* Reactions to attacks and detected security threats via an API
* Alerts for critical incidents like app tampering and cloning
* Simple download and install with clear source code snippets
* Monthly security report via email indicating security status of devices and app integrity
* Fullfills OWASP Code Tampering and Reverse Engineering measures

# Cloud Services
Cloud services are shared both for Android and iOS. Cloud services (ie. reports and email alerts) for freeRASP are provided by Talsec free of charge. However freeRASP currently does not support self-hosted cloud service.

* Anonymized data logs are sent to ElasticSearch
* Data are continuously evaluated and ML-classified to detect anomalies
* Each account can set up a Watcher to receive weekly alerts about detected attempts for app modifications

## Processed data and GDPR compliancy
Data created by freeRASP are anonymized. Nevertheless, don't forget you still have to specify freeRASP (https://talsec.app) in your Terms and Conditions as 3rd party data processor to be GDPR compliant. Data won't be provided to any other party.

### Processed Data
* Unique app instance identifier
* Diagnostic device data
* Signing certificate 
* Publisher data (email) - used for sending reports

## Security Report
The Security Report comes with Incident rate dynamics, Root/Jailbreak, Tamper/Cloning, RE attempts and many other types of security information you can further investigate to protect your app and users.

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