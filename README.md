# FrameworkGOMobileSample

## Requirements
Get the gomobile library using this sample project: https://github.com/dcu/gomobile-sample

You can run the script `copy-sample.sh` or follow the steps below:

1. go get -v github.com/dcu/gomobile-sample
2. Go to the 'gomobile-sample' project
3. Execute 'make ios'
4. Add the 'Sample.framework' inside the root of the project 'FrameworkGOMobileSample'.

Make sure the framework is added in 'Link Binary with Libraries' and in 'Copy Files' under Project > Build Phases
'Code Sign on Copy' must be disabled for 'Copy Files'

## Create universal framework
1. Run target 'Universal Framework'. This script will generate a framework with architectures x86_64 armv7 arm64
2. When the task finishes, the folder where the framework was generated will be shown in Finder

## Known issues
* Bitcode is not supported. The framework has bitcode disabled. (Build Settings > Enable Bitcode > No)

When trying to compile the framework with bitcode enabled in a real device you will get:
ld: '{...}/FrameworkGOMobileSample/Sample.framework/Sample(000002.o)' does not contain bitcode. You must rebuild it with bitcode enabled (Xcode setting ENABLE_BITCODE), obtain an updated library from the vendor, or disable bitcode for this target. for architecture armv7

* Code Sign On Copy is disabled
Under Build Phases > Copy Files > Sample.framework

When you try to compile the framework with `Code Sign On Copy` enabled in a real device you will get:
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/bitcode_strip: string table not at the end of the file (can't be processed) in file: /{...}/FrameworkGOMobileSample/Sample.framework/Versions/A/Sample(go.o) (for architecture armv7)
error: bitcode_strip {...}/FrameworkGOMobileSample/Sample.framework/Versions/A/Sample: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/bitcode_strip exited with 1