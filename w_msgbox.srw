$PBExportHeader$w_msgbox.srw
forward
global type w_msgbox from window
end type
type btnnovo from commandbutton within w_msgbox
end type
type lbldesc from statictext within w_msgbox
end type
type cb_1 from commandbutton within w_msgbox
end type
end forward

global type w_msgbox from window
integer width = 3378
integer height = 1408
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
btnnovo btnnovo
lbldesc lbldesc
cb_1 cb_1
end type
global w_msgbox w_msgbox

on w_msgbox.create
this.btnnovo=create btnnovo
this.lbldesc=create lbldesc
this.cb_1=create cb_1
this.Control[]={this.btnnovo,&
this.lbldesc,&
this.cb_1}
end on

on w_msgbox.destroy
destroy(this.btnnovo)
destroy(this.lbldesc)
destroy(this.cb_1)
end on

type btnnovo from commandbutton within w_msgbox
integer x = 997
integer y = 388
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Data atual"
end type

event clicked;messagebox("Data atual", string(today()))
end event
type lbldesc from statictext within w_msgbox
integer x = 297
integer y = 120
integer width = 1490
integer height = 176
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
long textcolor = 33554432
long backcolor = 67108864
string text = "Aplica��o simples, desenvolvida em Powerbuilder 7.0, para testar integra��o com GitHub"
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_msgbox
integer x = 297
integer y = 384
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Arial"
string text = "Testar"
end type

event clicked;messagebox("Aten��o", "Estrela TEC")
end event

