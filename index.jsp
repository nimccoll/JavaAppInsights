<%@ page import="com.microsoft.applicationinsights.TelemetryClient" %>
<%@ page import="com.microsoft.applicationinsights.telemetry.SeverityLevel" %>
<html>
<body>
<h2>Application Insights Core SDK Sample</h2>
<%
  TelemetryClient telemetry = new TelemetryClient();
  telemetry.trackEvent("NicksCustomEvent");
  telemetry.trackTrace("This is an informational message", SeverityLevel.Information);
  telemetry.trackTrace("This is a warning message", SeverityLevel.Warning);
  telemetry.trackTrace("This is an error message", SeverityLevel.Error);
  telemetry.flush();
%>
</body>
</html>
