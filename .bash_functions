# Function which adds an alias to the current shell and to
# the ~/.bash_aliases file.
add-alias ()
{
   local name=$1 value="$2"
   echo alias $name=\'$value\' >>~/.bash_aliases
   eval alias $name=\'$value\'
   alias $name
}

# "repeat" command.  Like:
#
#       repeat 10 echo foo
repeat ()
{
    local count="$1" i;
    shift;
    for i in $(seq 1 "$count");
    do
        eval "$@";
    done
}

clean ()
{
    echo -n "Really clean this directory? [y/n] ";
    read yorn;
    if [ "$yorn" = "y" ]; then
       rm -f \#* *~ .*~ *.swp .*.swp;
       echo "Cleaned.";
    else
       echo "Not cleaned.";
    fi
}

function up ()
{
    local count="$1" path;
    for i in $(seq $count); do
      path+="../"
    done
    cd $path
}

function blamecount ()
{
   git blame --show-name $1 | cut -d\( -f2- | cut -c-14 | sort | uniq -c | sort -n
}
