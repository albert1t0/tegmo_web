<%@ page language="java"  import="java.io.*, java.lang.*"%>

<%
  Runtime rt = Runtime.getRuntime();
  Process prcs = rt.exec("/bin/bash"); //or your csh shell location

  BufferedWriter cmd = new BufferedWriter(new OutputStreamWriter(prcs.getOutputStream()));
  cmd.write("cd /opt/tomcat-latest/webapps/tegmo_web/; git pull");
  cmd.flush();

  int returnCode = prcs.exitValue();
  prcs.destroy();

%> 
