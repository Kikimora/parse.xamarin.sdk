#!/bin/bash

echo "Updating NuGet"
NuGet Update -self || exit 1
echo "You NuGet API KEY:"
read API_KEY || exit 1
NuGet SetApiKey $API_KEY || exit 1
bash build.sh || exit 1
echo "Package version:"
read VERSION || exit 1
NuGet Push Parse.Xamarin.SDK.${VERSION}.nupkg || exit 1