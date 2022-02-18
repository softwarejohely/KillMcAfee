### Removes McAfee From Windows 11 (Haven't tested Windows 10) ###

Function KillThisBitch {
    if (Test-Path C:\temp\) {
}
else
{
New-Item C:\Temp\ -ItemType Directory
}
    $Url = "https://github.com/softwarejohely/KillMcAfee/raw/main/KillMcAfee.zip"
    $DownloadZipFile = "C:\Temp\" + $(Split-Path -Path $Url -Leaf)

    Invoke-WebRequest -Uri $Url -OutFile $DownloadZipFile
    Expand-Archive -Path c:\temp\KillMcAfee.zip -DestinationPath c:\temp
    C:\temp\KillMcAfee\Mccleanup.exe -p StopServices,MFSY,PEF,MXD,CSP,Sustainability,MOCP,MFP,APPSTATS,Auth,EMproxy,FWdiver,HW,MAS,MAT,MBK,MCPR,McProxy,McSvcHost,VUL,MHN,MNA,MOBK,MPFP,MPFPCU,MPS,SHRED,MPSCU,MQC,MQCCU,MSAD,MSHR,MSK,MSKCU,MWL,NMC,RedirSvc,VS,REMEDIATION,MSC,YAP,TRUEKEY,LAM,PCB,Symlink,SafeConnect,MGS,WMIRemover,RESIDUE -v -s
}

KillThisBitch
