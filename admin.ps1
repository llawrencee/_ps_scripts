$IsAdmin = ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)

if ($IsAdmin) {
  $done = New-Object -ComObject Wscript.Shell;$done.Popup("Update Completed.",1)
} else {
  $done = New-Object -ComObject Wscript.Shell;$done.Popup("Update Failed!",1)
}