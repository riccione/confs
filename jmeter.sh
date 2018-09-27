#!/bin/bash

bin_dir=~/bin
jmeter_url="http://mirrors.sorengard.com/apache//jmeter/binaries/apache-jmeter-5.0.tgz"
sha_url="https://www.apache.org/dist/jmeter/binaries/apache-jmeter-5.0.tgz.sha512"
# todo: add verify the integrity
# exit 1

# https://jmeter-plugins.org/wiki/PluginsManager/#Installation-and-Usage
jmeter_plugins_manager="http://search.maven.org/remotecontent?filepath=kg/apc/jmeter-plugins-manager/1.3/jmeter-plugins-manager-1.3.jar"

echo $jmeter_url

# download jmeter and unpack
filename=${jmeter_url##*/}
filename_no_ext=${filename%.*}
wget $jmeter_url
tar -xvzf $filename

# download JMeter Plugins Manager
filename=${jmeter_plugins_manager##*/}
wget --content-disposition $jmeter_plugins_manager
mv $filename $filename_no_ext/lib/ext

# move folder to the ~/bin/  
if [ ! -d "$bin_dir" ]; then
	mkdir $bin_dir
fi

mv $filename_no_ext/ $bin_dir/
