#region Source: Startup.pss
#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
#endregion Import Assemblies

#Define a Param block to use custom parameters in the project
#Param ($CustomParameter)

function Main
{
<#
    .SYNOPSIS
        The Main function starts the project application.
    
    .PARAMETER Commandline
        $Commandline contains the complete argument string passed to the script packager executable.
    
    .NOTES
        Use this function to initialize your script and to call GUI forms.
		
    .NOTES
        To get the console output in the Packager (Forms Engine) use: 
		$ConsoleOutput (Type: System.Collections.ArrayList)
#>
	Param ([String]$Commandline)
	
	#--------------------------------------------------------------------------
	#TODO: Add initialization script here (Load modules and check requirements)
	
	
	#--------------------------------------------------------------------------
	
	if ((Show-MainForm_psf) -eq 'OK')
	{
		
	}
	
	$script:ExitCode = 0 #Set the exit code for the Packager
}



#endregion Source: Startup.pss

#region Source: MainForm.psf
function Show-MainForm_psf
{
	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Design, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$MainForm = New-Object 'System.Windows.Forms.Form'
	$button_outputClear = New-Object 'System.Windows.Forms.Button'
	$menustrip1 = New-Object 'System.Windows.Forms.MenuStrip'
	$groupbox1 = New-Object 'System.Windows.Forms.GroupBox'
	$buttonBrowse2 = New-Object 'System.Windows.Forms.Button'
	$EQBCSFile = New-Object 'System.Windows.Forms.TextBox'
	$buttonBrowseFolder = New-Object 'System.Windows.Forms.Button'
	$buttonBuildSampleTOONSCSV = New-Object 'System.Windows.Forms.Button'
	$labelEQBCSLogFileLocation = New-Object 'System.Windows.Forms.Label'
	$buttonSaveLocationsAndPoll = New-Object 'System.Windows.Forms.Button'
	$ShortcutsFolder = New-Object 'System.Windows.Forms.TextBox'
	$labelShortcutsFolderLocat = New-Object 'System.Windows.Forms.Label'
	$tabcontrol1 = New-Object 'System.Windows.Forms.TabControl'
	$tabpage1 = New-Object 'System.Windows.Forms.TabPage'
	$Seconds = New-Object 'System.Windows.Forms.Label'
	$buttonFlagCheck = New-Object 'System.Windows.Forms.Button'
	$textbox2 = New-Object 'System.Windows.Forms.TextBox'
	$buttonEQProcessMonitor = New-Object 'System.Windows.Forms.Button'
	$buttonCheckForHungKickedPr = New-Object 'System.Windows.Forms.Button'
	$buttonEQCPUAffinity = New-Object 'System.Windows.Forms.Button'
	$buttonKillAllEQWindows = New-Object 'System.Windows.Forms.Button'
	$buttonstartMissingToons = New-Object 'System.Windows.Forms.Button'
	$tabpage2 = New-Object 'System.Windows.Forms.TabPage'
	$combobox1 = New-Object 'System.Windows.Forms.ComboBox'
	$buttonTaskbarGroupingFix = New-Object 'System.Windows.Forms.Button'
	$buttonEQClientiniReadOnly = New-Object 'System.Windows.Forms.Button'
	$labelToonsCsvLocation = New-Object 'System.Windows.Forms.Label'
	$CPU = New-Object 'System.Windows.Forms.GroupBox'
	$labelLogicalProcessors = New-Object 'System.Windows.Forms.Label'
	$labelCores = New-Object 'System.Windows.Forms.Label'
	$labelCPUName = New-Object 'System.Windows.Forms.Label'
	$buttonBrowse = New-Object 'System.Windows.Forms.Button'
	$toonsFile = New-Object 'System.Windows.Forms.TextBox'
	$labelPEQConfigurator = New-Object 'System.Windows.Forms.Label'
	$buttonBuildMQ2AutoLogin = New-Object 'System.Windows.Forms.Button'
	$buttonBuildShortcuts = New-Object 'System.Windows.Forms.Button'
	$buttonBuildAutoHotKey = New-Object 'System.Windows.Forms.Button'
	$groupbox3 = New-Object 'System.Windows.Forms.GroupBox'
	$richtextbox1 = New-Object 'System.Windows.Forms.RichTextBox'
	$folderbrowserdialog1 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$openfiledialog2 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$openfiledialog3 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$openfiledialog4 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$tooltip1 = New-Object 'System.Windows.Forms.ToolTip'
	$folderbrowserdialog2 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$folderbrowserdialog3 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$savefiledialog1 = New-Object 'System.Windows.Forms.SaveFileDialog'
	$folderbrowserdialog4 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$helpToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$aboutToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$folderbrowserdialog5 = New-Object 'System.Windows.Forms.FolderBrowserDialog'
	$openfiledialog5 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$restartMissingToonsToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$flagCheckToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$eQCPUAffinityToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$checkForHungKickedProcessesToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$eQProcessMonitorToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$buildShortcutsToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$buildAutoHotKeyScriptToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$buildMQ2AutoLoginINIToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$buildSampleToonsCSVToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$eQClinitiniReadOnlyToggleToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$taskBarGroupingFixToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$firstRunTextToolStripMenuItem = New-Object 'System.Windows.Forms.ToolStripMenuItem'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	$MainForm_Load = {
		#Disable buttons
		$buttonBuildShortcuts.Enabled = $false
		$buttonBuildAutoHotKey.Enabled = $false
		$buttonBuildMQ2AutoLogin.Enabled = $false
		$buttonstartMissingToons.Enabled = $false
		$buttonEQClientiniReadOnly.Enabled = $false
		$buttonFlagCheck.Enabled = $false
		if (Test-Path ".\PEQConfig.ini") #Get data from INI
		{
			$Script:FirstRun = $false
			$INIcontent = Get-IniContent -filePath .\PEQConfig.ini
			$toonsFile.Text = $INIcontent.Paths.ToonsLocation
			$ShortcutsFolder.Text = $INIcontent.Paths.ShortcutsLocation
			$EQBCSFile.Text = $INIcontent.Paths.EQBCSFileLocation
			if ($INIcontent.Settings.Polltime)
			{
				$textbox2.Text = $INIcontent.Settings.PollTime
			}
			
		}
		else
		{
			$Script:FirstRun = $true
			Update-Display 'This looks like your first time running PEQ Config.  Please do the following:' -color 'Orange'
			Update-Display '1. Create a Toons.Csv File.  Use the Build Sample Toons.Csv to get started'
			Update-Display '2. Fill out the locations where each file/path lives and edit your seconds'
			Update-Display '3. Click Save Locations and Poll Time'
			Update-Display '4. Click Build Shortcuts to create all shortcuts from Toons.Csv'
			Update-Display '5. Click Build AutoHotKey Script and paste into .AHK file'
			Update-Display '6. Click Build MQ2AutoLogin INI and paste into MQ2AutoLogin.ini'
			Update-Display '7. Make sure to Enable EQBCS Logging --> EQBCS2.exe -l EQBCS2Log.txt'
			Update-Display ''
			$FirstRun = @{ "FirstRun" = "$($true)" }
			$NewINIContent = @{ "Settings" = $FirstRun }
			Out-IniFile -InputObject $NewINIContent -FilePath ".\PEQConfig.ini" -Force
		}
		$cores = Get-WmiObject -class Win32_processor | Select-Object systemname, Name, DeviceID, NumberOfCores, NumberOfLogicalProcessors
		$labelCPUName.Text = "CPU: $($cores.Name)"
		$labelCores.Text = "Cores: $($cores.NumberOfCores)"
		$labelLogicalProcessors.Text = "Logical Processors: $($cores.NumberOfLogicalProcessors)"
		#$labelRunningEQInstances.Text = "Running EQ Processes:  $($RunningEQTitles.Count)"
		
	}
	
	$buttonBrowse_Click = {
		$openfiledialog1.Title = "Open Toons.CSV"
		#$openfiledialog1.InitialDirectory = $share
		#$openfiledialog1.DefaultExt = "CSV"
		$openfiledialog1.Filter = "CSV (*.csv)|*.CSV|All files (*.*)|*.*"
		if ($openfiledialog1.ShowDialog() -eq 'OK')
		{
			
			$toonsFile.Text = $openfiledialog1.FileName
			
		}
	}
	
	$toonsFile_TextChanged = {
		button-check
	}
	
	$buttonBuildShortcuts_Click = {
		buttondown
		if ($FirstRun -eq $false)
		{
			$richtextbox1.Clear()
		}
		$ini = @()
		$toons = Import-Csv -Path $toonsFile.Text #Toons CSV location
		foreach ($toon in $toons)
		{
			if ($toon.Login -ne '')
			{
				$ini += [pscustomobject]@{
					Login = $toon.Login.Trim()
					Password = $toon.Password.Trim()
					Server = $toon.Server.Trim()
					Character = $toon.Character.Trim()
					EQPath = $toon.EQPath.Trim()
				}
			}
		}
		
		if (-not ($ShortcutsFolder.Text.EndsWith('\')))
		{
			$ShortcutsFolder.Text = $shortcutsFolder.Text + '\'
		}
		
		Update-Display "Building Shortcuts..." -color 'Orange'
		foreach ($i in $ini)
		{
			$TargetPathExe = $i.EQPath + '\eqgame.exe'
			$Arguments = "patchme /login:$($i.Login)"
			$ShortcutName = $i.Character + '.lnk'
			$WorkingDirectory = $i.EQPath
			#$Description = ''
			
			#$FullLink = $ShortcutsPath + $Shortcut
			$Shell = New-Object -ComObject ("WScript.Shell")
			$ShortCut = $Shell.CreateShortcut($ShortcutsFolder.Text + $ShortcutName)
			$ShortCut.TargetPath = $TargetPathExe #"yourexecutable.exe"
			$ShortCut.Arguments = $Arguments #$Arguments #"-arguementsifrequired"
			$ShortCut.WorkingDirectory = $WorkingDirectory #"c:\your\executable\folder\path";
			#$ShortCut.WindowStyle = 1;
			#$ShortCut.Hotkey = "CTRL+SHIFT+F";
			#$ShortCut.IconLocation = "yourexecutable.exe, 0";
			#$ShortCut.Description = $Description #"Your Custom Shortcut Description";
			$ShortCut.Save()
		}
		Update-Display "Finished Building Shortcuts!" -color 'Green'
		Update-Display "Shortcuts saved to:" -color 'Orange'
		Update-Display "File:///$($ShortcutsFolder.Text)"
		$buttonBuildAutoHotKey.Enabled = $true
		
		buttonup
		
	}
	
	$buttonBuildAutoHotKey_Click = {
		buttondown
		if ($FirstRun -eq $false)
		{
			$richtextbox1.Clear()
		}
		$shortcuts = Get-ChildItem -Path $shortcutsFolder.Text -filter "*.lnk" #New shortcuts folder
		$toons = Import-Csv -Path $toonsFile.Text #Toons CSV location
		$ini = @()
		foreach ($toon in $toons)
		{
			if ($toon.Login -ne '')
			{
				$ini += [pscustomobject]@{
					Login = $toon.Login.Trim()
					Password = $toon.Password.Trim()
					Server = $toon.Server.Trim()
					Character = $toon.Character.Trim()
					EQPath = $toon.EQPath.Trim()
				}
			}
		}
		$lines = @()
		if ($shortcuts) #only run if $shortcuts contains data
		{
			$richtextbox1.Clear()
			#reorder to match toons spreadsheet order
			foreach ($i in $ini)
			{
				foreach ($s in $shortcuts)
				{
					if ($s.BaseName -eq $i.Character)
					{
						$lines += [PSCustomObject] @{
							FullName = $s.FullName
							Name	 = $s.BaseName
						}
					}
				}
			}
			Clear-Host
			#Build AutoHotKey
			Update-Display 'Note: these settings can be customized to your liking' -color 'Yellow'
			Update-Display '----Copy/Paste lines below into AutoHotKey script----' -color 'Orange'
			$list = @()
			$list += '#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.'
			$list += '#Warn  ; Recommended for catching common errors.'
			$list += 'SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.'
			$list += 'SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.'
			$list += ''
			foreach ($l in $lines)
			{
				$list += 'Run ' + $($l.FullName)
				$list += 'WinWaitActive, EverQuest'
				$list += 'WinSetTitle, ' + $($l.Name)
				$list += ''
			}
			Update-Display $list
			Update-Display '----Copy/Paste lines above into AutoHotKey script----' -color 'Orange'
		}
		else
		{
			Update-Display "Shortcuts folder is empty or not found.  Please create EQ shortcuts and try again." -color 'Yellow'
		}
		
		buttonup
	}
	
	$buttonBuildMQ2AutoLogin_Click = {
		buttondown
		if ($FirstRun -eq $false)
		{
			$richtextbox1.Clear()
		}
		$toons = Import-Csv -Path $toonsFile.Text #Toons CSV location
		$ini = @()
		foreach ($toon in $toons)
		{
			if ($toon.Login -ne '')
			{
				$ini += [pscustomobject]@{
					Login = '[' + $toon.Login.Trim() + ']'
					Password = 'Password=' + $toon.Password.Trim()
					Server = 'Server=' + $toon.Server.Trim()
					Character = 'Character=' + $toon.Character.Trim()
					EQPath = 'EQPath=' + $toon.EQPath.Trim()
				}
			}
		}
		Clear-Host
		Update-Display 'Note: these settings can be customized to your liking' -color 'Yellow'
		Update-Display '----Copy/Paste lines below into MQ2AutoLogon.ini----' -color 'Orange'
		Update-Display '[Settings]'
		Update-Display 'UseStationNamesInsteadOfSessions=1'
		Update-Display 'KickActiveCharacter=1'
		Update-Display 'KickActiveTrader=1'
		Update-Display 'Debug=0'
		Update-Display 'UseAuth=0'
		Update-Display 'UseMQ2Login=0'
		Update-Display '[Servers]'
		Update-Display 'peqtgc=[PEQ] The Grand Creation - Omens of War'
		Update-Display ''
		$list2 = @()
		$list2 += ''
		foreach ($i in $ini)
		{
			$list2 += $i.Login
			$list2 += $i.Password
			$list2 += $i.Server
			$list2 += $i.Character
			$list2 += $i.EQPath
			$list2 += ''
		}
		Update-Display $list2
		Update-Display '----Copy/Paste lines above into MQ2AutoLogon.ini----' -color 'Orange'
		
		buttonup
	}
	
	$buttonBuildSampleTOONSCSV_Click = {
		buttondown
		if ($FirstRun -eq $false)
		{
			$richtextbox1.Clear()
		}
		$nums = 1 .. 12
		$ini = @()
		foreach ($n in $nums)
		{
			$n
			if ($n -eq 7)
			{
				$ini += [pscustomobject]@{
					Login	  = ''
					Password  = ''
					Server    = ''
					Character = ''
					EQPath    = ''
				}
			}
			$ini += [pscustomobject]@{
				Login = 'Login' + $n
				Password = 'PassWord!'
				Server = 'peqtgc'
				Character = 'ToonName' + $n
				EQPath = 'C:\Users\user\Desktop\RoF2\Everquest'
			}
			
		}
		$savefiledialog1.Title = "Save Sample TOONS.CSV"
		#$openfiledialog1.InitialDirectory = $share
		#$openfiledialog1.DefaultExt = "CSV"
		$savefiledialog1.Filter = "CSV (*.csv)|*.CSV|All files (*.*)|*.*"
		$savefiledialog1.FileName = 'Toons-Sample.csv'
		if ($savefiledialog1.ShowDialog() -eq 'OK')
		{
			Update-Display "Exporting to CSV..." -color 'Orange'
			$ini | Export-Csv -path $savefiledialog1.FileName -Delimiter "," -NoTypeInformation
			Update-Display "File saved to:" -color 'Orange'
			Update-Display "File:///$($savefiledialog1.Filename)"
			
		}
		else
		{
			Update-Display 'Operation Cancelled' -color 'Red'
		}
		
		buttonup
		
	}
	
	$richtextbox1_LinkClicked = [System.Windows.Forms.LinkClickedEventHandler]{
		#Event Argument: $_ = [System.Windows.Forms.LinkClickedEventArgs]
		Start-Process -FilePath $_.LinkText #make links clickable
		
	}
	
	$buttonEQCPUAffinity_Click = {
		buttondown
		$richtextbox1.Clear()
		$EQRunning = get-process -Name eqgame | Select-Object -ExpandProperty MainWindowTitle
		if ($EQRunning -ne $null)
		{
			Update-Display 'Setting CPU affinity for all running Everquest processes...' -color 'Orange'
			Start-Sleep -Seconds 1
			$process = GET-PROCESS eqgame
			foreach ($i in $process)
			{
				$i.ProcessorAffinity = 255
				if ($i.ProcessorAffinity -eq 255)
				{
					Update-Display "$($i.MainWindowTitle) set to affinity" -color 'Green'
				}
				else
				{
					Update-Display "$($i.MainWindowTitle) not set to affinity" -color 'Red'
				}
			}
			<#
			Start-Sleep -Seconds 1
			$process = GET-PROCESS eqgame
			foreach ($i in $process)
			{
				if ($i.ProcessorAffinity -eq 255)
				{
					Update-Display "$($i.MainWindowTitle) set to affinity" -color 'Green'
				}
				else
				{
					Update-Display "$($i.MainWindowTitle) not set to affinity" -color 'Red'
				}
			}#>
		}
		else
		{
			Update-Display 'Everquest is not running' -color 'Yellow'
		}
		buttonup
	}
	
	$buttonKillAllEQWindows_Click = {
		buttondown
		$richtextbox1.Clear()
		$EQRunning = get-process -Name eqgame | Select-Object -ExpandProperty MainWindowTitle
		if ($EQRunning -ne $null)
		{
			if ((Show-MsgBox -title "Kill all Everquest Processes" -prompt "Are you sure`?" -Icon Exclamation -BoxType YesNo) -eq "Yes")
			{
				Update-Display 'Killing all Everquest processes...' -color 'Orange'
				Start-Sleep -Seconds 1
				taskkill /f /t /im eqgame.exe
			}
			
		}
		else
		{
			Update-Display 'Everquest is not running' -color 'Yellow'
		}
		buttonup
	}
	
	$buttonstartMissingToons_Click = {
		buttondown
		$richtextbox1.Clear()
		$EQNotRunningShortcuts = @()
		$list = @()
		$MissingToons = @()
		$EQRunning = get-process -Name eqgame | Select-Object -ExpandProperty MainWindowTitle
		if ($EQRunning -ne $null)
		{
			$Shortcuts = Get-ChildItem -Path $ShortcutsFolder.Text -File
			foreach ($S in $Shortcuts)
			{
				$list += $S.BaseName
			}
			$EQNotRunning = (Compare-Object -ReferenceObject $EQRunning -DifferenceObject $list).InputObject | Sort-Object
			
			foreach ($Shortcut in $Shortcuts)
			{
				if ($EQNotRunning -contains $Shortcut.BaseName)
				{
					Update-Display "$($Shortcut.BaseName) Not Running" -color 'Yellow'
					$EQNotRunningShortcuts += $Shortcut
					
				}
			}
			#Build AutoHotKey
			$AHKTopLines = @"
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Recommended for catching common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

"@
			
			$MissingToons = foreach ($EQNotRunningShortcut in $EQNotRunningShortcuts)
			{
				'Run ' + $EQNotRunningShortcut.FullName
				'WinWaitActive, EverQuest'
				'WinSetTitle, ' + $EQNotRunningShortcut.Name
				''
			}
			if (-not ($EQNotRunningShortcuts))
			{
				Update-Display 'No missing toons found' -color 'Green'
			}
			else
			{
				$AHKTopLines | Out-File $ENV:TEMP\missing.AHK
				$MissingToons | Out-File $ENV:TEMP\missing.AHK -Append
				Start-Sleep -Seconds 2
				Update-Display 'Re-starting missing toons' -color 'Green'
				Start-Process $ENV:TEMP\missing.AHK
			}
			
		}
		elseif ($EQRunning -eq $null)
		{
			Update-Display 'Everquest is not running' -color 'Yellow'
		}
		else
		{
			Update-Display 'No missing toons found' -color 'Green'
		}
		buttonup
	}
	
	$buttonBrowseFolder_Click = {
		if ($folderbrowserdialog4.ShowDialog() -eq 'OK')
		{
			$ShortcutsFolder.Text = $folderbrowserdialog4.SelectedPath + '\'
		}
	}
	
	$ShortcutsFolder_TextChanged = {
		button-check
		
	}
	
	$buttonSaveLocationsAndPoll_Click = {
		buttondown
		if ($FirstRun -eq $false)
		{
			$richtextbox1.Clear()
		}
		$currentPWD = Convert-path (get-location)
		Update-Display "Saving PEQConfig.ini to:" -color 'Orange'
		Update-Display "File:///$currentPWD"
		Start-Sleep -Seconds 1
		$ToonsLocation = @{ "ToonsLocation" = "$($toonsFile.Text)" }
		$ShortcutsLocation = @{ "ShortcutsLocation" = "$($ShortcutsFolder.Text)" }
		$EQBCSFileLocation = @{ "EQBCSFileLocation" = "$($EQBCSFile.Text)" }
		$PollTime = @{ "PollTime" = "$($textbox2.Text)" }
		$NewINIContent = @{ "Paths" = $ToonsLocation + $ShortcutsLocation + $EQBCSFileLocation; "Settings" = $PollTime }
		Out-IniFile -InputObject $NewINIContent -FilePath ".\PEQConfig.ini" -Force
		buttonup
		
	}
	
	$aboutToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display "PEQ Configurator is designed to ease pre-configuration when working with multiple toons and accounts. A CSV file is needed along with an install of Everquest, MQ2, and AutoHotKey.  All accounts should be pre-created on eqemulator. The CSV creation is a manual step but a sample is supplied to get you started. `n`
PEQ Configurator is provided as-is and without any warranty.  Feel free to modify the code and redistribute as desired.  `n`
Links:`
https://autohotkey.com/download/`
http://www.eqemulator.org/`
http://peqtgc.com`n`
Zuboo" -color 'Orange'
		
		
	}
	
	$buttonEQClientiniReadOnly_Click = {
		buttondown
		$richtextbox1.Clear()
		$file = Get-ItemProperty $combobox1.SelectedItem
		if ($file.IsReadOnly -eq $true)
		{
			Update-Display "Removing read-only attribute from:" -color 'Orange'
			Update-Display "$file"
			Set-ItemProperty $file -name IsReadOnly -value $False
		}
		else
		{
			Update-Display "Setting read-only attribute for:" -color 'Orange'
			Update-Display "$file"
			Set-ItemProperty $file -name IsReadOnly -value $true
		}
		$file = Get-ItemProperty $combobox1.SelectedItem #get item-property and verify
		if ($file.IsReadOnly -eq $true)
		{
			Update-Display "$file is Read-Only" -color 'Yellow'
		}
		else
		{
			Update-Display "$file is not Read-Only" -color 'Green'
		}
		buttonup
		
	}
	
	#region Control Helper Functions
	function Update-ListViewColumnSort
	{
	<#
		.SYNOPSIS
			Sort the ListView's item using the specified column.
		
		.DESCRIPTION
			Sort the ListView's item using the specified column.
			This function uses Add-Type to define a class that sort the items.
			The ListView's Tag property is used to keep track of the sorting.
		
		.PARAMETER ListView
			The ListView control to sort.
		
		.PARAMETER ColumnIndex
			The index of the column to use for sorting.
		
		.PARAMETER SortOrder
			The direction to sort the items. If not specified or set to None, it will toggle.
		
		.EXAMPLE
			Update-ListViewColumnSort -ListView $listview1 -ColumnIndex 0
		
		.NOTES
			Additional information about the function.
	#>
		
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ListView]$ListView,
			[Parameter(Mandatory = $true)]
			[int]$ColumnIndex,
			[System.Windows.Forms.SortOrder]$SortOrder = 'None'
		)
		
		if (($ListView.Items.Count -eq 0) -or ($ColumnIndex -lt 0) -or ($ColumnIndex -ge $ListView.Columns.Count))
		{
			return;
		}
		
		#region Define ListViewItemComparer
		try
		{
			[ListViewItemComparer] | Out-Null
		}
		catch
		{
			Add-Type -ReferencedAssemblies ('System.Windows.Forms') -TypeDefinition @" 
	using System;
	using System.Windows.Forms;
	using System.Collections;
	public class ListViewItemComparer : IComparer
	{
	    public int column;
	    public SortOrder sortOrder;
	    public ListViewItemComparer()
	    {
	        column = 0;
			sortOrder = SortOrder.Ascending;
	    }
	    public ListViewItemComparer(int column, SortOrder sort)
	    {
	        this.column = column;
			sortOrder = sort;
	    }
	    public int Compare(object x, object y)
	    {
			if(column >= ((ListViewItem)x).SubItems.Count)
				return  sortOrder == SortOrder.Ascending ? -1 : 1;
		
			if(column >= ((ListViewItem)y).SubItems.Count)
				return sortOrder == SortOrder.Ascending ? 1 : -1;
		
			if(sortOrder == SortOrder.Ascending)
	        	return String.Compare(((ListViewItem)x).SubItems[column].Text, ((ListViewItem)y).SubItems[column].Text);
			else
				return String.Compare(((ListViewItem)y).SubItems[column].Text, ((ListViewItem)x).SubItems[column].Text);
	    }
	}
"@ | Out-Null
		}
		#endregion
		
		if ($ListView.Tag -is [ListViewItemComparer])
		{
			#Toggle the Sort Order
			if ($SortOrder -eq [System.Windows.Forms.SortOrder]::None)
			{
				if ($ListView.Tag.column -eq $ColumnIndex -and $ListView.Tag.sortOrder -eq 'Ascending')
				{
					$ListView.Tag.sortOrder = 'Descending'
				}
				else
				{
					$ListView.Tag.sortOrder = 'Ascending'
				}
			}
			else
			{
				$ListView.Tag.sortOrder = $SortOrder
			}
			
			$ListView.Tag.column = $ColumnIndex
			$ListView.Sort() #Sort the items
		}
		else
		{
			if ($SortOrder -eq [System.Windows.Forms.SortOrder]::None)
			{
				$SortOrder = [System.Windows.Forms.SortOrder]::Ascending
			}
			
			#Set to Tag because for some reason in PowerShell ListViewItemSorter prop returns null
			$ListView.Tag = New-Object ListViewItemComparer ($ColumnIndex, $SortOrder)
			$ListView.ListViewItemSorter = $ListView.Tag #Automatically sorts
		}
	}
	
	
	function Add-ListViewItem
	{
	<#
		.SYNOPSIS
			Adds the item(s) to the ListView and stores the object in the ListViewItem's Tag property.
	
		.DESCRIPTION
			Adds the item(s) to the ListView and stores the object in the ListViewItem's Tag property.
	
		.PARAMETER ListView
			The ListView control to add the items to.
	
		.PARAMETER Items
			The object or objects you wish to load into the ListView's Items collection.
			
		.PARAMETER  ImageIndex
			The index of a predefined image in the ListView's ImageList.
		
		.PARAMETER  SubItems
			List of strings to add as Subitems.
		
		.PARAMETER Group
			The group to place the item(s) in.
		
		.PARAMETER Clear
			This switch clears the ListView's Items before adding the new item(s).
		
		.EXAMPLE
			Add-ListViewItem -ListView $listview1 -Items "Test" -Group $listview1.Groups[0] -ImageIndex 0 -SubItems "Installed"
	#>
		
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory = $true)]
			[System.Windows.Forms.ListView]$ListView,
			[ValidateNotNull()]
			[Parameter(Mandatory = $true)]
			$Items,
			[int]$ImageIndex = -1,
			[string[]]$SubItems,
			$Group,
			[switch]$Clear)
		
		if ($Clear)
		{
			$ListView.Items.Clear();
		}
		
		$lvGroup = $null
		if ($Group -is [System.Windows.Forms.ListViewGroup])
		{
			$lvGroup = $Group
		}
		elseif ($Group -is [string])
		{
			#$lvGroup = $ListView.Group[$Group] # Case sensitive
			foreach ($groupItem in $ListView.Groups)
			{
				if ($groupItem.Name -eq $Group)
				{
					$lvGroup = $groupItem
					break
				}
			}
			
			if ($null -eq $lvGroup)
			{
				$lvGroup = $ListView.Groups.Add($Group, $Group)
			}
		}
		
		if ($Items -is [Array])
		{
			$ListView.BeginUpdate()
			foreach ($item in $Items)
			{
				$listitem = $ListView.Items.Add($item.ToString(), $ImageIndex)
				#Store the object in the Tag
				$listitem.Tag = $item
				
				if ($null -ne $SubItems)
				{
					$listitem.SubItems.AddRange($SubItems)
				}
				
				if ($null -ne $lvGroup)
				{
					$listitem.Group = $lvGroup
				}
			}
			$ListView.EndUpdate()
		}
		else
		{
			#Add a new item to the ListView
			$listitem = $ListView.Items.Add($Items.ToString(), $ImageIndex)
			#Store the object in the Tag
			$listitem.Tag = $Items
			
			if ($null -ne $SubItems)
			{
				$listitem.SubItems.AddRange($SubItems)
			}
			
			if ($null -ne $lvGroup)
			{
				$listitem.Group = $lvGroup
			}
		}
	}
	
	function Update-ListBox
	{
	<#
		.SYNOPSIS
			This functions helps you load items into a ListBox or CheckedListBox.
		
		.DESCRIPTION
			Use this function to dynamically load items into the ListBox control.
		
		.PARAMETER ListBox
			The ListBox control you want to add items to.
		
		.PARAMETER Items
			The object or objects you wish to load into the ListBox's Items collection.
		
		.PARAMETER DisplayMember
			Indicates the property to display for the items in this control.
			
		.PARAMETER ValueMember
			Indicates the property to use for the value of the control.
		
		.PARAMETER Append
			Adds the item(s) to the ListBox without clearing the Items collection.
		
		.EXAMPLE
			Update-ListBox $ListBox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Update-ListBox $listBox1 "Red" -Append
			Update-ListBox $listBox1 "White" -Append
			Update-ListBox $listBox1 "Blue" -Append
		
		.EXAMPLE
			Update-ListBox $listBox1 (Get-Process) "ProcessName"
		
		.NOTES
			Additional information about the function.
	#>
		
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ListBox]$ListBox,
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			$Items,
			[Parameter(Mandatory = $false)]
			[string]$DisplayMember,
			[Parameter(Mandatory = $false)]
			[string]$ValueMember,
			[switch]$Append
		)
		
		if (-not $Append)
		{
			$ListBox.Items.Clear()
		}
		
		if ($Items -is [System.Windows.Forms.ListBox+ObjectCollection] -or $Items -is [System.Collections.ICollection])
		{
			$ListBox.Items.AddRange($Items)
		}
		elseif ($Items -is [System.Collections.IEnumerable])
		{
			$ListBox.BeginUpdate()
			foreach ($obj in $Items)
			{
				$ListBox.Items.Add($obj)
			}
			$ListBox.EndUpdate()
		}
		else
		{
			$ListBox.Items.Add($Items)
		}
		
		$ListBox.DisplayMember = $DisplayMember
		$ListBox.ValueMember = $ValueMember
	}
	
	function Update-ComboBox
	{
	<#
		.SYNOPSIS
			This functions helps you load items into a ComboBox.
		
		.DESCRIPTION
			Use this function to dynamically load items into the ComboBox control.
		
		.PARAMETER ComboBox
			The ComboBox control you want to add items to.
		
		.PARAMETER Items
			The object or objects you wish to load into the ComboBox's Items collection.
		
		.PARAMETER DisplayMember
			Indicates the property to display for the items in this control.
			
		.PARAMETER ValueMember
			Indicates the property to use for the value of the control.
		
		.PARAMETER Append
			Adds the item(s) to the ComboBox without clearing the Items collection.
		
		.EXAMPLE
			Update-ComboBox $combobox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Update-ComboBox $combobox1 "Red" -Append
			Update-ComboBox $combobox1 "White" -Append
			Update-ComboBox $combobox1 "Blue" -Append
		
		.EXAMPLE
			Update-ComboBox $combobox1 (Get-Process) "ProcessName"
		
		.NOTES
			Additional information about the function.
	#>
		
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ComboBox]$ComboBox,
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			$Items,
			[Parameter(Mandatory = $false)]
			[string]$DisplayMember,
			[Parameter(Mandatory = $false)]
			[string]$ValueMember,
			[switch]$Append
		)
		
		if (-not $Append)
		{
			$ComboBox.Items.Clear()
		}
		
		if ($Items -is [Object[]])
		{
			$ComboBox.Items.AddRange($Items)
		}
		elseif ($Items -is [System.Collections.IEnumerable])
		{
			$ComboBox.BeginUpdate()
			foreach ($obj in $Items)
			{
				$ComboBox.Items.Add($obj)
			}
			$ComboBox.EndUpdate()
		}
		else
		{
			$ComboBox.Items.Add($Items)
		}
		
		$ComboBox.DisplayMember = $DisplayMember
		$ComboBox.ValueMember = $ValueMember
	}
	#endregion
	
	$combobox1_Click = {
		$ini = @()
		$eqclientlist = @()
		$richtextbox1.Clear()
		if ($toonsFile.Text)
		{
			$toons = Import-Csv -Path $toonsFile.Text #Toons CSV location
			foreach ($toon in $toons)
			{
				if ($toon.Login -ne '')
				{
					$ini += [pscustomobject]@{
						Login = $toon.Login.Trim()
						Password = $toon.Password.Trim()
						Server = $toon.Server.Trim()
						Character = $toon.Character.Trim()
						EQPath = $toon.EQPath.Trim()
					}
				}
			}
			$comboData = $ini.EQPath | Select-Object -Unique
			foreach ($c in $comboData)
			{
				$eqclient = $c + '\eqclient.ini'
				$eqclientlist += $eqclient
				$file = Get-ItemProperty $eqclient
				if ($file.IsReadOnly -eq $true)
				{
					Update-Display "$file is Read-Only" -color 'Yellow'
				}
				else
				{
					Update-Display "$file is not Read-Only" -color 'Green'
				}
			}
			Update-ComboBox -ComboBox $combobox1 -Items $eqclientlist
			If ($combobox1.SelectedText -ne "")
			{
				$buttonEQClientiniReadOnly.Enabled = $true
			}
			else
			{
				$buttonEQClientiniReadOnly.Enabled = $false
			}
		}
		else
		{
			Update-Display "There seems to be a problem accessing toons.csv" -color 'Yellow'
			Update-ComboBox -ComboBox $combobox1 -Items ""
			$buttonEQClientiniReadOnly.Enabled = $false
		}
		
	}
	
	$combobox1_SelectedIndexChanged = {
		If ($combobox1.SelectedItem -ne "")
		{
			$buttonEQClientiniReadOnly.Enabled = $true
		}
		else
		{
			$buttonEQClientiniReadOnly.Enabled = $false
		}
		#$tooltip1.InitialDelay = "20" #make tooltip show very fast default is 500ms
		$tooltip1.SetToolTip($combobox1, $combobox1.SelectedItem)
	}
	
	$buttonTaskbarGroupingFix_Click = {
		buttondown
		Start-Sleep -Milliseconds 500
		$richtextbox1.Clear()
		if (Test-Path -Path Registry::HKEY_CLASSES_ROOT\Applications\eqgame.exe)
		{
			$RegValue = Get-ItemProperty -path Registry::HKEY_CLASSES_ROOT\Applications\eqgame.exe -Name IsHostApp
			if ($RegValue.IsHostApp -eq "")
			{
				Update-Display "Registry value IsHostApp already set - Aborting Operation." -color 'Yellow'
			}
			else
			{
				Update-Display "Setting registry value IsHostApp to null" -color 'Orange'
				Set-ItemProperty -path Registry::HKEY_CLASSES_ROOT\Applications\eqgame.exe -Name IsHostApp -Value "" -Type String
			}
			
		}
		else
		{
			Update-Display "HKEY_CLASSES_ROOT\Applications\eqgame.exe not found.  Aborting operation." -color 'Yellow'
		}
		buttonup
		
	}
	
	$buttonCheckForHungKickedPr_Click = {
		buttondown
		$richtextbox1.Clear()
		$Script:hungEQ = get-process -Name eqgame | Where-Object { $_.Responding -eq $false }
		$Script:kickedEQ = get-process -Name eqgame | Where-Object { $_.MainWindowTitle -eq 'EverQuest' }
		#$Script:hungEQ = get-process -Name notepad | Where-Object { $_.Responding -eq $false }
		#$Script:kickedEQ = get-process -Name notepad | Where-Object { $_.MainWindowTitle -eq 'Untitled - Notepad' }
		
		If (($hungEQ) -or ($kickedEQ))
		{
			if ((Show-HungProcess_psf) -eq 'OK')
			{
				
			}
		}
		else
		{
			Update-Display "No hung/kicked Everquest processes found" -color 'Yellow'
		}
		
		buttonup
	}
	
	$buttonEQProcessMonitor_Click = {
		buttondown
		$richtextbox1.Clear()
		$EQRunning = get-process -Name eqgame
		Get-Process -Name powershell | Where-Object { $_.MainWindowTitle -eq 'Hung EQ Process Monitor' } | Stop-Process
		if ($EQRunning -ne $null)
		{
			if ($textbox2.Text -match '^[a-z]*$' -or $textbox2.Text -match ' ')
			{
				$textbox2.Clear()
				Update-Display 'Numbers only and no spaces please' -color 'yellow'
			}
			else
			{
				$timeout = $textbox2.Text
				Update-Display "A new window labeled `'Hung EQ Process Monitor`' will open (minimized).  It will check for hung EQ processes every $timeout seconds." -color 'Orange'
				Start-Process powershell -ArgumentList "-WindowStyle Minimized -command  & { 
`$host.ui.RawUI.WindowTitle = 'Hung EQ Process Monitor'
do {
        `$hungEQ = get-process -Name eqgame | Where-Object {`$_.Responding -eq `$false}
        `$hungTitles = `$hungEQ.MainWindowTitle
        `$hungTitleSelections = `$hungTitles
        if (`$hungEQ)
        {
            Start-Sleep -Seconds $timeout
            Write-Host 'timeout $timeout'           
            `$hungEQ = get-process -Name eqgame | Where-Object {`$_.Responding -eq `$false}
            `$hungTitles = `$hungEQ.MainWindowTitle
            `$hungTitleSelections = `$hungTitles | Out-String
            if (`$hungEQ)
            {               
                [System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms') | Out-Null 
                [System.Windows.Forms.MessageBox]::Show(`$hungTitleSelections , 'Hung EQ Processes' , 'OK', 'Exclamation', 'Button1', 'DefaultDesktopOnly')           
            }
        }
    }
    While (get-process -Name eqgame)
}"
			}
			
			
		}
		else
		{
			Update-Display 'Everquest is not running' -color 'Yellow'
		}
		
		buttonup
		
	}
	
	$buttonFlagCheck_Click = {
		buttondown
		$richtextbox1.Clear()
		$count = ((Get-Content $EQBCSFile.Text | Where-Object { $_ -match 'flag' }) | Select-Object -Unique).count
		$flags = (Get-Content $EQBCSFile.Text | Where-Object { $_ -match 'flag' }) | Select-Object -Unique | Sort-Object
		
		$splittoons = @()
		foreach ($flag in $flags)
		{
			$split = $flag -split '>'
			$splittoons += [PSCustomObject] @{
				Toon = ($split[0] -replace '<', '').Trim()
			}
		}
		
		$reftoons = Get-Process -Name eqgame | Select-Object -ExpandProperty MainWindowTitle
		if ($reftoons)
		{
			$compare = Compare-Object -ReferenceObject ($reftoons.Trim()) -DifferenceObject ($splittoons.Toon) -IncludeEqual
			$missingFlag = $compare | Where-Object { $_.SideIndicator -eq '<=' }
			$gotFlag = $compare | Where-Object { $_.SideIndicator -eq '==' }
			$extraFlag = $compare | Where-Object { $_.SideIndicator -eq '=>' } #toon is likely running on another PC
		}
		Update-Display "Total Flag Count: $count" -color 'Yellow'
		Update-Display ""
		if ($missingFlag)
		{
			Update-Display '**Toons running on this computer who did not receive a flag**:' -color 'Orange'
			Update-Display $missingFlag.InputObject -color 'Yellow'
			Update-Display ""
		}
		if ($gotFlag)
		{
			Update-Display 'Toons running on this computer who received a flag:' -color 'Orange'
			Update-Display $gotFlag.InputObject -color 'Green'
			Update-Display ""
		}
		If ($extraFlag)
		{
			Update-Display 'Toons NOT running on this computer who received a flag:' -color 'Orange'
			Update-Display $extraFlag.InputObject -color 'Cyan'
			Update-Display ""
		}
		Update-Display 'All Flags:' -color 'Orange'
		Update-Display $flags -color 'Green'
		
		
		buttonup
	}
	
	$button_outputClear_Click = {
		buttondown
		$richtextbox1.Clear()
		buttonup
		
	}
	
	$buttonBrowse2_Click = {
		
		if ($openfiledialog5.ShowDialog() -eq 'OK')
		{
			$EQBCSFile.Text = $openfiledialog5.FileName
		}
	}
	
	$restartMissingToonsToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Toons.CSV Location and Shortcuts Folder Location need to be provided to use this feature.  If a toon is missing, this will search toons.csv, compare it to those running, and restart the missing toon.' -color orange
		
	}
	
	$flagCheckToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'BCS Logging is required to use this feature.  Logs are wiped each time EQBCS2 is launched.  To enable logging, add [-l filename] to your EQ2BCS.EXE shortcut - Example: ' -color 'Orange'
		Update-Display ''
		Update-Display 'EQBCS2.exe -l EQBCS2Log.txt' -color 'White'
	}
	
	$eQCPUAffinityToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Forces all EQ processes to use all cores on your PC.' -color 'Orange'
	}
	
	$checkForHungKickedProcessesToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Checks for hung or kicked EQ sessions and allows you to kill only them.  Will also check if a character was kicked out of the game and MQ2 quit.  This usually results in the process name reverting back to EverQuest instead of the toon name.' -color 'Orange'
	}
	
	$eQProcessMonitorToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Opens a separate, minimized PowerShell window that polls EQGame.exe every 30 seconds or specified custom time.  If an EQ process hangs, a popup will report it with the toon(s) that hung.  Lag, slow zoning, and other anomalies can cause false positives.  If this is an issue, please increase the time.  The window will close when all EQ processes are ended.' -color 'Orange'
	}
	
	$buildShortcutsToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Toons.CSV File Location and Shortcuts Folder Location required to use this feature.  This will build all shortcuts based on toon names defined in the Toons.CSV file.' -color 'Orange'
		
	}
	
	$buildAutoHotKeyScriptToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Toons.CSV File Location and Shortcuts Folder Location required to use this feature.  This will build a pre-configured AutoHotKey script which can be pasted into an .AHK file.' -color 'Orange'
	}
	
	$buildMQ2AutoLoginINIToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Toons.CSV File Location required to use this feature.  This will build the contents of an MQ2AutoLogon INI file which can be pasted into the file.  Plain text passwords are required in both the Toons.CSV and the MQAutoLogon.INI file.  Once the INI is saved, passwords can and should be removed from Toons.CSV.' -color 'Orange'
		
	}
	
	$buildSampleToonsCSVToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'A sample Toons.CSV to get you started.  This is required to take full advantage of all of the features within PEQ Configurator.  Once you start adding more toons, a spreadsheet of some kind will make life much easier.  More columns can be added without affecting PEQ Configurator - Just make sure the base columns are always present (save for passwords).' -color 'Orange'
		
	}
	
	$eQClinitiniReadOnlyToggleToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'Toons.CSV File Location required to use this feature.  This will report back the Read-Only status of EQClient.ini and allow you to toggle it on the fly.' -color 'Orange'
		
	}
	
	$taskBarGroupingFixToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'You must be an administrator to use this feature.  Sets registry value to allow EQ Windows to be moved around independently on the taskbar.' -color 'Orange'
		
	}
	
	$EQBCSFile_TextChanged = {
		button-check
		
	}
	
	$firstRunTextToolStripMenuItem_Click = {
		$richtextbox1.Clear()
		Update-Display 'This looks like your first time running PEQ Config.  Please do the following:' -color 'Orange'
		Update-Display '1. Create a Toons.Csv File.  Use the Build Sample Toons.Csv to get started'
		Update-Display '2. Fill out the locations where each file/path lives and edit your seconds'
		Update-Display '3. Click Save Locations and Poll Time'
		Update-Display '4. Click Build Shortcuts to create all shortcuts from Toons.Csv'
		Update-Display '5. Click Build AutoHotKey Script and paste into .AHK file'
		Update-Display '6. Click Build MQ2AutoLogin INI and paste into MQ2AutoLogin.ini'
		Update-Display '7. Make sure to Enable EQBCS Logging --> EQBCS2.exe -l EQBCS2Log.txt'
		Update-Display ''
		
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$MainForm.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:MainForm_EQBCSFile = $EQBCSFile.Text
		$script:MainForm_ShortcutsFolder = $ShortcutsFolder.Text
		$script:MainForm_textbox2 = $textbox2.Text
		$script:MainForm_combobox1 = $combobox1.Text
		$script:MainForm_combobox1_SelectedItem = $combobox1.SelectedItem
		$script:MainForm_toonsFile = $toonsFile.Text
		$script:MainForm_richtextbox1 = $richtextbox1.Text
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$button_outputClear.remove_Click($button_outputClear_Click)
			$buttonBrowse2.remove_Click($buttonBrowse2_Click)
			$EQBCSFile.remove_TextChanged($EQBCSFile_TextChanged)
			$buttonBrowseFolder.remove_Click($buttonBrowseFolder_Click)
			$buttonBuildSampleTOONSCSV.remove_Click($buttonBuildSampleTOONSCSV_Click)
			$buttonSaveLocationsAndPoll.remove_Click($buttonSaveLocationsAndPoll_Click)
			$ShortcutsFolder.remove_TextChanged($ShortcutsFolder_TextChanged)
			$buttonFlagCheck.remove_Click($buttonFlagCheck_Click)
			$buttonEQProcessMonitor.remove_Click($buttonEQProcessMonitor_Click)
			$buttonCheckForHungKickedPr.remove_Click($buttonCheckForHungKickedPr_Click)
			$buttonEQCPUAffinity.remove_Click($buttonEQCPUAffinity_Click)
			$buttonKillAllEQWindows.remove_Click($buttonKillAllEQWindows_Click)
			$buttonstartMissingToons.remove_Click($buttonstartMissingToons_Click)
			$combobox1.remove_SelectedIndexChanged($combobox1_SelectedIndexChanged)
			$combobox1.remove_Click($combobox1_Click)
			$buttonTaskbarGroupingFix.remove_Click($buttonTaskbarGroupingFix_Click)
			$buttonEQClientiniReadOnly.remove_Click($buttonEQClientiniReadOnly_Click)
			$buttonBrowse.remove_Click($buttonBrowse_Click)
			$toonsFile.remove_TextChanged($toonsFile_TextChanged)
			$buttonBuildMQ2AutoLogin.remove_Click($buttonBuildMQ2AutoLogin_Click)
			$buttonBuildShortcuts.remove_Click($buttonBuildShortcuts_Click)
			$buttonBuildAutoHotKey.remove_Click($buttonBuildAutoHotKey_Click)
			$richtextbox1.remove_LinkClicked($richtextbox1_LinkClicked)
			$MainForm.remove_Load($MainForm_Load)
			$aboutToolStripMenuItem.remove_Click($aboutToolStripMenuItem_Click)
			$restartMissingToonsToolStripMenuItem.remove_Click($restartMissingToonsToolStripMenuItem_Click)
			$flagCheckToolStripMenuItem.remove_Click($flagCheckToolStripMenuItem_Click)
			$eQCPUAffinityToolStripMenuItem.remove_Click($eQCPUAffinityToolStripMenuItem_Click)
			$checkForHungKickedProcessesToolStripMenuItem.remove_Click($checkForHungKickedProcessesToolStripMenuItem_Click)
			$eQProcessMonitorToolStripMenuItem.remove_Click($eQProcessMonitorToolStripMenuItem_Click)
			$buildShortcutsToolStripMenuItem.remove_Click($buildShortcutsToolStripMenuItem_Click)
			$buildAutoHotKeyScriptToolStripMenuItem.remove_Click($buildAutoHotKeyScriptToolStripMenuItem_Click)
			$buildMQ2AutoLoginINIToolStripMenuItem.remove_Click($buildMQ2AutoLoginINIToolStripMenuItem_Click)
			$buildSampleToonsCSVToolStripMenuItem.remove_Click($buildSampleToonsCSVToolStripMenuItem_Click)
			$eQClinitiniReadOnlyToggleToolStripMenuItem.remove_Click($eQClinitiniReadOnlyToggleToolStripMenuItem_Click)
			$taskBarGroupingFixToolStripMenuItem.remove_Click($taskBarGroupingFixToolStripMenuItem_Click)
			$firstRunTextToolStripMenuItem.remove_Click($firstRunTextToolStripMenuItem_Click)
			$MainForm.remove_Load($Form_StateCorrection_Load)
			$MainForm.remove_Closing($Form_StoreValues_Closing)
			$MainForm.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$MainForm.SuspendLayout()
	$menustrip1.SuspendLayout()
	$groupbox1.SuspendLayout()
	$tabcontrol1.SuspendLayout()
	$tabpage1.SuspendLayout()
	$tabpage2.SuspendLayout()
	$CPU.SuspendLayout()
	$groupbox3.SuspendLayout()
	#
	# MainForm
	#
	$MainForm.Controls.Add($button_outputClear)
	$MainForm.Controls.Add($menustrip1)
	$MainForm.Controls.Add($groupbox1)
	$MainForm.Controls.Add($groupbox3)
	$MainForm.AutoScaleDimensions = '6, 13'
	$MainForm.AutoScaleMode = 'Font'
	$MainForm.ClientSize = '681, 758'
	$MainForm.FormBorderStyle = 'FixedSingle'
	$MainForm.MainMenuStrip = $menustrip1
	$MainForm.Margin = '4, 4, 4, 4'
	$MainForm.MaximizeBox = $False
	$MainForm.Name = 'MainForm'
	$MainForm.ShowIcon = $False
	$MainForm.StartPosition = 'CenterScreen'
	$MainForm.Text = 'PEQ Configurator'
	$MainForm.add_Load($MainForm_Load)
	#
	# button_outputClear
	#
	#region Binary Data
	$button_outputClear.Image = [System.Convert]::FromBase64String('
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAAACBjSFJN
AAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAEPklEQVRIS62Ve0yVZRzHn/MC
RxKFDkfzjIsn5JJHIS4ZwhmCLolVys4SJsjY2GSVrMSyWmV/qI3JbIFgDYsN8LKMS5el3ORAXA7X
A4XA8XA4XA7IOZOWokViUOfb72mvbla2EL7bZ3v3PM/v+f6e3+9535fdVc4eieREimPSJ2ku7+Um
C0+Iw0un3GSHxItZkfaLx6LxzeGwWznJwnpxamlUkC7Lrjq2BZcK0tCWvwWFL7sXilNLo9wkIb45
b7tde0iGliMKXDgSMkOneEycXrxyEhkrylCUduRFoPF9NzRlB+JkqvSQOL00olPIy95eN9Fw2BtV
765GSYZ8gsacW4pZtK6EeYrLFie6Qc+Wv+k9X57pii/ecIXujEfPRPcue0sJSxKXLF6n0p1O1Hwk
w3hnPOauZ2F2KgsFGqFiH2Oh4pKHk66YsdbTQlp/tc/kDfNu/P5TJoaqUnD+mUBolUpkS6WDZCIR
ly9cVAZJ2zmnrCv1/nMmbRhKE/3QsEGFGY0Glf5++HyP6o+uMvc86oebGPJwOh7OjhY6S9DhSj3w
9UXZ85EY1aZi3rYDN8wvYqAmaIRMQsTlC9erjO0vZQyfermh6zPqw7XX8ZttL+YmY3HTtB7Wy5tg
/C5qmky2iyEL0yuMOb62jCUMardOz01uw52rGsyMJWDWEovpKypMdK7BSIcvhts1s21npbvJaOGi
IMHUqLb+PLwJd8ajcNvyHH7sDcNNYyCsPZ4wNSkw3OoDS0/afMd52YEFm/CA/uoN3VMDYfhlOAjT
hmDMmJ+GTe+DMZ0XRtvlGGz0gVnnD6sh0979lbKYYpaL4f9P+nJ50WRvJGw9HrB2rcXtsVCMNHrB
9kMgNXo5Rto9YGp+EsYGP1wbOmg31EUN6U4L8WT0n1eZTzoSzt/ms5fG9DEwNz2Kq120cbc3rhvV
MF6SU3mC0V8jYEy/kYzU6KteC5vxIPQVnrVksOyvnf4mvrGU4Hd8DaGMU7PNhvqIX01NfrB0KmCs
U2CqX4XhlnCMtAWQgRLGegdYB+KpF6n2+kKHir0a5k6xAnGf+OaPEHLCm+B/NP5ZUH+ZL6ucuLwL
A7VOGGoOxVDjCtgMO9F7QY7Jvh1kokJfbfBM0VHhA6kTW0cxPLmVhANxT7wkPHMPwp8IJtREbFQo
Szc0RM8a6gKoHCHoq/KARR+O8e9T0FcTNv/1x6u1sZEsgdY+RfC/IE+QJ+pM3BN3464KgmcRRGwm
thEvZB9wPDXalWw3t8bB0p2K9lKvW+c+XFW5M4Zl0Dx/2Xgy/M0OIPhnXUbwct8nfgpuwo/4OKEi
eJkiBIHF5L4lOX7yHUnevkS2f6ULi6PxrQTfmGe+kfAleAX45v/aZK67jeZGqwgeoCT8CN4XXgJu
zJ95KX0IL4L/WnmJeVn+0eAHiZvx0nFDfgH4S7RCxEUc45nykz9gU8b+BJxZ4iq0ah74AAAAAElF
TkSuQmCC')
	#endregion
	$button_outputClear.Location = '12, 723'
	$button_outputClear.Name = 'button_outputClear'
	$button_outputClear.Size = '38, 31'
	$button_outputClear.TabIndex = 27
	$tooltip1.SetToolTip($button_outputClear, 'Clear Output')
	$button_outputClear.UseCompatibleTextRendering = $True
	$button_outputClear.UseVisualStyleBackColor = $True
	$button_outputClear.add_Click($button_outputClear_Click)
	#
	# menustrip1
	#
	[void]$menustrip1.Items.Add($helpToolStripMenuItem)
	$menustrip1.Location = '0, 0'
	$menustrip1.Name = 'menustrip1'
	$menustrip1.Size = '681, 24'
	$menustrip1.TabIndex = 21
	$menustrip1.Text = 'menustrip1'
	#
	# groupbox1
	#
	$groupbox1.Controls.Add($buttonBrowse2)
	$groupbox1.Controls.Add($EQBCSFile)
	$groupbox1.Controls.Add($buttonBrowseFolder)
	$groupbox1.Controls.Add($buttonBuildSampleTOONSCSV)
	$groupbox1.Controls.Add($labelEQBCSLogFileLocation)
	$groupbox1.Controls.Add($buttonSaveLocationsAndPoll)
	$groupbox1.Controls.Add($ShortcutsFolder)
	$groupbox1.Controls.Add($labelShortcutsFolderLocat)
	$groupbox1.Controls.Add($tabcontrol1)
	$groupbox1.Controls.Add($labelToonsCsvLocation)
	$groupbox1.Controls.Add($CPU)
	$groupbox1.Controls.Add($buttonBrowse)
	$groupbox1.Controls.Add($toonsFile)
	$groupbox1.Controls.Add($labelPEQConfigurator)
	$groupbox1.Controls.Add($buttonBuildMQ2AutoLogin)
	$groupbox1.Controls.Add($buttonBuildShortcuts)
	$groupbox1.Controls.Add($buttonBuildAutoHotKey)
	$groupbox1.BackColor = 'Control'
	$groupbox1.Location = '11, 27'
	$groupbox1.Name = 'groupbox1'
	$groupbox1.Size = '653, 380'
	$groupbox1.TabIndex = 23
	$groupbox1.TabStop = $False
	$groupbox1.UseCompatibleTextRendering = $True
	#
	# buttonBrowse2
	#
	$buttonBrowse2.Location = '294, 223'
	$buttonBrowse2.Name = 'buttonBrowse2'
	$buttonBrowse2.Size = '30, 23'
	$buttonBrowse2.TabIndex = 1
	$buttonBrowse2.Text = '...'
	$buttonBrowse2.UseCompatibleTextRendering = $True
	$buttonBrowse2.UseVisualStyleBackColor = $True
	$buttonBrowse2.add_Click($buttonBrowse2_Click)
	#
	# EQBCSFile
	#
	$EQBCSFile.AutoCompleteMode = 'SuggestAppend'
	$EQBCSFile.AutoCompleteSource = 'FileSystem'
	$EQBCSFile.BackColor = 'Info'
	$EQBCSFile.Location = '13, 225'
	$EQBCSFile.Name = 'EQBCSFile'
	$EQBCSFile.Size = '275, 20'
	$EQBCSFile.TabIndex = 0
	$EQBCSFile.add_TextChanged($EQBCSFile_TextChanged)
	#
	# buttonBrowseFolder
	#
	$buttonBrowseFolder.Location = '294, 173'
	$buttonBrowseFolder.Name = 'buttonBrowseFolder'
	$buttonBrowseFolder.Size = '30, 23'
	$buttonBrowseFolder.TabIndex = 3
	$buttonBrowseFolder.Text = '...'
	$buttonBrowseFolder.UseCompatibleTextRendering = $True
	$buttonBrowseFolder.UseVisualStyleBackColor = $True
	$buttonBrowseFolder.add_Click($buttonBrowseFolder_Click)
	#
	# buttonBuildSampleTOONSCSV
	#
	$buttonBuildSampleTOONSCSV.Location = '13, 47'
	$buttonBuildSampleTOONSCSV.Name = 'buttonBuildSampleTOONSCSV'
	$buttonBuildSampleTOONSCSV.Size = '274, 56'
	$buttonBuildSampleTOONSCSV.TabIndex = 0
	$buttonBuildSampleTOONSCSV.Text = 'Build Sample Toons.Csv ...'
	$tooltip1.SetToolTip($buttonBuildSampleTOONSCSV, 'Build sample Toons.CSV file')
	$buttonBuildSampleTOONSCSV.UseCompatibleTextRendering = $True
	$buttonBuildSampleTOONSCSV.UseVisualStyleBackColor = $True
	$buttonBuildSampleTOONSCSV.add_Click($buttonBuildSampleTOONSCSV_Click)
	#
	# labelEQBCSLogFileLocation
	#
	$labelEQBCSLogFileLocation.AutoSize = $True
	$labelEQBCSLogFileLocation.Location = '13, 205'
	$labelEQBCSLogFileLocation.Name = 'labelEQBCSLogFileLocation'
	$labelEQBCSLogFileLocation.Size = '133, 17'
	$labelEQBCSLogFileLocation.TabIndex = 21
	$labelEQBCSLogFileLocation.Text = 'EQBCS Log File Location'
	$labelEQBCSLogFileLocation.UseCompatibleTextRendering = $True
	#
	# buttonSaveLocationsAndPoll
	#
	$buttonSaveLocationsAndPoll.Location = '13, 250'
	$buttonSaveLocationsAndPoll.Name = 'buttonSaveLocationsAndPoll'
	$buttonSaveLocationsAndPoll.Size = '275, 38'
	$buttonSaveLocationsAndPoll.TabIndex = 4
	$buttonSaveLocationsAndPoll.Text = 'Save Locations and Poll Time'
	$tooltip1.SetToolTip($buttonSaveLocationsAndPoll, 'Save locations and poll time to PEQConfig.ini
This is located in the same folder as PEQ Configurator')
	$buttonSaveLocationsAndPoll.UseCompatibleTextRendering = $True
	$buttonSaveLocationsAndPoll.UseVisualStyleBackColor = $True
	$buttonSaveLocationsAndPoll.add_Click($buttonSaveLocationsAndPoll_Click)
	#
	# ShortcutsFolder
	#
	$ShortcutsFolder.AutoCompleteMode = 'SuggestAppend'
	$ShortcutsFolder.AutoCompleteSource = 'FileSystemDirectories'
	$ShortcutsFolder.BackColor = 'Info'
	$ShortcutsFolder.Location = '12, 176'
	$ShortcutsFolder.Name = 'ShortcutsFolder'
	$ShortcutsFolder.Size = '276, 20'
	$ShortcutsFolder.TabIndex = 2
	$ShortcutsFolder.add_TextChanged($ShortcutsFolder_TextChanged)
	#
	# labelShortcutsFolderLocat
	#
	$labelShortcutsFolderLocat.AutoSize = $True
	$labelShortcutsFolderLocat.Location = '13, 159'
	$labelShortcutsFolderLocat.Name = 'labelShortcutsFolderLocat'
	$labelShortcutsFolderLocat.Size = '133, 17'
	$labelShortcutsFolderLocat.TabIndex = 18
	$labelShortcutsFolderLocat.Text = 'Shortcuts Folder Location'
	$labelShortcutsFolderLocat.UseCompatibleTextRendering = $True
	#
	# tabcontrol1
	#
	$tabcontrol1.Controls.Add($tabpage1)
	$tabcontrol1.Controls.Add($tabpage2)
	$tabcontrol1.Location = '343, 10'
	$tabcontrol1.Name = 'tabcontrol1'
	$tabcontrol1.SelectedIndex = 0
	$tabcontrol1.Size = '299, 285'
	$tabcontrol1.TabIndex = 1
	#
	# tabpage1
	#
	$tabpage1.Controls.Add($Seconds)
	$tabpage1.Controls.Add($buttonFlagCheck)
	$tabpage1.Controls.Add($textbox2)
	$tabpage1.Controls.Add($buttonEQProcessMonitor)
	$tabpage1.Controls.Add($buttonCheckForHungKickedPr)
	$tabpage1.Controls.Add($buttonEQCPUAffinity)
	$tabpage1.Controls.Add($buttonKillAllEQWindows)
	$tabpage1.Controls.Add($buttonstartMissingToons)
	$tabpage1.BackColor = 'Transparent'
	$tabpage1.Location = '4, 22'
	$tabpage1.Name = 'tabpage1'
	$tabpage1.Padding = '3, 3, 3, 3'
	$tabpage1.Size = '291, 259'
	$tabpage1.TabIndex = 0
	$tabpage1.Text = 'Utilities'
	#
	# Seconds
	#
	$Seconds.AutoSize = $True
	$Seconds.Location = '124, 229'
	$Seconds.Name = 'Seconds'
	$Seconds.Size = '48, 17'
	$Seconds.TabIndex = 7
	$Seconds.Text = 'Seconds'
	$Seconds.TextAlign = 'TopCenter'
	$Seconds.UseCompatibleTextRendering = $True
	#
	# buttonFlagCheck
	#
	#region Binary Data
	$buttonFlagCheck.Image = [System.Convert]::FromBase64String('
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAAAuFJREFU
SEu10utLk2EYBnD/hDSyPMY8pM6ZKTrPJcNKzTQzjZWlQToPE03nYal5LjJFixKzMAXP+aGSykOp
KErtU1CQkWVGmOapzd7DDLp63GYwmuIH3+vb+/Lw/Liv5zZaT1VVLdo7uqH71GS1o/rAaltVjrqx
rEtdd2VgtTq3ny3P7GflaUNsqiRZd2xrGRwexdcf83iRlpjxp6m8Wf2gHOoaKdi8aDCx/qCD+fjl
bwfK3RoU3wr0IV8sJyb4qOQpxVRldh/TUKpQd9Yo1A0lE7or9TM0MgZ2bh6/xUfBxvmBuRgINisc
bFooAXxBh7uBEvFBeduDEvCw4uiAWaEnFr0csSRyhvKEG5iUIDAxXnot/Mvg6BjoyS+g7U1BR7iC
kRwGWxQLVh4DJi5AD6BdbKCyssSUiTHmHK2wFLAPK6d9wMoiwYj9DAP9QyOgPn4C7WQOKmy/BlCX
ngebLwZz4eD/gLUVpnaa4Lu9BRa8bKGK9gabfRLMWX/DQO/LQaxMTIJyMgN1zAVMYpAWKCBA/MbA
jK055j15UJ3yIhMQIDbAMPC0bwA/374H5bgGCAiwtQm2DDx+NoDFN+/IBKSiUAJIjhAgbkvAwhoQ
JdS+wZkN3qDrUQ/mXilAO5AJQpy1QJkO2LQiMw2gjPQAKw0BvdEWtXR2Y2Z4nAC7CUAmSCJbVHJO
u0Xxmi1SEKCAAAW0gPdaZWmBz+uA0AbKCHdSqwh0lIdhoLG9E9MDwwTYo6mIThCRrYhsYdPDgnVH
9LIYHJ48ZbwDM3akIm9bKI+7LTMJgeN0pLth4F5zK6Z7egGeyQc6RCDW/d4ws65Cs2+mu3J/8PcK
db82T/39JgyNKwzr25Gbd+7iSc9z7oDq2ttobXvIHVBxtRL1DY3cAUUlFai9VccdkF9Ygus3arkD
cuSFKC29xh2QJZPjckExd0B6hgyZsjzugBRpBlLTLnEHJEhSkZgk5Q5Yu3z7ASOjv9NFOM+/SScy
AAAAAElFTkSuQmCC')
	#endregion
	$buttonFlagCheck.ImageAlign = 'TopCenter'
	$buttonFlagCheck.Location = '102, 28'
	$buttonFlagCheck.Name = 'buttonFlagCheck'
	$buttonFlagCheck.Size = '88, 81'
	$buttonFlagCheck.TabIndex = 1
	$buttonFlagCheck.Text = 'Flag Check'
	$buttonFlagCheck.TextAlign = 'BottomCenter'
	$tooltip1.SetToolTip($buttonFlagCheck, 'Parses EQBCS log file.  Returns flags and total count.
Make sure to turn on EQBCS logging.
EQBCS2.exe -l EQBCS2Log.txt
**Only one set of flagging per log session**
**Always restart EQBCS for next set of flags**')
	$buttonFlagCheck.UseCompatibleTextRendering = $True
	$buttonFlagCheck.UseVisualStyleBackColor = $True
	$buttonFlagCheck.add_Click($buttonFlagCheck_Click)
	#
	# textbox2
	#
	$textbox2.BackColor = 'Info'
	$textbox2.Location = '124, 206'
	$textbox2.Name = 'textbox2'
	$textbox2.Size = '48, 20'
	$textbox2.TabIndex = 5
	$textbox2.Text = '30'
	$textbox2.TextAlign = 'Center'
	#
	# buttonEQProcessMonitor
	#
	#region Binary Data
	$buttonEQProcessMonitor.Image = [System.Convert]::FromBase64String('
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')
	#endregion
	$buttonEQProcessMonitor.ImageAlign = 'TopCenter'
	$buttonEQProcessMonitor.Location = '102, 122'
	$buttonEQProcessMonitor.Name = 'buttonEQProcessMonitor'
	$buttonEQProcessMonitor.Size = '88, 81'
	$buttonEQProcessMonitor.TabIndex = 4
	$buttonEQProcessMonitor.Text = 'EQ Process Monitor'
	$buttonEQProcessMonitor.TextAlign = 'BottomCenter'
	$tooltip1.SetToolTip($buttonEQProcessMonitor, 'Monitor EQ processes and display a popup if any hang.

Enter custom poll time in seconds below')
	$buttonEQProcessMonitor.UseCompatibleTextRendering = $True
	$buttonEQProcessMonitor.UseVisualStyleBackColor = $True
	$buttonEQProcessMonitor.add_Click($buttonEQProcessMonitor_Click)
	#
	# buttonCheckForHungKickedPr
	#
	#region Binary Data
	$buttonCheckForHungKickedPr.Image = [System.Convert]::FromBase64String('
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAAAmJJREFU
SEvVlE1IFGEcxveznZ1dZ2Znv2yTNDO1oENFa8eoIArCDtGhLyNSa0GkMCu/UNfKg0pfaklWh/CQ
1VWKTp0qKoIg6BCxeGhJDXd2Zmdnd/XpXXnbjgXvXvrBw3t4fvz/zDDzmv4F5dDRQaWtBYlLrZg7
H8Hn/QcGacWOfvjYeObBFWSnh5F9PITckxHok1G827svShU2jPYWZKauIvMwWsjS1DXEIidAFTaM
tggyk73ITPQUkrvfh9iZ40VacC4CY7wTxu2OQrJ3uhFrPFKcBenWZhgj7TCGLsAYvgjjegdyYz2Y
PXuySAuaTpPBbWTwZaQ7T0E/GEZmVy1eeUSFKmzojU2v073NSIUroG2QoW0MILu5FM+djjdUYUOr
2/Feq/RBW0eyPgitKohsTSleOrmPVGFDcbpfqBUBqOV/kqsM4qbZ2kUVNhK80K2G/FBX+wpZWuPH
qMXWRxU2yIIuNUAG+70r0fKnV8ao1dZKFTYSvLgtKXuWVVlGPhoZ/kOUcNdqr6UKG4u8aFdEj56U
PMhHJZkTRIMskKjCTqJE+pYUJOSTEj34yrsXJ6x2M63Z+ekSb6huCfkYJR584PhPtCoOcZfojfPi
8qyzBF84F57ZHdtp9Z8w75buLZB3n5K9iAsC3nL8NK3YSTiFhmSAfP/0J0uFfFD8Mm5ZbA1UYUOR
pH6tunTlDvqdHLmLZjiunypsLLrEgVR4LbStZdC2kJBzqa4cj6z2AaqwkeCEsLqpDPruaug7q2Ds
qcYCeYIxsz1MFXa+O4T6uZA/PV8TQizgTT+1rKqn1V8wmX4B4QlJX+nAb7oAAAAASUVORK5CYII=')
	#endregion
	$buttonCheckForHungKickedPr.ImageAlign = 'TopCenter'
	$buttonCheckForHungKickedPr.Location = '6, 122'
	$buttonCheckForHungKickedPr.Name = 'buttonCheckForHungKickedPr'
	$buttonCheckForHungKickedPr.Size = '88, 81'
	$buttonCheckForHungKickedPr.TabIndex = 3
	$buttonCheckForHungKickedPr.Text = 'Check for Hung/Kicked Processes...'
	$buttonCheckForHungKickedPr.TextAlign = 'BottomCenter'
	$tooltip1.SetToolTip($buttonCheckForHungKickedPr, 'Checks for non-responsive process:  EQGAME')
	$buttonCheckForHungKickedPr.UseCompatibleTextRendering = $True
	$buttonCheckForHungKickedPr.UseVisualStyleBackColor = $True
	$buttonCheckForHungKickedPr.add_Click($buttonCheckForHungKickedPr_Click)
	#
	# buttonEQCPUAffinity
	#
	#region Binary Data
	$buttonEQCPUAffinity.Image = [System.Convert]::FromBase64String('
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
fkoYhiD8B3M9CbLmrJUXAAAAAElFTkSuQmCC')
	#endregion
	$buttonEQCPUAffinity.ImageAlign = 'TopCenter'
	$buttonEQCPUAffinity.Location = '196, 28'
	$buttonEQCPUAffinity.Name = 'buttonEQCPUAffinity'
	$buttonEQCPUAffinity.Size = '88, 81'
	$buttonEQCPUAffinity.TabIndex = 2
	$buttonEQCPUAffinity.Text = 'EQ CPU Affinity
'
	$buttonEQCPUAffinity.TextAlign = 'BottomCenter'
	$tooltip1.SetToolTip($buttonEQCPUAffinity, 'Force EQ to all cores')
	$buttonEQCPUAffinity.UseCompatibleTextRendering = $True
	$buttonEQCPUAffinity.UseVisualStyleBackColor = $True
	$buttonEQCPUAffinity.add_Click($buttonEQCPUAffinity_Click)
	#
	# buttonKillAllEQWindows
	#
	#region Binary Data
	$buttonKillAllEQWindows.Image = [System.Convert]::FromBase64String('
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
hyL6FzjJLhSbIZ5LAAAAAElFTkSuQmCC')
	#endregion
	$buttonKillAllEQWindows.ImageAlign = 'TopCenter'
	$buttonKillAllEQWindows.Location = '196, 122'
	$buttonKillAllEQWindows.Name = 'buttonKillAllEQWindows'
	$buttonKillAllEQWindows.Size = '88, 81'
	$buttonKillAllEQWindows.TabIndex = 6
	$buttonKillAllEQWindows.Text = 'Kill All EQ Windows'
	$buttonKillAllEQWindows.TextAlign = 'BottomCenter'
	$buttonKillAllEQWindows.UseCompatibleTextRendering = $True
	$buttonKillAllEQWindows.UseVisualStyleBackColor = $True
	$buttonKillAllEQWindows.add_Click($buttonKillAllEQWindows_Click)
	#
	# buttonstartMissingToons
	#
	#region Binary Data
	$buttonstartMissingToons.Image = [System.Convert]::FromBase64String('
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
vwAAAABJRU5ErkJggg==')
	#endregion
	$buttonstartMissingToons.ImageAlign = 'TopCenter'
	$buttonstartMissingToons.Location = '6, 28'
	$buttonstartMissingToons.Name = 'buttonstartMissingToons'
	$buttonstartMissingToons.Size = '88, 81'
	$buttonstartMissingToons.TabIndex = 0
	$buttonstartMissingToons.Text = 'Restart Missing Toons'
	$buttonstartMissingToons.TextAlign = 'BottomCenter'
	$tooltip1.SetToolTip($buttonstartMissingToons, 'Checks for any toons not running and starts them')
	$buttonstartMissingToons.UseCompatibleTextRendering = $True
	$buttonstartMissingToons.UseVisualStyleBackColor = $True
	$buttonstartMissingToons.add_Click($buttonstartMissingToons_Click)
	#
	# tabpage2
	#
	$tabpage2.Controls.Add($combobox1)
	$tabpage2.Controls.Add($buttonTaskbarGroupingFix)
	$tabpage2.Controls.Add($buttonEQClientiniReadOnly)
	$tabpage2.BackColor = 'Transparent'
	$tabpage2.Location = '4, 22'
	$tabpage2.Name = 'tabpage2'
	$tabpage2.Padding = '3, 3, 3, 3'
	$tabpage2.Size = '291, 259'
	$tabpage2.TabIndex = 1
	$tabpage2.Text = 'Tweaks'
	#
	# combobox1
	#
	$combobox1.BackColor = 'Info'
	$combobox1.DropDownStyle = 'DropDownList'
	$combobox1.FormattingEnabled = $True
	$combobox1.Location = '8, 9'
	$combobox1.Name = 'combobox1'
	$combobox1.Size = '278, 21'
	$combobox1.TabIndex = 15
	$combobox1.add_SelectedIndexChanged($combobox1_SelectedIndexChanged)
	$combobox1.add_Click($combobox1_Click)
	#
	# buttonTaskbarGroupingFix
	#
	#region Binary Data
	$buttonTaskbarGroupingFix.Image = [System.Convert]::FromBase64String('
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
5poAAAAASUVORK5CYII=')
	#endregion
	$buttonTaskbarGroupingFix.ImageAlign = 'TopCenter'
	$buttonTaskbarGroupingFix.Location = '198, 151'
	$buttonTaskbarGroupingFix.Name = 'buttonTaskbarGroupingFix'
	$buttonTaskbarGroupingFix.Size = '88, 81'
	$buttonTaskbarGroupingFix.TabIndex = 12
	$buttonTaskbarGroupingFix.Text = 'Taskbar Grouping Fix'
	$buttonTaskbarGroupingFix.TextAlign = 'BottomCenter'
	$tooltip1.SetToolTip($buttonTaskbarGroupingFix, 'Turns off taskbar grouping.  Allows independent movement of each window on the taskbar.
Modifies the registry - Must be an administrator.  ')
	$buttonTaskbarGroupingFix.UseCompatibleTextRendering = $True
	$buttonTaskbarGroupingFix.UseVisualStyleBackColor = $True
	$buttonTaskbarGroupingFix.add_Click($buttonTaskbarGroupingFix_Click)
	#
	# buttonEQClientiniReadOnly
	#
	#region Binary Data
	$buttonEQClientiniReadOnly.Image = [System.Convert]::FromBase64String('
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
tQcE/he1KvPnPfHWFAAAAABJRU5ErkJggg==')
	#endregion
	$buttonEQClientiniReadOnly.ImageAlign = 'TopCenter'
	$buttonEQClientiniReadOnly.Location = '198, 44'
	$buttonEQClientiniReadOnly.Name = 'buttonEQClientiniReadOnly'
	$buttonEQClientiniReadOnly.Size = '88, 81'
	$buttonEQClientiniReadOnly.TabIndex = 14
	$buttonEQClientiniReadOnly.Text = 'EQClient.ini ReadOnly Toggle'
	$buttonEQClientiniReadOnly.TextAlign = 'BottomCenter'
	$buttonEQClientiniReadOnly.UseCompatibleTextRendering = $True
	$buttonEQClientiniReadOnly.UseVisualStyleBackColor = $True
	$buttonEQClientiniReadOnly.add_Click($buttonEQClientiniReadOnly_Click)
	#
	# labelToonsCsvLocation
	#
	$labelToonsCsvLocation.AutoSize = $True
	$labelToonsCsvLocation.Location = '12, 113'
	$labelToonsCsvLocation.Name = 'labelToonsCsvLocation'
	$labelToonsCsvLocation.Size = '138, 17'
	$labelToonsCsvLocation.TabIndex = 6
	$labelToonsCsvLocation.Text = 'TOONS.CSV File Location'
	$labelToonsCsvLocation.UseCompatibleTextRendering = $True
	#
	# CPU
	#
	$CPU.Controls.Add($labelLogicalProcessors)
	$CPU.Controls.Add($labelCores)
	$CPU.Controls.Add($labelCPUName)
	$CPU.Location = '347, 294'
	$CPU.Name = 'CPU'
	$CPU.Size = '299, 80'
	$CPU.TabIndex = 20
	$CPU.TabStop = $False
	$CPU.UseCompatibleTextRendering = $True
	#
	# labelLogicalProcessors
	#
	$labelLogicalProcessors.AutoSize = $True
	$labelLogicalProcessors.Location = '7, 54'
	$labelLogicalProcessors.Name = 'labelLogicalProcessors'
	$labelLogicalProcessors.Size = '100, 17'
	$labelLogicalProcessors.TabIndex = 2
	$labelLogicalProcessors.Text = 'Logical Processors'
	$labelLogicalProcessors.UseCompatibleTextRendering = $True
	#
	# labelCores
	#
	$labelCores.AutoSize = $True
	$labelCores.Location = '7, 37'
	$labelCores.Name = 'labelCores'
	$labelCores.Size = '34, 17'
	$labelCores.TabIndex = 1
	$labelCores.Text = 'Cores'
	$labelCores.UseCompatibleTextRendering = $True
	#
	# labelCPUName
	#
	$labelCPUName.AutoSize = $True
	$labelCPUName.Location = '6, 16'
	$labelCPUName.Name = 'labelCPUName'
	$labelCPUName.Size = '61, 17'
	$labelCPUName.TabIndex = 0
	$labelCPUName.Text = 'CPU Name'
	$labelCPUName.UseCompatibleTextRendering = $True
	#
	# buttonBrowse
	#
	$buttonBrowse.Location = '294, 130'
	$buttonBrowse.Name = 'buttonBrowse'
	$buttonBrowse.Size = '30, 23'
	$buttonBrowse.TabIndex = 1
	$buttonBrowse.Text = '...'
	$buttonBrowse.UseCompatibleTextRendering = $True
	$buttonBrowse.UseVisualStyleBackColor = $True
	$buttonBrowse.add_Click($buttonBrowse_Click)
	#
	# toonsFile
	#
	$toonsFile.AutoCompleteMode = 'SuggestAppend'
	$toonsFile.AutoCompleteSource = 'FileSystem'
	$toonsFile.BackColor = 'Info'
	$toonsFile.Location = '12, 130'
	$toonsFile.Name = 'toonsFile'
	$toonsFile.Size = '276, 20'
	$toonsFile.TabIndex = 0
	$toonsFile.add_TextChanged($toonsFile_TextChanged)
	#
	# labelPEQConfigurator
	#
	$labelPEQConfigurator.AutoSize = $True
	$labelPEQConfigurator.Font = 'Cooper Black, 18pt'
	$labelPEQConfigurator.ForeColor = 'ControlText'
	$labelPEQConfigurator.Location = '11, 10'
	$labelPEQConfigurator.Name = 'labelPEQConfigurator'
	$labelPEQConfigurator.Size = '234, 34'
	$labelPEQConfigurator.TabIndex = 12
	$labelPEQConfigurator.Text = 'PEQ Configurator'
	$labelPEQConfigurator.UseCompatibleTextRendering = $True
	#
	# buttonBuildMQ2AutoLogin
	#
	$buttonBuildMQ2AutoLogin.Location = '199, 309'
	$buttonBuildMQ2AutoLogin.Name = 'buttonBuildMQ2AutoLogin'
	$buttonBuildMQ2AutoLogin.Size = '88, 56'
	$buttonBuildMQ2AutoLogin.TabIndex = 7
	$buttonBuildMQ2AutoLogin.Text = 'Build MQ2AutoLogin INI'
	$tooltip1.SetToolTip($buttonBuildMQ2AutoLogin, 'Build MQ2AutoLogin.ini content
Copy and paste into MQ2AutoLogin.ini file')
	$buttonBuildMQ2AutoLogin.UseCompatibleTextRendering = $True
	$buttonBuildMQ2AutoLogin.UseVisualStyleBackColor = $True
	$buttonBuildMQ2AutoLogin.add_Click($buttonBuildMQ2AutoLogin_Click)
	#
	# buttonBuildShortcuts
	#
	$buttonBuildShortcuts.Location = '11, 309'
	$buttonBuildShortcuts.Name = 'buttonBuildShortcuts'
	$buttonBuildShortcuts.Size = '88, 56'
	$buttonBuildShortcuts.TabIndex = 5
	$buttonBuildShortcuts.Text = 'Build Shortcuts...'
	$tooltip1.SetToolTip($buttonBuildShortcuts, 'Build and save all shortcuts defined in Toons.Csv
Overwrites any previous shortcuts!')
	$buttonBuildShortcuts.UseCompatibleTextRendering = $True
	$buttonBuildShortcuts.UseVisualStyleBackColor = $True
	$buttonBuildShortcuts.add_Click($buttonBuildShortcuts_Click)
	#
	# buttonBuildAutoHotKey
	#
	$buttonBuildAutoHotKey.Location = '105, 309'
	$buttonBuildAutoHotKey.Name = 'buttonBuildAutoHotKey'
	$buttonBuildAutoHotKey.Size = '88, 56'
	$buttonBuildAutoHotKey.TabIndex = 6
	$buttonBuildAutoHotKey.Text = 'Build AutoHotKey Script'
	$tooltip1.SetToolTip($buttonBuildAutoHotKey, 'Build AutoHotKey Script
Copy and paste into .AHK file')
	$buttonBuildAutoHotKey.UseCompatibleTextRendering = $True
	$buttonBuildAutoHotKey.UseVisualStyleBackColor = $True
	$buttonBuildAutoHotKey.add_Click($buttonBuildAutoHotKey_Click)
	#
	# groupbox3
	#
	$groupbox3.Controls.Add($richtextbox1)
	$groupbox3.Location = '12, 413'
	$groupbox3.Name = 'groupbox3'
	$groupbox3.Size = '652, 304'
	$groupbox3.TabIndex = 28
	$groupbox3.TabStop = $False
	$groupbox3.UseCompatibleTextRendering = $True
	#
	# richtextbox1
	#
	$richtextbox1.BackColor = '1, 36, 86'
	$richtextbox1.Font = 'Consolas, 11pt'
	$richtextbox1.Location = '10, 12'
	$richtextbox1.Name = 'richtextbox1'
	$richtextbox1.ReadOnly = $True
	$richtextbox1.Size = '631, 286'
	$richtextbox1.TabIndex = 8
	$richtextbox1.Text = ''
	$richtextbox1.add_LinkClicked($richtextbox1_LinkClicked)
	#
	# folderbrowserdialog1
	#
	#
	# openfiledialog1
	#
	$openfiledialog1.DefaultExt = 'txt'
	$openfiledialog1.Filter = 'Text File (.txt)|*.txt|All Files|*.*'
	$openfiledialog1.ShowHelp = $True
	#
	# openfiledialog2
	#
	$openfiledialog2.DefaultExt = 'txt'
	$openfiledialog2.Filter = 'Text File (.txt)|*.txt|All Files|*.*'
	$openfiledialog2.ShowHelp = $True
	#
	# openfiledialog3
	#
	$openfiledialog3.DefaultExt = 'txt'
	$openfiledialog3.Filter = 'Text File (.txt)|*.txt|All Files|*.*'
	$openfiledialog3.ShowHelp = $True
	#
	# openfiledialog4
	#
	$openfiledialog4.DefaultExt = 'txt'
	$openfiledialog4.Filter = 'Text File (.txt)|*.txt|All Files|*.*'
	$openfiledialog4.ShowHelp = $True
	#
	# tooltip1
	#
	#
	# folderbrowserdialog2
	#
	#
	# folderbrowserdialog3
	#
	#
	# savefiledialog1
	#
	#
	# folderbrowserdialog4
	#
	#
	# helpToolStripMenuItem
	#
	[void]$helpToolStripMenuItem.DropDownItems.Add($aboutToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($restartMissingToonsToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($flagCheckToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($eQCPUAffinityToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($checkForHungKickedProcessesToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($eQProcessMonitorToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($buildShortcutsToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($buildAutoHotKeyScriptToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($buildMQ2AutoLoginINIToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($buildSampleToonsCSVToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($eQClinitiniReadOnlyToggleToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($taskBarGroupingFixToolStripMenuItem)
	[void]$helpToolStripMenuItem.DropDownItems.Add($firstRunTextToolStripMenuItem)
	$helpToolStripMenuItem.Name = 'helpToolStripMenuItem'
	$helpToolStripMenuItem.Size = '44, 20'
	$helpToolStripMenuItem.Text = 'Help'
	#
	# aboutToolStripMenuItem
	#
	$aboutToolStripMenuItem.Name = 'aboutToolStripMenuItem'
	$aboutToolStripMenuItem.Size = '252, 22'
	$aboutToolStripMenuItem.Text = 'About'
	$aboutToolStripMenuItem.add_Click($aboutToolStripMenuItem_Click)
	#
	# folderbrowserdialog5
	#
	#
	# openfiledialog5
	#
	$openfiledialog5.DefaultExt = 'txt'
	$openfiledialog5.Filter = 'Text File (.txt)|*.txt|All Files|*.*'
	$openfiledialog5.ShowHelp = $True
	#
	# restartMissingToonsToolStripMenuItem
	#
	$restartMissingToonsToolStripMenuItem.Name = 'restartMissingToonsToolStripMenuItem'
	$restartMissingToonsToolStripMenuItem.Size = '252, 22'
	$restartMissingToonsToolStripMenuItem.Text = 'Restart Missing Toons'
	$restartMissingToonsToolStripMenuItem.add_Click($restartMissingToonsToolStripMenuItem_Click)
	#
	# flagCheckToolStripMenuItem
	#
	$flagCheckToolStripMenuItem.Name = 'flagCheckToolStripMenuItem'
	$flagCheckToolStripMenuItem.Size = '252, 22'
	$flagCheckToolStripMenuItem.Text = 'Flag Check'
	$flagCheckToolStripMenuItem.add_Click($flagCheckToolStripMenuItem_Click)
	#
	# eQCPUAffinityToolStripMenuItem
	#
	$eQCPUAffinityToolStripMenuItem.Name = 'eQCPUAffinityToolStripMenuItem'
	$eQCPUAffinityToolStripMenuItem.Size = '252, 22'
	$eQCPUAffinityToolStripMenuItem.Text = 'EQ CPU Affinity'
	$eQCPUAffinityToolStripMenuItem.add_Click($eQCPUAffinityToolStripMenuItem_Click)
	#
	# checkForHungKickedProcessesToolStripMenuItem
	#
	$checkForHungKickedProcessesToolStripMenuItem.Name = 'checkForHungKickedProcessesToolStripMenuItem'
	$checkForHungKickedProcessesToolStripMenuItem.Size = '252, 22'
	$checkForHungKickedProcessesToolStripMenuItem.Text = 'Check for Hung/Kicked Processes'
	$checkForHungKickedProcessesToolStripMenuItem.add_Click($checkForHungKickedProcessesToolStripMenuItem_Click)
	#
	# eQProcessMonitorToolStripMenuItem
	#
	$eQProcessMonitorToolStripMenuItem.Name = 'eQProcessMonitorToolStripMenuItem'
	$eQProcessMonitorToolStripMenuItem.Size = '252, 22'
	$eQProcessMonitorToolStripMenuItem.Text = 'EQ Process Monitor'
	$eQProcessMonitorToolStripMenuItem.add_Click($eQProcessMonitorToolStripMenuItem_Click)
	#
	# buildShortcutsToolStripMenuItem
	#
	$buildShortcutsToolStripMenuItem.Name = 'buildShortcutsToolStripMenuItem'
	$buildShortcutsToolStripMenuItem.Size = '252, 22'
	$buildShortcutsToolStripMenuItem.Text = 'Build Shortcuts...'
	$buildShortcutsToolStripMenuItem.add_Click($buildShortcutsToolStripMenuItem_Click)
	#
	# buildAutoHotKeyScriptToolStripMenuItem
	#
	$buildAutoHotKeyScriptToolStripMenuItem.Name = 'buildAutoHotKeyScriptToolStripMenuItem'
	$buildAutoHotKeyScriptToolStripMenuItem.Size = '252, 22'
	$buildAutoHotKeyScriptToolStripMenuItem.Text = 'Build AutoHotKey Script'
	$buildAutoHotKeyScriptToolStripMenuItem.add_Click($buildAutoHotKeyScriptToolStripMenuItem_Click)
	#
	# buildMQ2AutoLoginINIToolStripMenuItem
	#
	$buildMQ2AutoLoginINIToolStripMenuItem.Name = 'buildMQ2AutoLoginINIToolStripMenuItem'
	$buildMQ2AutoLoginINIToolStripMenuItem.Size = '252, 22'
	$buildMQ2AutoLoginINIToolStripMenuItem.Text = 'Build MQ2AutoLogin INI'
	$buildMQ2AutoLoginINIToolStripMenuItem.add_Click($buildMQ2AutoLoginINIToolStripMenuItem_Click)
	#
	# buildSampleToonsCSVToolStripMenuItem
	#
	$buildSampleToonsCSVToolStripMenuItem.Name = 'buildSampleToonsCSVToolStripMenuItem'
	$buildSampleToonsCSVToolStripMenuItem.Size = '252, 22'
	$buildSampleToonsCSVToolStripMenuItem.Text = 'Build Sample Toons.CSV...'
	$buildSampleToonsCSVToolStripMenuItem.add_Click($buildSampleToonsCSVToolStripMenuItem_Click)
	#
	# eQClinitiniReadOnlyToggleToolStripMenuItem
	#
	$eQClinitiniReadOnlyToggleToolStripMenuItem.Name = 'eQClinitiniReadOnlyToggleToolStripMenuItem'
	$eQClinitiniReadOnlyToggleToolStripMenuItem.Size = '252, 22'
	$eQClinitiniReadOnlyToggleToolStripMenuItem.Text = 'EQClinit.ini ReadOnly Toggle'
	$eQClinitiniReadOnlyToggleToolStripMenuItem.add_Click($eQClinitiniReadOnlyToggleToolStripMenuItem_Click)
	#
	# taskBarGroupingFixToolStripMenuItem
	#
	$taskBarGroupingFixToolStripMenuItem.Name = 'taskBarGroupingFixToolStripMenuItem'
	$taskBarGroupingFixToolStripMenuItem.Size = '252, 22'
	$taskBarGroupingFixToolStripMenuItem.Text = 'TaskBar Grouping Fix'
	$taskBarGroupingFixToolStripMenuItem.add_Click($taskBarGroupingFixToolStripMenuItem_Click)
	#
	# firstRunTextToolStripMenuItem
	#
	$firstRunTextToolStripMenuItem.Name = 'firstRunTextToolStripMenuItem'
	$firstRunTextToolStripMenuItem.Size = '252, 22'
	$firstRunTextToolStripMenuItem.Text = 'First Run Text'
	$firstRunTextToolStripMenuItem.add_Click($firstRunTextToolStripMenuItem_Click)
	$groupbox3.ResumeLayout()
	$CPU.ResumeLayout()
	$tabpage2.ResumeLayout()
	$tabpage1.ResumeLayout()
	$tabcontrol1.ResumeLayout()
	$groupbox1.ResumeLayout()
	$menustrip1.ResumeLayout()
	$MainForm.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $MainForm.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$MainForm.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$MainForm.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$MainForm.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $MainForm.ShowDialog()

}
#endregion Source: MainForm.psf

#region Source: Globals.ps1
	#--------------------------------------------
	# Declare Global Variables and Functions here
	#--------------------------------------------
	
	
	#Sample function that provides the location of the script
	function Get-ScriptDirectory
	{
	<#
		.SYNOPSIS
			Get-ScriptDirectory returns the proper location of the script.
	
		.OUTPUTS
			System.String
		
		.NOTES
			Returns the correct path within a packaged executable.
	#>
		[OutputType([string])]
		param ()
		if ($null -ne $hostinvocation)
		{
			Split-Path $hostinvocation.MyCommand.path
		}
		else
		{
			Split-Path $script:MyInvocation.MyCommand.Path
		}
	}
	
	#Sample variable that provides the location of the script
	[string]$ScriptDirectory = Get-ScriptDirectory
	
	#region buttonup
	function buttonup
	{
		$this.Cursor = 'Default'
		$this.Enabled = $true
	}
	#endregion buttonup
	
	#region buttondown
	function buttondown
	{
		$this.Cursor = 'WaitCursor'
		$this.Enabled = $false
	}
	#endregion buttondown
	
	#region Update-Display
	function Global:Update-Display
	{
		param ($ResultToDisplay,
			$color = '238, 237, 240')
		
		$ResultToDisplay = ($ResultToDisplay | Out-String).replace($null, " ")
		
		$richtextbox1.SelectionColor = $color
		$richtextbox1.appendText($ResultToDisplay)
		#$richtextbox_output.appendText("`n")
	}
	#endregion Update-Display
	
	#region Get-IniContent
	function Get-IniContent ($filePath)
	{
		$ini = @{ }
		switch -regex -file $FilePath
		{
			"^\[(.+)\]" # Section
			{
				$section = $matches[1]
				$ini[$section] = @{ }
				$CommentCount = 0
			}
			"^(;.*)$" # Comment
			{
				$value = $matches[1]
				$CommentCount = $CommentCount + 1
				$name = "Comment" + $CommentCount
				$ini[$section][$name] = $value
			}
			"(.+?)\s*=(.*)" # Key
			{
				$name, $value = $matches[1 .. 2]
				$ini[$section][$name] = $value
			}
		}
		return $ini
	}
	#endregion Get-IniContent
	
	#region Out-IniFile
	Function Out-IniFile
	{
	    <#  
	    .Synopsis  
	        Write hash content to INI file  
	          
	    .Description  
	        Write hash content to INI file  
	          
	    .Notes  
	        Author        : Oliver Lipkau <oliver@lipkau.net>  
	        Blog        : http://oliver.lipkau.net/blog/  
	        Source        : https://github.com/lipkau/PsIni 
	                      http://gallery.technet.microsoft.com/scriptcenter/ea40c1ef-c856-434b-b8fb-ebd7a76e8d91 
	        Version        : 1.0 - 2010/03/12 - Initial release  
	                      1.1 - 2012/04/19 - Bugfix/Added example to help (Thx Ingmar Verheij)  
	                      1.2 - 2014/12/11 - Improved handling for missing output file (Thx SLDR) 
	          
	        #Requires -Version 2.0  
	          
	    .Inputs  
	        System.String  
	        System.Collections.Hashtable  
	          
	    .Outputs  
	        System.IO.FileSystemInfo  
	          
	    .Parameter Append  
	        Adds the output to the end of an existing file, instead of replacing the file contents.  
	          
	    .Parameter InputObject  
	        Specifies the Hashtable to be written to the file. Enter a variable that contains the objects or type a command or expression that gets the objects.  
	  
	    .Parameter FilePath  
	        Specifies the path to the output file.  
	       
	     .Parameter Encoding  
	        Specifies the type of character encoding used in the file. Valid values are "Unicode", "UTF7",  
	         "UTF8", "UTF32", "ASCII", "BigEndianUnicode", "Default", and "OEM". "Unicode" is the default.  
	          
	        "Default" uses the encoding of the system's current ANSI code page.   
	          
	        "OEM" uses the current original equipment manufacturer code page identifier for the operating   
	        system.  
	       
	     .Parameter Force  
	        Allows the cmdlet to overwrite an existing read-only file. Even using the Force parameter, the cmdlet cannot override security restrictions.  
	          
	     .Parameter PassThru  
	        Passes an object representing the location to the pipeline. By default, this cmdlet does not generate any output.  
	                  
	    .Example  
	        Out-IniFile $IniVar "C:\myinifile.ini"  
	        -----------  
	        Description  
	        Saves the content of the $IniVar Hashtable to the INI File c:\myinifile.ini  
	          
	    .Example  
	        $IniVar | Out-IniFile "C:\myinifile.ini" -Force  
	        -----------  
	        Description  
	        Saves the content of the $IniVar Hashtable to the INI File c:\myinifile.ini and overwrites the file if it is already present  
	          
	    .Example  
	        $file = Out-IniFile $IniVar "C:\myinifile.ini" -PassThru  
	        -----------  
	        Description  
	        Saves the content of the $IniVar Hashtable to the INI File c:\myinifile.ini and saves the file into $file  
	  
	    .Example  
	        $Category1 = @{"Key1"="Value1";"Key2"="Value2"}  
	    $Category2 = @{"Key1"="Value1";"Key2"="Value2"}  
	    $NewINIContent = @{"Category1"=$Category1;"Category2"=$Category2}  
	    Out-IniFile -InputObject $NewINIContent -FilePath "C:\MyNewFile.INI"  
	        -----------  
	        Description  
	        Creating a custom Hashtable and saving it to C:\MyNewFile.INI  
	    .Link  
	        Get-IniContent  
	    #>	
		
		[CmdletBinding()]
		Param (
			[switch]$Append,
			[ValidateSet("Unicode", "UTF7", "UTF8", "UTF32", "ASCII", "BigEndianUnicode", "Default", "OEM")]
			[Parameter()]
			[string]$Encoding = "Unicode",
			[ValidateNotNullOrEmpty()]
			[ValidatePattern('^([a-zA-Z]\:)?.+\.ini$')]
			[Parameter(Mandatory = $True)]
			[string]$FilePath,
			[switch]$Force,
			[ValidateNotNullOrEmpty()]
			[Parameter(ValueFromPipeline = $True, Mandatory = $True)]
			[Hashtable]$InputObject,
			[switch]$Passthru
		)
		
		Begin
		{ Write-Verbose "$($MyInvocation.MyCommand.Name):: Function started" }
		
		Process
		{
			Write-Verbose "$($MyInvocation.MyCommand.Name):: Writing to file: $Filepath"
			
			if ($append) { $outfile = Get-Item $FilePath }
			else { $outFile = New-Item -ItemType file -Path $Filepath -Force:$Force }
			if (!($outFile)) { Throw "Could not create File" }
			foreach ($i in $InputObject.keys)
			{
				if (!($($InputObject[$i].GetType().Name) -eq "Hashtable"))
				{
					#No Sections  
					Write-Verbose "$($MyInvocation.MyCommand.Name):: Writing key: $i"
					Add-Content -Path $outFile -Value "$i=$($InputObject[$i])" -Encoding $Encoding
				}
				else
				{
					#Sections  
					Write-Verbose "$($MyInvocation.MyCommand.Name):: Writing Section: [$i]"
					Add-Content -Path $outFile -Value "[$i]" -Encoding $Encoding
					Foreach ($j in $($InputObject[$i].keys | Sort-Object))
					{
						if ($j -match "^Comment[\d]+")
						{
							Write-Verbose "$($MyInvocation.MyCommand.Name):: Writing comment: $j"
							Add-Content -Path $outFile -Value "$($InputObject[$i][$j])" -Encoding $Encoding
						}
						else
						{
							Write-Verbose "$($MyInvocation.MyCommand.Name):: Writing key: $j"
							Add-Content -Path $outFile -Value "$j=$($InputObject[$i][$j])" -Encoding $Encoding
						}
						
					}
					Add-Content -Path $outFile -Value "" -Encoding $Encoding
				}
			}
			Write-Verbose "$($MyInvocation.MyCommand.Name):: Finished Writing to file: $path"
			if ($PassThru) { Return $outFile }
		}
		
		End
		{ Write-Verbose "$($MyInvocation.MyCommand.Name):: Function ended" }
	}
	#endregion Out-IniFile
	
	#region button-check
	function button-check
	{
		if (($toonsFile.Text -ne '') -and ($ShortcutsFolder.Text -ne ''))
		{
			$buttonBuildShortcuts.Enabled = $true
			$buttonBuildAutoHotKey.Enabled = $true
			$buttonBuildMQ2AutoLogin.Enabled = $true
			$buttonStartMissingToons.Enabled = $true
		}
		elseif (($toonsFile.Text -ne '') -and ($ShortcutsFolder.Text -eq ''))
		{
			$buttonBuildShortcuts.Enabled = $false
			$buttonBuildAutoHotKey.Enabled = $false
			$buttonBuildMQ2AutoLogin.Enabled = $true
			$buttonStartMissingToons.Enabled = $false
		}
		elseif (($toonsFile.Text -eq '') -and ($ShortcutsFolder.Text -ne ''))
		{
			$buttonBuildShortcuts.Enabled = $false
			$buttonBuildAutoHotKey.Enabled = $false
			$buttonBuildMQ2AutoLogin.Enabled = $false
			$buttonStartMissingToons.Enabled = $true
		}
		else
		{
			$buttonBuildShortcuts.Enabled = $false
			$buttonBuildAutoHotKey.Enabled = $false
			$buttonBuildMQ2AutoLogin.Enabled = $false
			$buttonStartMissingToons.Enabled = $false
			
		}
		if ($EQBCSFile.Text -ne '')
		{
			$buttonFlagCheck.Enabled = $true
		}
		else
		{
			$buttonFlagCheck.Enabled = $false
		}
	}
	#endregion button-check
	
	#region Show-MsgBox
	function script:Show-MsgBox
	{
		
		[CmdletBinding()]
		param (
			[Parameter(Position = 0, Mandatory = $true)]
			[string]$Prompt,
			[Parameter(Position = 1, Mandatory = $false)]
			[string]$Title = "",
			[Parameter(Position = 2, Mandatory = $false)]
			[ValidateSet("Information", "Question", "Critical", "Exclamation")]
			[string]$Icon = "Information",
			[Parameter(Position = 3, Mandatory = $false)]
			[ValidateSet("OKOnly", "OKCancel", "AbortRetryIgnore", "YesNoCancel", "YesNo", "RetryCancel")]
			[string]$BoxType = "OkOnly",
			[Parameter(Position = 4, Mandatory = $false)]
			[ValidateSet(1, 2, 3)]
			[int]$DefaultButton = 1
		)
		[System.Reflection.Assembly]::LoadWithPartialName("Microsoft.VisualBasic") | Out-Null
		switch ($Icon)
		{
			"Question" { $vb_icon = [microsoft.visualbasic.msgboxstyle]::Question }
			"Critical" { $vb_icon = [microsoft.visualbasic.msgboxstyle]::Critical }
			"Exclamation" { $vb_icon = [microsoft.visualbasic.msgboxstyle]::Exclamation }
			"Information" { $vb_icon = [microsoft.visualbasic.msgboxstyle]::Information }
		}
		switch ($BoxType)
		{
			"OKOnly" { $vb_box = [microsoft.visualbasic.msgboxstyle]::OKOnly }
			"OKCancel" { $vb_box = [microsoft.visualbasic.msgboxstyle]::OkCancel }
			"AbortRetryIgnore" { $vb_box = [microsoft.visualbasic.msgboxstyle]::AbortRetryIgnore }
			"YesNoCancel" { $vb_box = [microsoft.visualbasic.msgboxstyle]::YesNoCancel }
			"YesNo" { $vb_box = [microsoft.visualbasic.msgboxstyle]::YesNo }
			"RetryCancel" { $vb_box = [microsoft.visualbasic.msgboxstyle]::RetryCancel }
		}
		switch ($Defaultbutton)
		{
			1 { $vb_defaultbutton = [microsoft.visualbasic.msgboxstyle]::DefaultButton1 }
			2 { $vb_defaultbutton = [microsoft.visualbasic.msgboxstyle]::DefaultButton2 }
			3 { $vb_defaultbutton = [microsoft.visualbasic.msgboxstyle]::DefaultButton3 }
		}
		$popuptype = $vb_icon -bor $vb_box -bor $vb_defaultbutton
		$ans = [Microsoft.VisualBasic.Interaction]::MsgBox($prompt, $popuptype, $title)
		return $ans
	}
	#endregion Show-MsgBox
	
	#region Show-Process
	#https://community.idera.com/database-tools/powershell/powertips/b/tips/posts/bringing-window-in-the-foreground
	function Show-Process($Process, [Switch]$Maximize)
	{
		$sig = '
    [DllImport("user32.dll")] public static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);
    [DllImport("user32.dll")] public static extern int SetForegroundWindow(IntPtr hwnd);
  '
		
		if ($Maximize) { $Mode = 3 }
		else { $Mode = 4 }
		$type = Add-Type -MemberDefinition $sig -Name WindowAPI -PassThru
		$hwnd = $process.MainWindowHandle
		$null = $type::ShowWindowAsync($hwnd, $Mode)
		$null = $type::SetForegroundWindow($hwnd)
	}
	#endregion Show-Process
#endregion Source: Globals.ps1

#region Source: HungProcess.psf
function Show-HungProcess_psf
{
	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$formHungKickedProcesses = New-Object 'System.Windows.Forms.Form'
	$listbox2 = New-Object 'System.Windows.Forms.ListBox'
	$listbox1 = New-Object 'System.Windows.Forms.ListBox'
	$buttonKillAllKickedProcess = New-Object 'System.Windows.Forms.Button'
	$buttonKillAllHungProcesses = New-Object 'System.Windows.Forms.Button'
	$buttonOK = New-Object 'System.Windows.Forms.Button'
	$buttonCancel = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	
	
	$formHungKickedProcesses_Load = {
		$hungTitles = $hungEQ.MainWindowTitle
		$kickedTitles = $kickedEQ.MainWindowTitle
		Update-ListBox -ListBox $listbox1 -Items $hungTitles
		Update-ListBox -ListBox $listbox2 -Items $kickedTitles
	}
	
	#region Control Helper Functions
	function Update-ListBox
	{
	<#
		.SYNOPSIS
			This functions helps you load items into a ListBox or CheckedListBox.
		
		.DESCRIPTION
			Use this function to dynamically load items into the ListBox control.
		
		.PARAMETER ListBox
			The ListBox control you want to add items to.
		
		.PARAMETER Items
			The object or objects you wish to load into the ListBox's Items collection.
		
		.PARAMETER DisplayMember
			Indicates the property to display for the items in this control.
			
		.PARAMETER ValueMember
			Indicates the property to use for the value of the control.
		
		.PARAMETER Append
			Adds the item(s) to the ListBox without clearing the Items collection.
		
		.EXAMPLE
			Update-ListBox $ListBox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Update-ListBox $listBox1 "Red" -Append
			Update-ListBox $listBox1 "White" -Append
			Update-ListBox $listBox1 "Blue" -Append
		
		.EXAMPLE
			Update-ListBox $listBox1 (Get-Process) "ProcessName"
		
		.NOTES
			Additional information about the function.
	#>
		
		param
		(
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			[System.Windows.Forms.ListBox]
			$ListBox,
			[Parameter(Mandatory = $true)]
			[ValidateNotNull()]
			$Items,
			[Parameter(Mandatory = $false)]
			[string]$DisplayMember,
			[Parameter(Mandatory = $false)]
			[string]$ValueMember,
			[switch]
			$Append
		)
		
		if (-not $Append)
		{
			$ListBox.Items.Clear()
		}
		
		if ($Items -is [System.Windows.Forms.ListBox+ObjectCollection] -or $Items -is [System.Collections.ICollection])
		{
			$ListBox.Items.AddRange($Items)
		}
		elseif ($Items -is [System.Collections.IEnumerable])
		{
			$ListBox.BeginUpdate()
			foreach ($obj in $Items)
			{
				$ListBox.Items.Add($obj)
			}
			$ListBox.EndUpdate()
		}
		else
		{
			$ListBox.Items.Add($Items)
		}
		
		$ListBox.DisplayMember = $DisplayMember
		$ListBox.ValueMember = $ValueMember
	}
	
	#endregion
	
	$buttonKillAllHungProcesses_Click={
		buttondown
		Start-Sleep -Seconds 1
		$hungTitles = $hungEQ.MainWindowTitle
		foreach ($hungTitle in $hungTitles)
		{
			Get-Process -Id $hungEQ.ID | Where-Object { $_.MainWindowTitle -eq $hungtitle } | Stop-Process
		}
		$hungEQCheck = get-process -Name eqgame | Where-Object { $_.Responding -eq $false }
		#$hungEQCheck = get-process -Name notepad | Where-Object { $_.Responding -eq $false } #change to eqgame
		if ($kickedEQCheck)
		{
			$hungTitlesCheck = $hungEQCheck.MainWindowTitle
		}
		else
		{
			$hungTitlesCheck = ''
		}
		Update-ListBox -ListBox $listbox1 -Items $hungTitlesCheck
		buttonup
		
	}
	
	$buttonKillAllKickedProcess_Click={
		buttondown
		Start-Sleep -Seconds 1	
		$kickedTitles = $kickedEQ.MainWindowTitle
		foreach ($kickedTitle in $kickedTitles)
		{
			Get-Process -Id $kickedEQ.ID | Where-Object { $_.MainWindowTitle -eq $kickedTitle } | Stop-Process
		}
		$kickedEQCheck = get-process -Name eqgame | Where-Object { $_.MainWindowTitle -eq 'EverQuest' }	
		#$kickedEQCheck = get-process -Name notepad | Where-Object { $_.MainWindowTitle -eq 'Untitled - Notepad' }
		if ($kickedEQCheck)
		{
			$kickedTitlesCheck = $kickedEQCheck.MainWindowTitle
		}
		else
		{
			$kickedTitlesCheck = ''
		}
		Update-ListBox -ListBox $listbox2 -Items $kickedTitlesCheck
		buttonup
		
	}
	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$formHungKickedProcesses.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:HungProcess_listbox2 = $listbox2.SelectedItems
		$script:HungProcess_listbox1 = $listbox1.SelectedItems
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$buttonKillAllKickedProcess.remove_Click($buttonKillAllKickedProcess_Click)
			$buttonKillAllHungProcesses.remove_Click($buttonKillAllHungProcesses_Click)
			$formHungKickedProcesses.remove_Load($formHungKickedProcesses_Load)
			$formHungKickedProcesses.remove_Load($Form_StateCorrection_Load)
			$formHungKickedProcesses.remove_Closing($Form_StoreValues_Closing)
			$formHungKickedProcesses.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch { Out-Null <# Prevent PSScriptAnalyzer warning #> }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$formHungKickedProcesses.SuspendLayout()
	#
	# formHungKickedProcesses
	#
	$formHungKickedProcesses.Controls.Add($listbox2)
	$formHungKickedProcesses.Controls.Add($listbox1)
	$formHungKickedProcesses.Controls.Add($buttonKillAllKickedProcess)
	$formHungKickedProcesses.Controls.Add($buttonKillAllHungProcesses)
	$formHungKickedProcesses.Controls.Add($buttonOK)
	$formHungKickedProcesses.Controls.Add($buttonCancel)
	$formHungKickedProcesses.AutoScaleDimensions = '6, 13'
	$formHungKickedProcesses.AutoScaleMode = 'Font'
	$formHungKickedProcesses.ClientSize = '284, 346'
	$formHungKickedProcesses.FormBorderStyle = 'FixedSingle'
	#region Binary Data
	$formHungKickedProcesses.Icon = [System.Convert]::FromBase64String('
AAABAAIAGBgAAAEACADIBgAAJgAAABgYAAABACAAiAkAAO4GAAAoAAAAGAAAADAAAAABAAgAAAAA
AKACAAAAAAAAAAAAAAABAAAAAAAAFyT1ABQZ9AB6lPkAfpr6ABYf9ACDoPoAHDL1ABAM9AAREPMA
CAi3ABAO8wAOCvEAEhL0ABMV9ABqcusADgjxAA8O6wAODugAEhP0ABAM7AAKCMoABAKTAIGe/ABd
aOEAjav7AA8RwgAmQ/cAExbzAFtU8gANCeMACAm8ABIT8wAcMfUAZGb4ABgm9QASJfUAe5f5ABYg
9AAfN/0AFBr2ABgt+wARD/YAIDb2ABUb/QCGpvoAg533ABQW9AALCNkAfZj7ABUa6wBtdPIADgfn
AA8L7gBnb/gAh6b9AAUDpAB2jvkATUrWAFpl4QARD/IAEQ35AIWf+gA4N/UAeZD5ABMV9QAQEPIA
epD5AAUBlgAYJ/sAFBn1AGZl9wAYJ+0AExL2AGJ7+AARD+0ADwvwAAcJuQBngPgAFCH1ABQi9QAR
EPQAXFb3ABcj9QAQD+oAHCr0ABAL6ACOrPwAanT5AG948QAmRPkANlD3AF5q4QCAnfoAJED3AAQC
lQB0jfkADgnxAAoIzgCMqvsADAnyABgn/ABtdvkABgKtAGpx+QB1jPkAFyL8ABIT9QAEA5UAFRr0
AAwK3QAaJ+wAYGnjABMW4QAeNvYAfpb8AHeN+QAQDfEASUfMAChC+gASFfIAFin1AP///wAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
AAAAAAAAAAAAAAAAAAAAAAAAAHp6enp6enp6ejMxbnBmenp6enp6enp6enp6enp6enp6D1QaXVlH
Q3p6enp6enp6enp6enp6enp6S3EGIAYmN3p6enp6enp6enp6enp6enp6QSIAAABkCXp6enp6enp6
enp6enp6enp6YBtFASd3FXp6enp6enp6enp6enp6enp6ehNKSBEUenp6enp6enp6enp6enp6enp6
enp6enp6enp6enp6enp6enp6enp6enp6enpVHS96enp6enp6enp6enp6enp6enp6ejQHBzxhenp6
enp6enp6enp6enp6enp6enQKCiltenp6enp6enp6enp6enp6enp6ejsICFAQenp6enp6enp6enp6
enp6enp6eh8MDGpTenp6enp6enp6enp6enp6enp6Cy4NDUASa3p6enp6enp6enp6enp6enp6C2wB
AQErXnp6enp6enp6enp6enp6enp6YyUEBARpCXp6enp6enp6enp6enp6enp6Pk9OUgBEHnp6enp6
enp6enp6enp6enp6Rk0qI3goTHp6enp6enp6enp6enp6enp6IV8/SVp2GXp6enp6enp6enp6enp6
enp6NThoc0Jyb3p6enp6enp6enp6enp6enp6ZyQCAgIwOnp6enp6enp6enp6enp6enp6V1wDAwMW
F3p6enp6enp6enp6enp6enp6ZSwFBQU2W3p6enp6enp6enp6enp6enp6UT0YYlYtdXp6enp6enp6
enp6enp6enp6ehwyWA45enp6enp6enp6ev+D/wD/Af8A/wH/AP8B/wD/Af8A/4P/AP///wD/x/8A
/4P/AP+D/wD/g/8A/4P/AP8B/wD/Af8A/wH/AP8B/wD/Af8A/wH/AP8B/wD/Af8A/wH/AP8B/wD/
Af8A/4P/ACgAAAAYAAAAMAAAAAEAIAAAAAAAYAkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA
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')
	#endregion
	$formHungKickedProcesses.Margin = '4, 4, 4, 4'
	$formHungKickedProcesses.MaximizeBox = $False
	$formHungKickedProcesses.MinimizeBox = $False
	$formHungKickedProcesses.Name = 'formHungKickedProcesses'
	$formHungKickedProcesses.StartPosition = 'CenterParent'
	$formHungKickedProcesses.Text = 'Hung/Kicked Processes'
	$formHungKickedProcesses.add_Load($formHungKickedProcesses_Load)
	#
	# listbox2
	#
	$listbox2.BackColor = 'Info'
	$listbox2.FormattingEnabled = $True
	$listbox2.Location = '152, 83'
	$listbox2.Name = 'listbox2'
	$listbox2.Size = '120, 212'
	$listbox2.TabIndex = 17
	#
	# listbox1
	#
	$listbox1.BackColor = 'Info'
	$listbox1.FormattingEnabled = $True
	$listbox1.Location = '13, 83'
	$listbox1.Name = 'listbox1'
	$listbox1.Size = '120, 212'
	$listbox1.TabIndex = 16
	#
	# buttonKillAllKickedProcess
	#
	#region Binary Data
	$buttonKillAllKickedProcess.Image = [System.Convert]::FromBase64String('
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAABTJJREFU
SEuNlmtsU2UYx8+6c057Tm9s3aXdRcbYYJkijLgJ6GTuw4wf/CSXDQSMgECYTAVFQcyUi5coMWHM
EQOGD7LFa0i8ABEIGIckA4TIRYEBZQKDXRhrT1t62r/Pc3bSrDoJT/LPefu+///vefu257TCvSqg
uqvvWB0tNy1Kp1+Q4Bfthi4IIvwWa+eA7GwJkce0338Nqu6yfsmu3bCNwrUHJ2KgYRkin76HyNYN
CJG05k3oaViMYyWlOCbb0SUqmkYZM37vGlBcTbckO/qmTQe+2gr8tBPYvQ34YnOyeG4PrX3ZjGPl
j6JdkNFnczWZmJGr3+pq63WkIdq4ksA7gO3rEfugHvGNixF/fyniHy4bEo9pjtfYw96etQ34UVSo
ibPNxCVXD3XvJ7i+fg2w62Po7y6C3vgC9DXzEKisQH+WD33ujPY+p6e9P8OLwPQKxGg9tvFFyiyi
zGb00sZ2p9owYHMnv5MbiqusV3JAX7fK2JH+xjzoa5+H/vZCRBtmo9tij5jWRN1Mtdd0S86Owcpy
xDctoY3MBz7fgK4Vi/FLihU9xDStgvC3pGqRyqoh+Ko50FfPh/7mAmP30flV0KYVocvm9pv2pLqa
qi7vHTMG8XfoyF6fC+zYgP1lk3EhVdUMw2Wbs7pHSQeaG6G/Nhux1XMRWzuPrs8h8vRDCFcXI1JT
gsDUYlyxuUZscllUl9+eNnkoRwx9ayP2iCquEls4L6ktWvlUxN6i815ZB30FHUlhIfRZUxF+ogjh
qnGGItXjEawYi4v/0+SS7OzQX6Y8MbBuIQ6XTsAl2d4inKebKL5gFvRXa6n7HPRVTMKZFKWpK9OD
6JME5iaVJLpGqorRX5qPs6LjhMlN1DlRreEsM+LEulz7DH6nm1H4K8WGWH0dovUzEHulFuc9WeDA
Kcm55VpeNsKPF0GbUphQ+LGx6CnKwUnR2WqQhxVnmaHXz8TAkpk4THe/8KfViRh9U6JLn0W8oQ5n
0jPbTb9wXLS33ir0ITylAFrFaGjlJLry6x6aPy46kppwlhnMQkMtDtFjRThODeL1s3B36QxEn5qI
k4o90YDrqKi2Xi/wIvTIAwiW5SfEr7tHe3FUsieacJYZzGLmEYsC4Ve6xfFSHZ1zCUITfDjlchtH
NLzaRaX1+gNZCE3MQ/DhXAQnkOgampSHS9keHJHULezjLDOYxUxmCwdTlc7g5GJoxbTLklz4vR4c
ktUagzysDonqie58akKe4PichCKluTjtdmO/qDRdoWa8zixmMls4ICstXd50hIpzoBX5oI3z4YCk
dpjcpDooqf7bBdSEvEHysrRiHyLUiJsEaMwMXmcms4W9klr9m+JAuJCeLwXZ0MZ4cdGTxg+u5SY3
qfbJqr8/P5N82YbfEI05FzTnmMVMZhuh7ySbdjPLAy0vE8HcTITpKDocLnwrWkds8oOk+Pu8GYY/
QP7h4jlmMdO0Gw3KvpdsCPkyEPRRE1IkJwvn6EP7RrJ2tKXK//lM2kQ50pdFfi+BTXGOGcxipmkd
ql0WuemAVUE0g0Iej6EQjbUMD07bXdgrK9gtWdtZ+2j8B83d8aQbvoDp5ywzmGVik2t7itT2s0zv
JI2CaR4MjkpHgMTjEClsisc8x2vsGVpPB2eZYeJGrm0pYtNOi4Quuxt3XenQnNTEmYbBf4nneI09
7OUMZ03Mvas5xVL2iWDRvrbIOGu14zYBovRrd9cUj3mO19jDXs6Y8fuvLYKlmsItmwVL50eCBZ/R
3xUWj3mO19hj2kcoQfgHHIaDhni2kb0AAAAASUVORK5CYII=')
	#endregion
	$buttonKillAllKickedProcess.ImageAlign = 'TopCenter'
	$buttonKillAllKickedProcess.Location = '151, 12'
	$buttonKillAllKickedProcess.Name = 'buttonKillAllKickedProcess'
	$buttonKillAllKickedProcess.Size = '121, 65'
	$buttonKillAllKickedProcess.TabIndex = 15
	$buttonKillAllKickedProcess.Text = 'Kill All Kicked Processes'
	$buttonKillAllKickedProcess.TextAlign = 'BottomCenter'
	$buttonKillAllKickedProcess.UseCompatibleTextRendering = $True
	$buttonKillAllKickedProcess.UseVisualStyleBackColor = $True
	$buttonKillAllKickedProcess.add_Click($buttonKillAllKickedProcess_Click)
	#
	# buttonKillAllHungProcesses
	#
	#region Binary Data
	$buttonKillAllHungProcesses.Image = [System.Convert]::FromBase64String('
iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAABGdBTUEAALGPC/xhBQAABTJJREFU
SEuNlmtsU2UYx8+6c057Tm9s3aXdRcbYYJkijLgJ6GTuw4wf/CSXDQSMgECYTAVFQcyUi5coMWHM
EQOGD7LFa0i8ABEIGIckA4TIRYEBZQKDXRhrT1t62r/Pc3bSrDoJT/LPefu+///vefu257TCvSqg
uqvvWB0tNy1Kp1+Q4Bfthi4IIvwWa+eA7GwJkce0338Nqu6yfsmu3bCNwrUHJ2KgYRkin76HyNYN
CJG05k3oaViMYyWlOCbb0SUqmkYZM37vGlBcTbckO/qmTQe+2gr8tBPYvQ34YnOyeG4PrX3ZjGPl
j6JdkNFnczWZmJGr3+pq63WkIdq4ksA7gO3rEfugHvGNixF/fyniHy4bEo9pjtfYw96etQ34UVSo
ibPNxCVXD3XvJ7i+fg2w62Po7y6C3vgC9DXzEKisQH+WD33ujPY+p6e9P8OLwPQKxGg9tvFFyiyi
zGb00sZ2p9owYHMnv5MbiqusV3JAX7fK2JH+xjzoa5+H/vZCRBtmo9tij5jWRN1Mtdd0S86Owcpy
xDctoY3MBz7fgK4Vi/FLihU9xDStgvC3pGqRyqoh+Ko50FfPh/7mAmP30flV0KYVocvm9pv2pLqa
qi7vHTMG8XfoyF6fC+zYgP1lk3EhVdUMw2Wbs7pHSQeaG6G/Nhux1XMRWzuPrs8h8vRDCFcXI1JT
gsDUYlyxuUZscllUl9+eNnkoRwx9ayP2iCquEls4L6ktWvlUxN6i815ZB30FHUlhIfRZUxF+ogjh
qnGGItXjEawYi4v/0+SS7OzQX6Y8MbBuIQ6XTsAl2d4inKebKL5gFvRXa6n7HPRVTMKZFKWpK9OD
6JME5iaVJLpGqorRX5qPs6LjhMlN1DlRreEsM+LEulz7DH6nm1H4K8WGWH0dovUzEHulFuc9WeDA
Kcm55VpeNsKPF0GbUphQ+LGx6CnKwUnR2WqQhxVnmaHXz8TAkpk4THe/8KfViRh9U6JLn0W8oQ5n
0jPbTb9wXLS33ir0ITylAFrFaGjlJLry6x6aPy46kppwlhnMQkMtDtFjRThODeL1s3B36QxEn5qI
k4o90YDrqKi2Xi/wIvTIAwiW5SfEr7tHe3FUsieacJYZzGLmEYsC4Ve6xfFSHZ1zCUITfDjlchtH
NLzaRaX1+gNZCE3MQ/DhXAQnkOgampSHS9keHJHULezjLDOYxUxmCwdTlc7g5GJoxbTLklz4vR4c
ktUagzysDonqie58akKe4PichCKluTjtdmO/qDRdoWa8zixmMls4ICstXd50hIpzoBX5oI3z4YCk
dpjcpDooqf7bBdSEvEHysrRiHyLUiJsEaMwMXmcms4W9klr9m+JAuJCeLwXZ0MZ4cdGTxg+u5SY3
qfbJqr8/P5N82YbfEI05FzTnmMVMZhuh7ySbdjPLAy0vE8HcTITpKDocLnwrWkds8oOk+Pu8GYY/
QP7h4jlmMdO0Gw3KvpdsCPkyEPRRE1IkJwvn6EP7RrJ2tKXK//lM2kQ50pdFfi+BTXGOGcxipmkd
ql0WuemAVUE0g0Iej6EQjbUMD07bXdgrK9gtWdtZ+2j8B83d8aQbvoDp5ywzmGVik2t7itT2s0zv
JI2CaR4MjkpHgMTjEClsisc8x2vsGVpPB2eZYeJGrm0pYtNOi4Quuxt3XenQnNTEmYbBf4nneI09
7OUMZ03Mvas5xVL2iWDRvrbIOGu14zYBovRrd9cUj3mO19jDXs6Y8fuvLYKlmsItmwVL50eCBZ/R
3xUWj3mO19hj2kcoQfgHHIaDhni2kb0AAAAASUVORK5CYII=')
	#endregion
	$buttonKillAllHungProcesses.ImageAlign = 'TopCenter'
	$buttonKillAllHungProcesses.Location = '12, 12'
	$buttonKillAllHungProcesses.Name = 'buttonKillAllHungProcesses'
	$buttonKillAllHungProcesses.Size = '121, 65'
	$buttonKillAllHungProcesses.TabIndex = 13
	$buttonKillAllHungProcesses.Text = 'Kill All Hung Processes'
	$buttonKillAllHungProcesses.TextAlign = 'BottomCenter'
	$buttonKillAllHungProcesses.UseCompatibleTextRendering = $True
	$buttonKillAllHungProcesses.UseVisualStyleBackColor = $True
	$buttonKillAllHungProcesses.add_Click($buttonKillAllHungProcesses_Click)
	#
	# buttonOK
	#
	$buttonOK.Anchor = 'Bottom, Right'
	$buttonOK.DialogResult = 'OK'
	$buttonOK.Location = '116, 311'
	$buttonOK.Name = 'buttonOK'
	$buttonOK.Size = '75, 23'
	$buttonOK.TabIndex = 1
	$buttonOK.Text = '&OK'
	$buttonOK.UseCompatibleTextRendering = $True
	$buttonOK.UseVisualStyleBackColor = $True
	#
	# buttonCancel
	#
	$buttonCancel.Anchor = 'Bottom, Right'
	$buttonCancel.CausesValidation = $False
	$buttonCancel.DialogResult = 'Cancel'
	$buttonCancel.Location = '197, 311'
	$buttonCancel.Name = 'buttonCancel'
	$buttonCancel.Size = '75, 23'
	$buttonCancel.TabIndex = 0
	$buttonCancel.Text = '&Cancel'
	$buttonCancel.UseCompatibleTextRendering = $True
	$buttonCancel.UseVisualStyleBackColor = $True
	$formHungKickedProcesses.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $formHungKickedProcesses.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$formHungKickedProcesses.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$formHungKickedProcesses.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$formHungKickedProcesses.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $formHungKickedProcesses.ShowDialog()

}
#endregion Source: HungProcess.psf

#Start the application
Main ($CommandLine)
