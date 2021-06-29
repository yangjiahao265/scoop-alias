jabba use $args
$env:JAVA_HOME = $(jabba which $args)
$env:path = $(jabba which $args) + '\bin;' + $env:path