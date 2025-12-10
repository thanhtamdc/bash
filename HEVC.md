## Download
1. Đi tới trang https://store.rg-adguard.net.
1. Tìm **HEVC Video Extensions from Device Manufacturer** (`Microsoft.HEVCVideoExtension`) bằng đường link bên dưới rồi nhấn <kbd>✔</kbd>.
    ```text
    https://www.microsoft.com/en-us/p/hevc-video-extensions-from-device-manufacturer/9n4wgh0z6vhq
    ```
1. Hoặc tìm theo ProductID
   ```text
    9N4WGH0Z6VHQ
    ```
1. Download the AppxBundle file.
    - Click chuột phải › Save Link As 

## Install
- If you have App Installer (e.g. on Windows client editions), you can double-click the AppxBundle file, then click Install.
- Otherwise, if you don't have App Installer (e.g. on Windows Server), you can install the AppxBundle using PowerShell:
    ```ps1
    Add-AppxPackage ".\Microsoft.HEVCVideoExtension_2.2.20.0_neutral_~_8wekyb3d8bbwe.AppxBundle"
    ```

## Verify
1. Exit and restart Windows Media Player if it was already running.
1. Try to play a video that uses the H.265/HEVC codec in Windows Media Player.
1. If it doesn't work, go to Help › About Windows Media Player Legacy and click Technical Support Information. Ensure `HEVCDECODER_STORE.dll` appears in the Other Binaries section.
1. If it doesn't work, run `Get-AppxPackage Microsoft.HEVCVideoExtension` in PowerShell to see the app, which should have `Status` set to `OK`. Note that the app name is not `Microsoft.HEVCVideoExtensions` (plural), the $0.99 app not from device manufacturers, which is broken in WMP. If `Microsoft.H
