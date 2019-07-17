BEGIN {sum=0}
{sum=sum+($5/1024/1024) }
END {print sum " MB in directory"}
