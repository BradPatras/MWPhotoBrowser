# MWPhotoBrowser

This repo contains a fork of the MWPhotoBrowser that has been gutted, chopped up, and crammed into an xcframwork so that I can fully remove cocoapods from a project where MWPhotoBrowser was the last holdout.

‼️‼️ - This version of MWPhotoBrowser has had its SDWebImage integration completely removed, so it can no longer load images from urls. This was done to eliminate the external dependencies of this library (and because I wasn't using it anyway). - ‼️‼️

After attempting to use `cocoapods packager` and failing, I followed the steps from [this blog to create the xcframework.](https://www.nutrient.io/blog/supporting-xcframeworks/)

```shell
xcodebuild archive -workspace 'MWPhotoBrowser.xcworkspace' -scheme 'MWPhotoBrowser' -configuration Release -destination 'generic/platform=iOS' -archivePath 'archives/MWPhotoBrowser.framework-iphoneos.xcarchive' SKIP_INSTALL=NO

xcodebuild archive -workspace 'MWPhotoBrowser.xcworkspace' -scheme 'MWPhotoBrowser' -configuration Release -destination 'generic/platform=iOS Simulator' -archivePath 'archives/MWPhotoBrowser.framework-iphonesimulator.xcarchive' SKIP_INSTALL=NO

xcodebuild -create-xcframework -framework 'archives/MWPhotoBrowser.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/MWPhotoBrowser.framework' -framework 'archives/MWPhotoBrowser.framework-iphoneos.xcarchive/Products/Library/Frameworks/MWPhotoBrowser.framework' -output 'archives/MWPhotoBrowser.xcframework'
```
## A simple iOS photo and video browser with optional grid view, captions and selections.

MWPhotoBrowser can display one or more images or videos by providing either `UIImage` objects, `PHAsset` objects, or URLs to library assets or local files. <s>The photo browser handles the downloading and caching of photos from the web seamlessly.</s> Photos can be zoomed and panned, and optional (customisable) captions can be displayed.

## Author

Michael Waterfall, michael@d3i.com

## License

MWPhotoBrowser is available under the MIT license. See the LICENSE file for more info.

## Notes

Demo photos kindly provided by [Oliver Waters](<http://twitter.com/oliverwaters>).
