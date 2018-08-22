#!bin/bash

jmeter_url="http://us.mirrors.quenda.co/apache//jmeter/binaries/apache-jmeter-4.0.tgz"
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
