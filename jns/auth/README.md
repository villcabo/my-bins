# External Logger Configuration

Download file

```
wget https://raw.githubusercontent.com/villcabo/my-bins/main/jns/auth/log4j2.xml -O /opt/jans/jetty/jans-auth/resources/log4j2.xml
```

## Setting in Configuration

Find property

```
externalLoggerConfiguration
```

and set value

```
/opt/jans/jetty/jans-auth/resources/log4j2.xml
```