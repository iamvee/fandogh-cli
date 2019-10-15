if [ -n "$ZSH" ] ;then
   #eval "$(_FANDOGH_COMPLETE=source_zsh fandogh)"
   mkdir -p  $ZSH/completions/fandogh
   _FANDOGH_COMPLETE=source_zsh fandogh > $ZSH/completions/fandogh/fandogh.sh

   if [ ! -n "$( echo $fpath | grep fandogh )" ] ; then 
       echo 'fpath=($fpath ${ZSH}/completions/fandogh)' >> $HOME/.zshrc
       echo ". ${ZSH}/completions/fandogh/fandogh.sh" >> $HOME/.zshrc
       
   fi 

fi
