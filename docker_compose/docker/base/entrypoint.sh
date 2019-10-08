 #!/bin/bash

keytool -import -noprompt -trustcacerts -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit -alias Root -import -file /opt/bdb/certificate/ca.crt
