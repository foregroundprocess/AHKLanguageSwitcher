#Requires AutoHotkey 2.0

CapsLock::
{
    SendMessage 0x50,, 0x0000409,, "A"
	ShowLang("ENG")
}

+CapsLock::
{
    SendMessage 0x50,, 0x0000419,, "A"
	ShowLang("RU")
}

ShowLang(Lang)
{
	LangString := "`n`n     " Lang "     `n`n "
	ToolTip (LangString)
	SetTimer () => ToolTip(), -500
}
