param([string] $file)
foreach($line in Get-Content $file) {
    if($line.Contains(",name")){
        $first = $line.Indexof(",name:") + 6
        $second = $line.indexof(",name:" , $first) +6
        $owner = $line.Substring($first, $line.indexOf(",", $first) - $first)
        $owned = $line.Substring($second, $line.indexOf(",", $second) - $second)
        $owner + " -> " + $owned
    }
}