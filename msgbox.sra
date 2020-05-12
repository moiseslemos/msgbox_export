$PBExportHeader$msgbox.sra
$PBExportComments$Generated Application Object
forward
global type msgbox from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type msgbox from application
string appname = "msgbox"
end type
global msgbox msgbox

on msgbox.create
appname="msgbox"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on msgbox.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_msgbox)
end event
