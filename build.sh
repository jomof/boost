wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.zip
printf "coordinate:\n" >> cdep-manifest.yml
printf "  groupId: com.github.jomof\n" >> cdep-manifest.yml
printf "  artifactId: cmakeify\n" >> cdep-manifest.yml
printf "  version: alpha-0.0.35\n" >> cdep-manifest.yml
printf "android:\n" > cdep-manifest.yml
printf "  - file: boost_1_63_0.zip\n" >> cdep-manifest.yml
printf "    include: boost_1_63_0/boost\n" >> cdep-manifest.yml
