wget https://sourceforge.net/projects/boost/files/boost/1.63.0/boost_1_63_0.zip
printf "coordinate:\r\n" >> cdep-manifest.yml
printf "  groupId: com.github.jomof\r\n" >> cdep-manifest.yml
printf "  artifactId: cmakeify\r\n" >> cdep-manifest.yml
printf "  version: ${TRAVIS_TAG}\r\n" >> cdep-manifest.yml
printf "android:\r\n" >> cdep-manifest.yml
printf "  - file: boost_1_63_0.zip\r\n" >> cdep-manifest.yml
printf "    include: boost_1_63_0/boost\r\n\n" >> cdep-manifest.yml
printf "linux:\r\n" >> cdep-manifest.yml
printf "  - file: boost_1_63_0.zip\r\n" >> cdep-manifest.yml
printf "    include: boost_1_63_0/boost\r\n" >> cdep-manifest.yml