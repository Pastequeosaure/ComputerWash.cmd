Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Créer la fenêtre principale
$form = New-Object System.Windows.Forms.Form
$form.Text = "Computer Wash Launcher"
$form.Size = New-Object System.Drawing.Size(700,650)
$form.StartPosition = "CenterScreen"

# Panel scrollable
$panel = New-Object System.Windows.Forms.Panel
$panel.Size = New-Object System.Drawing.Size(660, 550)
$panel.Location = New-Object System.Drawing.Point(10,10)
$panel.AutoScroll = $true
$form.Controls.Add($panel)

$y = 10

# ---- FONCTION POUR CRÉER LES CHECKBOX ----
function New-Check {
    param($text, $posY, $parent)
    $cb = New-Object System.Windows.Forms.CheckBox
    $cb.Text = $text
    $cb.AutoSize = $true
    $cb.Location = New-Object System.Drawing.Point(10, $posY)
    $parent.Controls.Add($cb)
    return $cb
}

# ---- SECTION A (Auto) ----
$labelA = New-Object System.Windows.Forms.Label
$labelA.Text = "Tâches Automatiques (A1–A5) :"
$labelA.AutoSize = $true
$labelA.Location = New-Object System.Drawing.Point(10,$y); $panel.Controls.Add($labelA); $y += 25
$chkAuto = @()
$autoTasks = @(
    "A1 Daily Wash",
    "A2 Maintenance Wash",
    "A3 Washing Repair",
    "A4 Last Resort Wash",
    "A5 Update All App"
)
foreach($t in $autoTasks){ $chkAuto += New-Check $t $y $panel; $y += 25 }

$y += 10
# ---- SECTION S (Spécifiques) ----
$labelS = New-Object System.Windows.Forms.Label
$labelS.Text = "Tâches Spécifiques (S1–S15) :"
$labelS.AutoSize = $true
$labelS.Location = New-Object System.Drawing.Point(10,$y); $panel.Controls.Add($labelS); $y += 25
$chkSpec = @()
$specificTasks = @(
    "S1 Antivirus Malware Scan",
    "S2 Force Windows Update",
    "S3 Full Windows Update Reset",
    "S4 Verification System + Log",
    "S5 Restore System",
    "S6 Restart Windows in Recovery Mode",
    "S7 Start Repair Boot / Startup Windows",
    "S8 Diagnostic RAM",
    "S9 Maintenance Disk C",
    "S10 Disk Cleanup",
    "S11 Delete Temporary Files",
    "S12 Reset the IP Interface",
    "S13 Reset WS Cache",
    "S14 Setup Chrome, Firefox, VLC, Acrobat, 7zip, KeePass",
    "S15 Update All Apps"
)
foreach($t in $specificTasks){ $chkSpec += New-Check $t $y $panel; $y += 25 }

$y += 10
# ---- SECTION T (Menu Only - EXCLUSIF) ----
$labelO = New-Object System.Windows.Forms.Label
$labelO.Text = "Menu Only (Exclusif) :"
$labelO.AutoSize = $true
$labelO.Location = New-Object System.Drawing.Point(10,$y); $panel.Controls.Add($labelO); $y += 25
$chkT1 = New-Check "T1 Computer Wash USB Protection" $y $panel; $y += 25
$chkT2 = New-Check "T2 Computer Wash Auto Ping" $y $panel; $y += 25
$allT = @($chkT1, $chkT2)

$y += 10
# ---- SECTION C (Custom) ----
$labelC = New-Object System.Windows.Forms.Label
$labelC.Text = "Commandes Custom (C1–C55) :"
$labelC.AutoSize = $true
$labelC.Location = New-Object System.Drawing.Point(10,$y); $panel.Controls.Add($labelC); $y += 25
$chkCustom = @()
$customTasks = @(
    "C1 Create Restore Point",
    "C2 Windows KEY + Info System",
    "C3 Chkdsk C: /F /R /I",
    "C4 Defrag C: /U /V",
    "C5 Cleanmgr /sagerun:65535",
    "C6 DISM.exe /Online /Cleanup-image /Restorehealth",
    "C7 Sfc /scannow",
    "C8 Log SFC",
    "C9 Mrt.exe (This may take several hours)",
    "C10 MpCmdRun.exe -SignatureUpdate",
    "C11 MpCmdRun.exe -Scan -ScanType -BootSectorScan",
    "C12 MpCmdRun.exe -Scan -ScanType 2",
    "C13 Pnpunattend auditsystem /s /l",
    "C14 Mode",
    "C15 Mdsched",
    "C16 bcdboot C:\Windows /s C: /f ALL",
    "C17 Wsreset",
    "C18 Rstrui.exe",
    "C19 Winget Upgrade All (Silent)",
    "C20 Winget install Google Chrome",
    "C21 Winget install Mozilla Firefox",
    "C22 Winget install VideoLAN VLC",
    "C23 Winget install Adobe Acrobat Reader",
    "C24 Winget install 7zip",
    "C25 Winget install KeePass",
    "C26 net stop wuauserv",
    "C27 net stop cryptSvc",
    "C28 net stop bits",
    "C29 net stop msiserver",
    "C30 Del User Temp Files",
    "C31 Del Windows Temp Files",
    "C32 rd /s /q SoftwareDistribution",
    "C33 rd /s /q catroot2",
    "C34 Netsh winsock reset",
    "C35 Netsh interface ip reset",
    "C36 Netsh advfirewall reset",
    "C37 Ipconfig /release",
    "C38 Ipconfig /flushdns",
    "C39 netsh winhttp reset proxy",
    "C40 bitsadmin /reset /allusers",
    "C41 Re-registering Windows Update DLLs",
    "C42 net Start wuauserv",
    "C43 net Start cryptSvc",
    "C44 net Start bits",
    "C45 net Start msiserver",
    "C46 UsoClient StartScan",
    "C47 UsoClient StartDownload",
    "C48 UsoClient StartInstall",
    "C49 UsoClient RestartDevice",
    "C50 Shutdown /r (Restart)",
    "C51 Shutdown /r /o (Recovery)",
    "C52 Shutdown /s (Power Off)",
    "C53 Pause",
    "C54 Exit",
    "C55 Start"
)
foreach($i in 0..54){ 
    $cb = New-Check $customTasks[$i] $y $panel; $y += 25
    if($i -in 0, 52, 53, 54){ $cb.Checked = $true }
    $chkCustom += $cb
}

# ========================================================
# FONCTION DE COCHAGE DYNAMIQUE
# ========================================================
function Set-CustomCheck {
    param($codes, $state)
    foreach ($code in $codes) {
        $num = [int]($code.Substring(1))
        $chkCustom[$num-1].Checked = $state
    }
}

# ========================================================
# LOGIQUE D'EXCLUSIVITÉ POUR LES "T"
# ========================================================
foreach ($currentT in $allT) {
    $currentT.Add_CheckedChanged({
        if ($this.Checked) {
            foreach ($cb in ($chkAuto + $chkSpec + $chkCustom)) {
                if ($cb.Text -ne "C55 Start") { $cb.Checked = $false }
            }
            foreach ($otherT in $allT) { if ($otherT -ne $this) { $otherT.Checked = $false } }
        }
    })
}

# Si on coche un A, S ou C -> Décocher T
foreach ($cb in ($chkAuto + $chkSpec + $chkCustom)) {
    $cb.Add_CheckedChanged({
        if ($this.Checked -and ($this.Text -ne "C55 Start")) { foreach ($t in $allT) { $t.Checked = $false } }
    })
}

# ========================================================
# LIAISONS DYNAMIQUES (A/S -> C)
# ========================================================
# A1-A5
$chkAuto[0].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C6","C7") $true } })
$chkAuto[1].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C6","C7","C30","C31") $true } })
$chkAuto[2].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C6","C7","C30","C31","C3","C8","C5") $true } })
$chkAuto[3].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C6","C7","C9","C10","C11","C12","C30","C31","C3","C8","C5","C34","C35","C36","C37","C38","C17","C50") $true } })
$chkAuto[4].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C19") $true } })

# S1-S15
$chkSpec[0].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C9","C10","C11","C12") $true } })
$chkSpec[1].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C46","C47","C48","C49") $true } })
$chkSpec[2].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C26","C27","C28","C29","C32","C33","C34","C39","C40","C41","C42","C43","C44","C45") $true } })
$chkSpec[3].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C6","C7","C8") $true } })
$chkSpec[4].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C18") $true } })
$chkSpec[5].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C51") $true } })
$chkSpec[6].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C16") $true } })
$chkSpec[7].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C15","C50") $true } })
$chkSpec[8].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C3") $true } })
$chkSpec[9].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C5","C30","C31") $true } })
$chkSpec[10].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C30","C31") $true } })
$chkSpec[11].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C34","C35","C36","C37","C38") $true } })
$chkSpec[12].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C17") $true } })
$chkSpec[13].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C20","C21","C22","C23","C24","C25") $true } })
$chkSpec[14].Add_CheckedChanged({ if($this.Checked){ Set-CustomCheck @("C19") $true } })

# ========================================================
# BOUTON LANCER
# ========================================================
$btnRun = New-Object System.Windows.Forms.Button
$btnRun.Text = "Lancer"
$btnRun.Size = New-Object System.Drawing.Size(120,40)
$btnRun.Location = New-Object System.Drawing.Point(10,$y)
$panel.Controls.Add($btnRun)

$btnRun.Add_Click({
    $selection = @()

    # 1. Récupérer les T (Priorité absolue)
    foreach($t in $allT){ if($t.Checked){ $selection += ($t.Text -split " ")[0] }}

    # Si aucun T n'est coché, on traite le reste
    if ($selection.Count -eq 0) {
        
        # 2. On vérifie si une option technique (C2 à C52) est active
        $customActive = $false
        for($i=1; $i -lt 52; $i++){ 
            if($chkCustom[$i].Checked){ $customActive = $true; break }
        }

        # 3. Récupérer A et S seulement si pas de Custom (C)
        if (-not $customActive) {
            for($i=0; $i -lt $chkAuto.Count; $i++){ if($chkAuto[$i].Checked){ $selection += "A$($i+1)" }}
            for($i=0; $i -lt $chkSpec.Count; $i++){ if($chkSpec[$i].Checked){ $selection += "S$($i+1)" }}
        }

        # 4. Logique d'envoi pour les options Custom (C)
        for($i=0; $i -lt $chkCustom.Count; $i++){
            $code = "C$($i+1)"
            $chk = $chkCustom[$i].Checked
            
            # --- LOGIQUE INVERSÉE (C1, C53, C54) ---
            # Si décoché, on envoie le code au Batch
            if ($code -in @("C1", "C53", "C54")) {
                if (-not $chk) { $selection += $code }
            }
            # --- LOGIQUE NORMALE (C55) ---
            elseif ($code -eq "C55") {
                if ($chk) { 
                    $selection += "ArispBypass"
                    $selection += "C55" 
                }
            }
            # --- LOGIQUE NORMALE POUR LE RESTE (C2 à C52) ---
            else {
                if ($chk) { $selection += $code }
            }
        }
    }

    $global:Result = $selection -join ' '
    $form.Close()
})

$form.ShowDialog() | Out-Null
Write-Output $global:Result