1. Build `docker build -t qt-android-docker .`
2. Mount project and run container:
`docker run -v /home/percit/github/qt-Spotify:/app qt-android-docker`
3. `cmake -DCMAKE_TOOLCHAIN_FILE=/opt/qt/6.0.2/android/toolchains/your_toolchain.cmake .. && make -j8`
