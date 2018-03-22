FROM openjdk:8

ENV ANDROID_SDK_HOME /opt/android-sdk
ENV ANDROID_HOME /opt/android-sdk

WORKDIR /opt
RUN wget -q https://dl.google.com/android/repository/sdk-tools-linux-3859397.zip -O android-sdk.zip && \
  unzip android-sdk.zip -d android-sdk && \
  rm -f android-sdk.zip

ENV PATH ${PATH}:${ANDROID_SDK_HOME}/tools/bin

RUN yes | sdkmanager --licenses
RUN sdkmanager "tools"

WORKDIR /home/android/app
