jabba use $args[0]
$env:JAVA_HOME = $(jabba which $args[0])
$env:path = $(jabba which $args[0]) + '\bin;' + $env:path