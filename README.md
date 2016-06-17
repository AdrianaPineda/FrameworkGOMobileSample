# FrameworkGOMobileSample

This framework is an [umbrella framework](https://developer.apple.com/library/mac/documentation/MacOSX/Conceptual/BPFrameworks/Concepts/FrameworkAnatomy.html#//apple_ref/doc/uid/20002253-97623-BAJJHAJC) that includes a gomobile framework (Sample.framework).

## Requirements
Get the gomobile library using this sample project: https://github.com/dcu/gomobile-sample

You can run the script `copy-sample.sh` (located in the root of this repo) or follow the steps below:

1. go get -v github.com/dcu/gomobile-sample
2. Go to the 'gomobile-sample' project
3. Execute 'make ios'
4. Add the 'Sample.framework' inside the root of the project 'FrameworkGOMobileSample'.

Make sure the framework is added in 'Link Binary with Libraries' and in 'Copy Files' under Project > Build Phases
'Code Sign on Copy' must be disabled for 'Copy Files'

## Create universal framework
1. Run target 'Universal Framework'. This script will generate a framework with architectures x86_64 armv7 arm64
2. When the task finishes, the folder where the framework was generated will be shown in Finder
3. Go to https://github.com/AdrianaPineda/iOSGOMobileSampleApp to setup your sample app

## Known issues
* Unable to generate framework when 'Code Sign On Copy' is disabled under Build Phases > Copy Files > Sample.framework

When you try to compile the framework with `Code Sign On Copy` enabled in a real device you will get:
/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/bitcode_strip: string table not at the end of the file (can't be processed) in file: /{...}/FrameworkGOMobileSample/Sample.framework/Versions/A/Sample(go.o) (for architecture armv7)
error: bitcode_strip {...}/FrameworkGOMobileSample/Sample.framework/Versions/A/Sample: /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/bitcode_strip exited with 1