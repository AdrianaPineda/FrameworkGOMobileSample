# FrameworkGOMobileSample

## Requirements
Create the gomobile library using this sample project: https://github.com/dcu/gomobile-sample

1. go get -v github.com/dcu/gomobile-sample
2. Go to the 'gomobile-sample' project
3. Execute 'make ios'
4. Add the 'Sample.framework' inside the root of the project 'FrameworkGOMobileSample'

## Create universal framework
1. Run target 'Universal Framework'. This script will generate a framework with architectures x86_64 armv7 arm64
2. When the task finishes, the folder where the framework was generated will be shown in Finder
