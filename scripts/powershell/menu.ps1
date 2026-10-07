Clear-Host

function Mostrar-Sistema {

    Write-Host ""
    Write-Host "===== INFORMACION DEL SISTEMA =====" -ForegroundColor Cyan

    Write-Host "Equipo:" -ForegroundColor Yellow
    (Get-CimInstance Win32_ComputerSystem).Name

    Write-Host ""
    Write-Host "Sistema Operativo:" -ForegroundColor Yellow
    (Get-CimInstance Win32_OperatingSystem).Caption

    Write-Host ""
    Write-Host "Procesador:" -ForegroundColor Yellow
    (Get-CimInstance Win32_Processor).Name

    Write-Host ""
    Write-Host "Memoria RAM:" -ForegroundColor Yellow
    "{0:N2} GB" -f ((Get-CimInstance Win32_ComputerSystem).TotalPhysicalMemory / 1GB)

    Pause
}

function Mostrar-Servicios {

    Clear-Host

    Write-Host "================================" -ForegroundColor Cyan
    Write-Host "        SERVICIOS WINDOWS        " -ForegroundColor Cyan
    Write-Host "================================" -ForegroundColor Cyan

    $activos = (Get-Service | Where-Object {$_.Status -eq "Running"}).Count
    $detenidos = (Get-Service | Where-Object {$_.Status -eq "Stopped"}).Count

    Write-Host ""
    Write-Host "Servicios activos: $activos" -ForegroundColor Green
    Write-Host "Servicios detenidos: $detenidos" -ForegroundColor Yellow

    Write-Host ""
    Write-Host "Primeros servicios activos:" -ForegroundColor Cyan

    Get-Service |
    Where-Object {$_.Status -eq "Running"} |
    Select-Object -First 10 Status, Name, DisplayName |
    Format-Table -AutoSize

    Pause

}


function Mostrar-Procesos {

    Write-Host ""
    Write-Host "===== PROCESOS PRINCIPALES =====" -ForegroundColor Green

    Get-Process |
    Sort-Object CPU -Descending |
    Select-Object -First 10 ProcessName, CPU

    Pause
}


function Generar-Reporte {

    Write-Host ""
    Write-Host "===== GENERANDO REPORTES =====" -ForegroundColor Cyan

    Get-Service |
    Export-Csv C:\ReporteTI\servicios.csv -NoTypeInformation

    Get-Process |
    Export-Csv C:\ReporteTI\procesos.csv -NoTypeInformation

    Write-Host ""
    Write-Host "Reportes generados correctamente" -ForegroundColor Green

    Pause
}


do {

    Clear-Host

    Write-Host "==============================" -ForegroundColor Cyan
    Write-Host "      APTI LAB - MONITOR TI   " -ForegroundColor Cyan
    Write-Host "==============================" -ForegroundColor Cyan

    Write-Host ""
    Write-Host "1. Ver informacion del sistema"
    Write-Host "2. Ver servicios"
    Write-Host "3. Ver procesos"
    Write-Host "4. Generar reportes"
    Write-Host "5. Salir"

    Write-Host ""

    $opcion = Read-Host "Seleccione una opcion"

    switch ($opcion) {

        1 { Mostrar-Sistema }

        2 { Mostrar-Servicios }

        3 { Mostrar-Procesos }

        4 { Generar-Reporte }

        5 { 
            Write-Host "Cerrando Monitor TI..."
            break
        }

        default {
            Write-Host "Opcion no valida"
            Pause
        }
    }

} while ($opcion -ne 5)