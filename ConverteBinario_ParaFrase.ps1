$binario = "";
$BinarioComEspaco = "";
$i = 0;

[string]$binario.Trim() -split "" | ForEach-Object {
    
    if($_){
        if($i -eq 8){
            $BinarioComEspaco += " ";
            $i = 0;
        }

        $BinarioComEspaco += [string]$_;
        $i += 1;
    }
}

$Frase = ""

$BinarioComEspaco -split " " | ForEach-Object {
    $Decimal = [convert]::ToInt32($_,2);
    $Frase += [char]$Decimal
}

$Frase