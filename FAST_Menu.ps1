Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Créer la fenêtre principale
$form = New-Object System.Windows.Forms.Form
$form.Text = "Computer Wash Launcher"
$form.Size = New-Object System.Drawing.Size(700,700)
$form.StartPosition = "CenterScreen"

# Panel scrollable
$panel = New-Object System.Windows.Forms.Panel
$panel.Size = New-Object System.Drawing.Size(660, 600)
$panel.Location = New-Object System.Drawing.Point(10,10)
$panel.AutoScroll = $true
$form.Controls.Add($panel)

$y = 10

# ---- Tâches Automatiques A1–A5 ----
$labelA = New-Object System.Windows.Forms.Label
$labelA.Text = "Tâches Automatiques (A1–A5) :"
$labelA.AutoSize = $true
$labelA.Location = New-Object System.Drawing.Point(10,[int]$y)
$panel.Controls.Add($labelA)
$y += 25

$autoTasks = @(
    "A1 - Daily system cleaning DISM + SFC",
    "A2 - Daily Wash + temporary file deletion",
    "A3 - Maintenance Wash + Chkdsk + Log SFC + and disk cleanup",
    "A4 - Ultimate cleaning with all available tools = Washing Repair + Antivirus Malware Scan + Reset the IP Interface + Reset WS Cache + reboot",
    "A5 - Automatic update of all installed applications via Winget"
)
$chkAuto = @()
foreach ($i in 0..($autoTasks.Count -1)) {
    $cb = New-Object System.Windows.Forms.CheckBox
    $cb.Text = $autoTasks[$i]
    $cb.AutoSize = $true
    $cb.Location = New-Object System.Drawing.Point(10,[int]$y)
    $panel.Controls.Add($cb)
    $chkAuto += $cb
    $y += 25
}

$y += 10

# ---- Tâches Spécifiques S1–S15 ----
$labelS = New-Object System.Windows.Forms.Label
$labelS.Text = "Tâches Spécifiques (S1–S15) :"
$labelS.AutoSize = $true
$labelS.Location = New-Object System.Drawing.Point(10,[int]$y)
$panel.Controls.Add($labelS)
$y += 25

$specificTasks = @(
    "S1 Antivirus Malware Scan","S2 Force Windows Update","S3 Full Windows Update Reset",
    "S4 System Verification + Log","S5 Restore System","S6 Restart Windows in Recovery Mode",
    "S7 Start Repair Boot","S8 RAM Diagnostic","S9 Maintenance Disk C","S10 Disk Cleanup",
    "S11 Delete Temporary Files","S12 Reset IP Interface","S13 Reset WS Cache",
    "S14 Setup Main Software","S15 Update All Apps"
)
$chkSpec = @()
foreach ($i in 0..($specificTasks.Count -1)) {
    $cb = New-Object System.Windows.Forms.CheckBox
    $cb.Text = $specificTasks[$i]
    $cb.AutoSize = $true
    $cb.Location = New-Object System.Drawing.Point(10,[int]$y)
    $panel.Controls.Add($cb)
    $chkSpec += $cb
    $y += 25
}

$y += 10

# ---- Menu Only O1 (ancien S16) ----
$labelO = New-Object System.Windows.Forms.Label
$labelO.Text = "Menu Only :"
$labelO.AutoSize = $true
$labelO.Location = New-Object System.Drawing.Point(10,[int]$y)
$panel.Controls.Add($labelO)
$y += 25

$chkO1 = New-Object System.Windows.Forms.CheckBox
$chkO1.Text = "O1 - Computer Wash USB Protection (Menu Only)"
$chkO1.AutoSize = $true
$chkO1.Location = New-Object System.Drawing.Point(10,[int]$y)
$panel.Controls.Add($chkO1)
$y += 30

# ---- Commandes Custom C1–C55 ----
$labelC = New-Object System.Windows.Forms.Label
$labelC.Text = "Commandes Custom (C1–C55) :  ((Using the options below may disable the options above.))"
$labelC.AutoSize = $true
$labelC.Location = New-Object System.Drawing.Point(10,[int]$y)
$panel.Controls.Add($labelC)
$y += 25

$customTasks = @(
"C1 Create Restore Point","C2 Windows KEY + Info System","C3 Chkdsk C: /F /R /I","C4 Defrag C: /U /V",
"C5 Cleanmgr /sagerun:65535","C6 DISM.exe /Online /Cleanup-image /Restorehealth","C7 Sfc /scannow","C8 Log SFC",
"C9 Mrt.exe full scan","C10 MpCmdRun.exe -SignatureUpdate","C11 MpCmdRun.exe -Scan -ScanType -BootSectorScan",
"C12 MpCmdRun.exe -Scan -ScanType 2","C13 Pnpunattend auditsystem /s /l","C14 Mode","C15 Mdsched",
"C16 bcdboot C:\Windows /s /f ALL","C17 Wsreset","C18 Rstrui.exe","C19 winget upgrade --all --silent",
"C20 Winget install google.chrome","C21 Winget install Mozilla.Firefox","C22 Winget install VideoLAN.VLC",
"C23 Winget install Adobe.Acrobat.Reader.64-bit","C24 Winget install 7zip.7zip","C25 Winget install DominikReichl.KeePass",
"C26 net stop wuauservStop","C27 net stop cryptSvc","C28 net stop bits","C29 net stop msiserver",
"C30 Del /S /F /Q C:\Users\PASTEQ~1\AppData\Local\Temp","C31 Del /S /F /Q C:\Windows\Temp",
"C32 rd /s /q C:\Windows\SoftwareDistribution","C33 rd /s /q C:\Windows\System32\catroot2","C34 Netsh winsock reset",
"C35 Netsh interface ip reset","C36 Netsh advfirewall reset","C37 Ipconfig /release","C38 Ipconfig /flushdns",
"C39 netsh winhttp reset proxy","C40 bitsadmin /reset /allusers","C41 Re-registering Windows Update DLLs",
"C42 net Start wuauservStart","C43 net Start cryptSvc","C44 net Start bits","C45 net Start msiserver",
"C46 UsoClient StartScan","C47 UsoClient StartDownload","C48 UsoClient StartInstall","C49 UsoClient RestartDevice",
"C50 Shutdown /r","C51 Shutdown /r /o","C52 Shutdown /s","C53 Pause","C54 Exit","C55 Start"
)
$chkCustom = @()
foreach ($i in 0..($customTasks.Count -1)) {
    $cb = New-Object System.Windows.Forms.CheckBox
    $cb.Text = $customTasks[$i]
    $cb.AutoSize = $true
    $cb.Location = New-Object System.Drawing.Point(10,[int]$y)

    # Coche C1, C53, C54, C55 par défaut
    if ($i -in 0, 52, 53, 54) { $cb.Checked = $true }

    $panel.Controls.Add($cb)
    $chkCustom += $cb
    $y += 25
}

# ---- Gestion temps réel O1 exclusif ----
# Si O1 coché → décocher les autres cases
$chkO1.Add_CheckedChanged({
    if ($chkO1.Checked) {
        foreach ($cb in $chkAuto + $chkSpec + $chkCustom) {
            if ($cb.Text -ne "C55 Start") { $cb.Checked = $false }
        }
    }
})

# Si une autre case cochée → décocher O1
foreach ($cb in $chkAuto + $chkSpec + $chkCustom) {
    $cb.Add_CheckedChanged({
        if ($cb.Checked) { $chkO1.Checked = $false }
    })
}

# ---- Bouton Lancer ----
$btnRun = New-Object System.Windows.Forms.Button
$btnRun.Text = "Lancer"
$btnRun.Size = New-Object System.Drawing.Size(120,40)
$btnRun.Location = New-Object System.Drawing.Point(10,$y)
$panel.Controls.Add($btnRun)

$btnRun.Add_Click({
    $selection = @()

    # Ajouter A1â€“A5
    for ($i=0; $i -lt $chkAuto.Count; $i++) {
        if ($chkAuto[$i].Checked) { $selection += "A$($i+1)" }
    }
    # Ajouter S1â€“S15
    for ($i=0; $i -lt $chkSpec.Count; $i++) {
        if ($chkSpec[$i].Checked) { $selection += "S$($i+1)" }
    }
    # Ajouter O1
    if ($chkO1.Checked) { $selection += "O1" }
    # Ajouter C1â€“C55 avec logique spÃ©ciale
    for ($i=0; $i -lt $chkCustom.Count; $i++) {
        $code = "C$($i+1)"
        $checked = $chkCustom[$i].Checked
        switch ($code) {
            "C1"  { if (-not $checked) { $selection += $code }; continue }
            "C53" { if (-not $checked) { $selection += $code }; continue }
            "C54" { if (-not $checked) { $selection += $code }; continue }
            "C55" {
                if ($checked) {
                    $selection += "ArispBypass"
                    $selection += "C55"
                }
                continue
            }
            default { if ($checked) { $selection += $code } }
        }
    }

    if ($selection.Count -eq 0) {
        [System.Windows.Forms.MessageBox]::Show("Veuillez sÃ©lectionner au moins une tÃ¢che.","Erreur")
        return
    }

    $global:Result = $selection -join ' '
    $form.Close()
})

# =======================
# Affichage GUI
# =======================
$form.ShowDialog() | Out-Null

# =======================
# Sortie pour BAT
# =======================
Write-Output $global:Result
