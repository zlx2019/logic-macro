EnablePrimaryMouseButtonEvents(true)
switch = false
lock = 6
gatlin_key = 5
usp_key = 4
function OnEvent(event, arg)
    if event == "MOUSE_BUTTON_PRESSED" and arg == lock then
        switch = not switch
    end
    if switch then
        Sleep(50)
        if IsMouseButtonPressed(gatlin_key) then
            repeat
                PressMouseButton(1)
                Sleep(math.random(111,169))
                ReleaseMouseButton(1)
                Sleep(math.random(18,35))
            until not IsMouseButtonPressed(gatlin_key)
        end
        if IsMouseButtonPressed(usp_key) then
            repeat
                PressMouseButton(1)
                Sleep(math.random(21,61))
                ReleaseMouseButton(1)
                Sleep(math.random(16,46))
            until not IsMouseButtonPressed(usp_key)
        end
    end
end