This image contains the Android SDK tools in `/opt/android-sdk`.

You will probably want to install more stuff when using or extending this image, like in the example below this lines.

```
FROM rubenillodo/android-base:latest

RUN sdkmanager "extras;google;m2repository"
RUN sdkmanager "extras;android;m2repository"
RUN sdkmanager "build-tools;27.0.2"
RUN sdkmanager "platforms;android-27"
```
