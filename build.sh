mkdir download
cd download
wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.zip
printf "android:\n" > cdep-manifest.yml
printf "  - file: boost_1_63_0.zip\n" >> cdep-manifest.yml
