# Ubuntu Commands 

To view Hostname, Computer Type, Machine ID, Boot ID, OS, Kernel, Architecture
```
hostnamectl
```
To find Max RAM supported (Works on Physical OS)
```
sudo dmidecode -t 16
```
To find the same in Windows OS, using PowerShell 
```
Get-WmiObject -Class Win32_PhysicalMemoryArray | Select-Object MaxCapacity, MemoryDevices
wmic memphysical get maxcapacity
```
*MaxCapacity*: Shows the maximum supported memory in kilobytes (divide by 1024 to get MB, or 1048576 for GB).