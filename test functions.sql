set serveroutput on
 DECLARE
    VI_ENTITIY VARCHAR2(100) := 'chassis';
    VI_SEARCHBY VARCHAR2(50) := 'id';
    VI_VALUE VARCHAR2(1000):= 'LDE-FC02A-M01-D1A-N09A-SPL1-04';--'LDE-FC02A-M02-D2A-N07A-SPL1-06';
    VO_ELID VARCHAR2(200);
    VO_STATUS varchar2(50);
    res number;
 BEGIN
    res := PCK_FNT.FN_GET_ELID(619,'node', 'id','X054207','rs0-Nzy23htBqVUqgm1Jxg',VO_ELID,VO_STATUS);
    DBMS_OUTPUT.PUT_LINE(VO_ELID);
    DBMS_OUTPUT.PUT_LINE(VO_STATUS);
    DBMS_OUTPUT.PUT_LINE(res);
END;   
    
    
DECLARE
    VI_SOBJID VARCHAR2(1000) := 'X054207';
    VO_LOBJID VARCHAR2(400);
    VV_RESULT NUMBER;
BEGIN 
    VV_RESULT := PCK_FNT.FN_GET_LOBJID(619,VI_SOBJID, VO_LOBJID);
    DBMS_OUTPUT.PUT_LINE(VO_LOBJID);
   DBMS_OUTPUT.PUT_LINE(VV_RESULT);
END;
/
DECLARE
  VI_ELID VARCHAR2(50) := 'N4SX41K8420IVO';
  VI_ENTITYNAME VARCHAR(50) := 'chassis';
  VI_PROPNAME VARCHAR(50) := 'cMindStatus';
  VI_PROPVALUE  VARCHAR(50) := 'test';
  VV_RESULT NUMBER;
BEGIN
    VV_RESULT := PCK_FNT.FN_SET_PARAMETER(VI_ELID, VI_ENTITYNAME,VI_PROPNAME,VI_PROPVALUE);
    DBMS_OUTPUT.PUT_LINE(VV_RESULT);
   
END;
/

DECLARE

     VI_LOBJID VARCHAR2(30):= 'LDE-FC02A-M02-D2A-N07A-SPL1-06';
     VO_OLT  VARCHAR2(30);
      VO_ODF  VARCHAR2(30);
      VO_RACK  VARCHAR2(30);
      vo_vsm  number;
      vo_vii  number;
      vo_vss  number;
      vo_card VARCHAR2(100);
      vo_port  number;
      vo_line_profile  varchar2(30);
      vo_vas_profile  varchar2(30);
      vo_service_profile  varchar2(30);
      vo_result  number;
      vo_message varchar2(100);  
BEGIN
    vo_result := PCK_FNT.FN_GET_ENGINFO(VI_LOBJId,VO_OLT,VO_ODF,vo_rack,vo_vsm,vo_vii,vo_vss,vo_card,vo_port,vo_line_profile,vo_vas_profile,vo_service_profile,vo_message );
    DBMS_OUTPUT.PUT_LINE( vo_result||'|'||VO_OLT||'|'||VO_ODF||'|'||vo_vsm||'|'||vo_rack||'|'||vo_vii||'|'||vo_vss||'|'||vo_card||'|'||vo_port||'|'||vo_line_profile||'|'||vo_vas_profile||'|'||vo_service_profile||'|'||vo_message );
   
END;

declare
res varchar2(4000);
begin
PCK_ipam.P_SET_LOGIN('ciodev',  'Cr3at1v9');
res:= pck_ipam.fn_ipam_getid('172.29.208.2');
dbms_output.put_line(res);
end;

declare
res varchar2(4000);
begin
PCK_ipam.P_SET_LOGIN('ciodev',  'Cr3at1v9');
res:= pck_ipam.fn_ipam_getid('Telemedia_Config');
dbms_output.put_line(res);
end;


set serveroutput on 



declare
res number;
vo_sig_ip varchar2(100);
begin
res:= PCK_IPAM.FN_GET_SIGIP('OWK', VO_SIG_IP);
dbms_output.put_line(vo_sig_ip);
end;


declare
res number;
VO_MESSAGE varchar2(100);
begin
res:= PCK_FNT.FN_GET_SESSIONID( 'command', 'command', VO_MESSAGE);
dbms_output.put_line(VO_MESSAGE);
end;

