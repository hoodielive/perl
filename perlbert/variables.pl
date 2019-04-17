$var = "I am a simple scalar variable\n"; 
$p = \$var; 
$$p; 
print($var);
print($p);
print($$p); 
print(@var);
