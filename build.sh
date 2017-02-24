wget https://github.com/jomof/boost/releases/download/1.0.63-rev9/boost_1_63_0.zip
SHASUM256=$(shasum -a 256 boost_1_63_0.zip | awk '{print $1}')
ARCHIVESIZE=$(stat --printf="%s" boost_1_63_0.zip)

printf "coordinate:\r\n" >> cdep-manifest.yml
printf "  groupId: com.github.jomof\r\n" >> cdep-manifest.yml
printf "  artifactId: boost\r\n" >> cdep-manifest.yml
printf "  version: ${TRAVIS_TAG}\r\n" >> cdep-manifest.yml
printf "android:\r\n" >> cdep-manifest.yml
printf "  - archives:\r\n" >> cdep-manifest.yml
printf "    - file: boost_1_63_0.zip\r\n" >> cdep-manifest.yml
printf "      sha256: $SHASUM256\r\n" >> cdep-manifest.yml
printf "      size: $ARCHIVESIZE\r\n" >> cdep-manifest.yml
printf "    include: boost_1_63_0\r\n\n" >> cdep-manifest.yml
printf "linux:\r\n" >> cdep-manifest.yml
printf "  - archives:\r\n" >> cdep-manifest.yml
printf "    - file: boost_1_63_0.zip\r\n" >> cdep-manifest.yml
printf "      sha256: $SHASUM256\r\n" >> cdep-manifest.yml
printf "      size: $ARCHIVESIZE\r\n" >> cdep-manifest.yml
printf "    include: boost_1_63_0\r\n\n" >> cdep-manifest.yml

cat cdep-manifest.yml
