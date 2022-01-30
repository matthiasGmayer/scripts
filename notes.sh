#create new terminal
if [[ -n $1 ]]
then
gnome-terminal -- nvim ~/notes_on_startup.txt
else
nvim ~/notes_on_startup.txt
fi
