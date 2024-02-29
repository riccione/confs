# Auto Config for linux desktop

## Usage

`$ git clone https://github.com/riccione/confs`

### backup.sh

`$ ./backup.sh

Copies and renames config files for bash and vim from current user home directory.
Rename - removes . from the file name.
Files to copy:
- .bash -> bash
- .bash_aliases -> bash_aliases
- .vimrc -> vimrc

### auto.sh

Only for Debian related distributives!
Installs all necessary packages (at least I use this packages all the time).
Copies config files for bash and vim to the current user home directory.
! not tested yet

For Vim I use aliases and for different purposes I use different Vim
configuration:
- vim = general use
- vimw = for writing (this vimrc is in progress, not ready yet)
- vimy = for yaml

`$ chmod +x auto.sh`
`$ sudo ./auto.sh`
