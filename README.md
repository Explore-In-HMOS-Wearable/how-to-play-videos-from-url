> **Note:** To access all shared projects, get information about environment setup, and view other guides, please visit [Explore-In-HMOS-Wearable Index](https://github.com/Explore-In-HMOS-Wearable/hmos-index).

# How to play videos from URL

NetworkVideoPlayer is a demo app that allows users to play videos from a given URL, supporting basic playback controls like play and pause.

# Preview

<div align="left">
  <img src="images/o2.png" width="24%">
  <img src="images/output4.png" width="24%">
  <img src="images/output2.png" width="24%">
  <img src="images/output5.png" width="24%">
</div>

# Use Cases

NetworkVideoPlayer lets users:
Enter a video URL to stream and play the video directly.
Control playback with play and pause options.

# Technology
## Stack
Languages: ArkTS
Frameworks: HarmonyOS SDK 5.1.0(18)
Tools: DevEco Studio Vers 5.1.0.820
Libraries: @kit.ArkUI

## Required Permissions
ohos.permission.INTERNET

# Directory Structure

```
entry/src/main/ets/
|---pages                         
|   |---Index.ets                        // Main page 
|   |---NetworkVideo.ets                 // Network video player               
|---view
|   |---Video.ets                        // Video player component
``` 

# Constraints and Restrictions
## Supported Devices
Huawei Watch 5

# LICENSE

SoccerScore is distributed under the terms of the MIT License.  
See the [LICENSE](/LICENSE) for more information.
