emacsconfig
===========

the configure file for emacs

# Install

## Move the emacsconfig folder to System_Home_Path(Such as c:\Documents and Settings\Administrator\). 
### You can enter Cygwin Shell, and print "cd ~;pwd" to identify your System_Home_Path.
## Move the .emacs_move_this_to_home_path_and_change_filename to the System_Home_Path 
## Change the name .emacs_move_this_to_home_path_and_change_filename to .emacs
## Change the path in (load-file "D:/emacsconfig/.emacs") to the path of your system, such as (load-file "c:/Documents and Settings/Administrator/emacsconfig/.emacs")

# To use the full feature of this emacs configure, You need the softwares as follow:

## Cygwin (on Windows Required) 
### My default Cygwin path is D:/cygwin. If it different with yours, please replace the path to yours in lisp/setup-cygwin.el
## graphviz (Option)
## R Language (Option)

# Self define key
|             |                        | <15>            |
|-------------+------------------------+-----------------|
| Key         | Command                | Description     |
|-------------+------------------------+-----------------|
| Shift-Space | set-mark-command       | Set the mark where point is, or jump to the mark |
| F1          | eshell                 | Enter eshell    |
|-------------+------------------------+-----------------|
| F12         | cua-selection-mode     | Enable cua mode |
| C-return    | cua-set-rectangle-mark | Set mark and start in CUA rectangle mode |

  

