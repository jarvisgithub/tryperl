#check pwd function
sub validPwd {
    #get innput
    $inputString = $_[0];
    
    return $inputString =~ m/.{20,}$|^(?=.*[A-Z])(?=.*[a-z]).{16,19}$|^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).{12,15}$|^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[^A-Za-z0-9]).{8,11}$/;
}

START:
print "Please input password:";

#get input
$checkPwd = <STDIN>;
chomp $checkPwd;

#check input by validPwd
if (validPwd($checkPwd)) {
    print "Password Valid\n";
    goto START;
} else {
    print "Password Invalid\n";
    goto START;
}








