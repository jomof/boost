wget https://github.com/jomof/boost/releases/download/1.0.63-rev9/boost_1_63_0.zip
SHASUM256=$(shasum -a 256 boost_1_63_0.zip | awk '{print $1}')
ARCHIVESIZE=$(stat --printf="%s" boost_1_63_0.zip)

printf "coordinate:\r\n" >> cdep-manifest.yml
printf "  groupId: com.github.jomof\r\n" >> cdep-manifest.yml
printf "  artifactId: boost\r\n" >> cdep-manifest.yml
printf "  version: ${TRAVIS_TAG+0.0.0}\r\n" >> cdep-manifest.yml
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
printf "example: |\r\n" >> cdep-manifest.yml
printf "  #include <boost/numeric/ublas/matrix.hpp>\r\n" >> cdep-manifest.yml
printf "  void test() {\r\n" >> cdep-manifest.yml
printf "     using namespace boost::numeric::ublas;\r\n"  >> cdep-manifest.yml
printf "     matrix<double> m (3, 3);\r\n" >> cdep-manifest.yml
printf "     for (unsigned i = 0; i < m.size1 (); ++ i) {\r\n" >> cdep-manifest.yml
printf "       for (unsigned j = 0; j < m.size2 (); ++ j) {\r\n" >> cdep-manifest.yml
printf "         m (i, j) = 3 * i + j;\r\n" >> cdep-manifest.yml
printf "       }\r\n" >> cdep-manifest.yml
printf "     }\r\n" >> cdep-manifest.yml
printf "  }\r\n" >> cdep-manifest.yml

cat cdep-manifest.yml
