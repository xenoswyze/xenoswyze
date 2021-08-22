require "lib.moonloader"

function onReceiveRpc(id,bitStream)
if id == 61 then
dialogId = raknetBitStreamReadInt16(bitStream)
style = raknetBitStreamReadInt8(bitStream)
str = raknetBitStreamReadInt8(bitStream)
title = raknetBitStreamReadString(bitStream, str)
if title:find("Авторизация") then sampSendDialogResponse(dialogId,1,0,"Здесь свой пароль") end
end
end
