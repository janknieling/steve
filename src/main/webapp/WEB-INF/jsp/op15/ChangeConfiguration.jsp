<%@ include file="/WEB-INF/jsp/00-header.jsp" %>
<div class="left-menu">
<ul>
	<li><a href="${servletPath}/ChangeAvailability">Change Availability</a></li>
	<li><a class="highlight" href="${servletPath}/ChangeConfiguration">Change Configuration</a></li>
	<li><a href="${servletPath}/ClearCache">Clear Cache</a></li>
	<li><a href="${servletPath}/GetDiagnostics">Get Diagnostics</a></li>
	<li><a href="${servletPath}/RemoteStartTransaction">Remote Start Transaction</a></li>
	<li><a href="${servletPath}/RemoteStopTransaction">Remote Stop Transaction</a></li>
	<li><a href="${servletPath}/Reset">Reset</a></li>
	<li><a href="${servletPath}/UnlockConnector">Unlock Connector</a></li>
	<li><a href="${servletPath}/UpdateFirmware">Update Firmware</a></li>
	<hr>
	<li><a href="${servletPath}/ReserveNow">Reserve Now</a></li>
	<li><a href="${servletPath}/CancelReservation">Cancel Reservation</a></li>
	<li><a href="${servletPath}/DataTransfer">Data Transfer</a></li>
	<li><a href="${servletPath}/GetConfiguration">Get Configuration</a></li>
	<li><a href="${servletPath}/GetLocalListVersion">Get Local List Version</a></li>
	<li><a href="${servletPath}/SendLocalList">Send Local List</a></li>
</ul>
</div>
<div class="op15-content">
<form method="POST" action="${servletPath}/ChangeConfiguration">
<%@ include file="00-cp-multiple.jsp" %>
<section><span>Parameters</span></section>
<table>
<tr><td>Configuration key:</td><td>
<select name="confKey">
<option value="HeartBeatInterval">HeartBeatInterval (in seconds)</option>
<option value="ConnectionTimeOut">ConnectionTimeOut (in seconds)</option>
<option value="ProximityContactRetries">ProximityContactRetries (in times)</option>
<option value="ProximityLockRetries">ProximityLockRetries (in times)</option>
<option value="ResetRetries">ResetRetries (in times)</option>
<option value="BlinkRepeat">BlinkRepeat (in times)</option>
<option value="LightIntensity">LightIntensity (in %)</option>
<option value="ChargePointId">ChargePointId (string)</option>
<option value="MeterValueSampleInterval">MeterValueSampleInterval (in seconds)</option>
<option value="ClockAlignedDataInterval">ClockAlignedDataInterval (in seconds)</option>
<option value="MeterValuesSampledData">MeterValuesSampledData (comma seperated list)</option>
<option value="MeterValuesAlignedData">MeterValuesAlignedData (comma seperated list)</option>
<option value="StopTxnSampledData">StopTxnSampledData (comma seperated list)</option>
<option value="StopTxnAlignedData">StopTxnAlignedData (comma seperated list)</option>
</select>
</td></tr>
<tr><td>Value:</td><td><input type="text" name="value"></td></tr>
</table>
<div class="submit-button"><input type="submit" value="Perform"></div>
</form>
</div>
<%@ include file="/WEB-INF/jsp/00-footer.jsp" %>