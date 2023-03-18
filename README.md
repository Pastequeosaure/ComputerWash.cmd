# ComputerWash.cmd

----------------------------------------------------------------------------------------------------------------

Computer Wash est un script de maintenance qui utilise uniquement les commandes Windows pour essayer de l'optimiser et de le réparer.

----------------------------------------------------------------------------------------------------------------

Computer Wash is a maintenance script that only uses Windows commands to try to optimize and repair it.

----------------------------------------------------------------------------------------------------------------

       ______________________________           Computer Wash Ultimate V OK.6.3
      |\                             \                                                       ============================
      | \                             \          Edit by :: PastequeOsaure V OK.6.3          |       18/03/2023         |
      |  \                             \         Created :: PastequeOsaure V 0.0 -> V OK.6.3 | 17/09/2019 -> 18/03/2023 |
      |   \_____________________________\                                                    ============================
      |   |                             |          ____________________________________________________________________________________
      |   |  | # V 0.0.0 # |      ****  |         /                                                                                    \
      |   |_____________________________|         | IF YOU HAVE PAID FOR THIS SOFTWARE, THEN YOU HAVE BEEN SCAMMED!                    |
      |   |                             |         |------------------------------------------------------------------------------------|
      |   |    _____________________    |         | Computer Wash is completely free.                                                  |
      |   |   /                     \   |         |------------------------------------------------------------------------------------|
      |   |   |                     |   |         | THE SOFTWARE IS PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND.                     |
      |   |   |                     |   |         | THE AUTHORS OR COPYRIGHT HOLDERS SHALL NOT BE LIABLE FOR ANY DAMAGES OR OTHERWISE. |
      |   |   |                     |   |         |------------------------------------------------------------------------------------|
      |   |   |                     |   |         | USE THIS SOFTWARE AT YOUR OWN RISK!                                                |
      |   |   |                     |   |         |------------------------------------------------------------------------------------|
      |   |   |                     |   |         | Copyright ┬® 2023 https://computerwash.wixsite.com/computer-wash                   |
      |\  |   \_____________________/   |         \____________________________________________________________________________________/
      | \ |                             |
       \ \|_____________________________|
        \ |                             |
         \|_____________________________|
         
    
----------------------------------------------------------------------------------------------------------------

     A  - Automatic

      A1  -  Daily Wash                       - DISM sfc
      A2  -  Maintenance Wash                 - DISM sfc del
      A3  -  Washing Repair                   - chkdsk cleanmgr DISM sfc del
      A4  - Last Resort Wash                  - chkdsk defrag cleanmgr DISM sfc findstr defender ipconfig wsreset del

     S  - Specific

      S1  -  Antivirus (Auto mode)            - defender
      S2  -  Dignostic RAM                    - mdsched
      S3  -  Maintenance disk c               - chkdsk
      S4  -  Disk Cleanup                     - defrag cleanmgr
      S5  - Start repair W                    - bcdboot
      S6  - Restore system                    - rstrui
      S7  - Reset the ip interface            - ipconfig
      S8  - Reset windows                     - systemreset
      S9  - Reset WS cache                    - wsreset
      S10 - Delete temporary files            - del
      S11 - Update driver sys et COM          - pnpunattend mode
      S12 - Verificaton system + log          - DISM sfc findstr
      S13 - Windows Recovery                  - shutdown.exe /r /o
      USB - Protec USB                        - diskpart

     C  - Cmustomize

      C1  - Check and repair drive C          - chkdsk
      C2  - Disk optimization                 - defrag cleanmgr
      C3  - Repair system                     - DISM sfc findstr
      C4  - Antivirus (Auto mode)             - defender
      C5  - sys and COM driver                - pnpunattend mode
      C6  - Reset the ip interface            - ipconfig
      C7  - Repair boot files                 - bcdboot
      C8  - Reset Windows Store               - wsreset
      C9  - Delete temporary files            - del

     O  - Other

      O1  - Copy protection                   - verify on/off
      O2  - Restart                           - Restart
      O3  - security                          - Security
      O4  - HELP                              - Help
      O5  - COLOR                             - Color

     E  - Exit

      E1  - Exit --------------------         - exit
      E2  - Shutdown ----------------         - shutdown /f

     L  - Link

      L1  - Computer Wash                     - start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private  https://computerwash.wixsite.com/computer-wash

      L2  - Computer Wash Update              - start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private  https://computerwash.wixsite.com/computer-wash/dev

 ----------------------------------------------------------------------------------------------------------------

      == Computer Wash Legend + Algorithm
      ||
      || Security    = Wmic.exe /Namespace|\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash START 00/00/0000", 100, 12
      \/ chkdsk      = echo OR | chkdsk c| /F /R /I
      || defrag      = Start /wait Defrag C| /U /V
      || cleanmgr    = Start /wait Cleanmgr /sagerun|65535
      \/ DISM        = Start /wait DISM.exe /Online /Cleanup-image /Restorehealth
      || sfc         = Start /wait sfc /scannow
      || findstr     = findstr /c|"[SR]" C:\Windows\Logs\CBS\CBS.log
      \/ defender    = start /wait MpCmdRun.exe -SignatureUpdate
      || defender    = start /wait MpCmdRun.exe -Scan -ScanType -BootSectorScan
      || defender    = start /wait MpCmdRun.exe -Scan -ScanType 2
      \/ pnpunattend = Start /wait pnpunattend auditsystem /s /l
      || mode        = Start /wait mode
      || ipconfig    = Start /wait netsh interface ip reset
      \/ ipconfig    = Start /wait netsh winsock reset
      || ipconfig    = Start /wait netsh advfirewall reset
      || ipconfig    = Start /wait ipconfig /release
      \/ ipconfig    = Start /wait ipconfig /flushdns
      || bcdboot     = Start /wait bcdboot c|\Windows
      || wsreset     = Start /wait wsreset
      \/ rstrui      = Start /wait rstrui.exe
      || systemreset = Start /wait systemreset -cleanpc
      || del         = del /S /F /Q %Temp%
      \/ del         = del /S /F /Q C:\Windows\Temp
      || Security    = Wmic.exe /Namespace|\\root\default Path SystemRestore Call CreateRestorePoint "Computer Wash END 00/00/0000", 100, 12
      || Restart     = shutdown /r
      -- End

----------------------------------------------------------------------------------------------------------------

      == USB Algorithm
      ||
      ||
      \/ start diskmgmt
      || diskpart    = echo list disk > "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      || diskpart    = echo list volume >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      \/ diskpart    = echo exit >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      || diskpart    = type LOG.txt
      || choix       = select disk XX
      \/ choix       = select volume XX
      || diskpart    = echo attributes volume set readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt"
      || diskpart    = echo attributes volume set readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      || diskpart    = echo attributes volume clear readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt"
      \/ diskpart    = echo attributes volume clear readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      || diskpart    = echo attributes disk set readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt"
      || diskpart    = echo attributes disk set readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      \/ diskpart    = echo attributes disk clear readonly >> "C:\Users\PASTQU~1\Desktop\LOG.txt"
      || diskpart    = echo attributes disk clear readonly >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      || diskpart    = echo exit >> "C:\Users\PASTQU~1\Desktop\Computer_Wash_DiskPart.txt"
      \/ diskpart    = diskpart /s Computer_Wash_DiskPart.txt >> "C:\Users\PASTQU~1\Desktop\LOG.txt"
      || type LOG.txt
      -- END

----------------------------------------------------------------------------------------------------------------
