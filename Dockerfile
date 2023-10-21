# Use an official Qt image as the base image
FROM qtorg/qt:6.0.2-android

# Set environment variables for Android NDK and SDK paths
ENV ANDROID_NDK_ROOT=/opt/android/android-ndk-r21e
ENV ANDROID_SDK_ROOT=/opt/android/android-sdk-linux
ENV PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools

# Install any additional dependencies you might need
RUN apt-get update && apt-get install -y \
    build-essential \
    git

# Download Android NDK and SDK
RUN wget -O /tmp/android-ndk.zip https://dl.google.com/android/repository/android-ndk-r21e-linux-x86_64.zip && \
    unzip /tmp/android-ndk.zip -d /opt/android/ && \
    rm /tmp/android-ndk.zip && \
    mkdir -p /opt/android/android-sdk-linux && \
    cd /opt/android/android-sdk-linux && \
    wget -O /tmp/android-sdk.zip https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip && \
    unzip /tmp/android-sdk.zip && \
    rm /tmp/android-sdk.zip && \
    yes | sdkmanager --licenses

# Set up Qt for Android
RUN mkdir /opt/qt && cd /opt/qt && \
    /opt/qt/6.0.2/android/bin/androiddeployqt --output android

# Create a directory for your project and copy it into the container
WORKDIR /app
COPY . /app

# Build your Qt Android app
RUN /opt/qt/6.0.2/android/bin/qmake && make

# When running the container, you can build your project using 'docker run'
# For example:
# docker run -v /path/to/your/app:/app your-qt-android-image-name
