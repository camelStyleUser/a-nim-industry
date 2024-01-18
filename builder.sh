cd `dirname $(readlink -f $0)`
nimble deploy
nimble deploy mac
nimble androidPackage
cp build/main-linux64 linuxandmac64
cp build/main-win64.exe win64.exe
cp android/build/outputs/apk/debug/android-debug.apk android.apk
zip built.zip linuxandmac64 win64.exe android.apk
rm linuxandmac64 win64.exe android.apk
rm -rf build
rm -rf android/build/outputs/apk
