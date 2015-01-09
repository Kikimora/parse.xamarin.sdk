#!/bin/sh
echo "It is ok if nuget complains about 'ios', 'android' and 'unity' folders"
NuGet Pack Package.nuspec -basepath ./
