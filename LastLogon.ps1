$computers = Get-Content "C:\scripts\computer-logon.txt" # edit path to reflect your environment

foreach ($computer in $computers) {
        Get-ADComputer -identity $computer -Properties * | Select Name, LastLogonDate | Export-Csv -NoTypeInformation -Append C:\Scripts\Lastlogon\computer-logon.csv # edit path to relect your environment
        }
