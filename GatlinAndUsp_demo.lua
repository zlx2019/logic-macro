---
--- Created by zero.
--- DateTime: 2023/1/14 7:45 PM
--- CF 炼狱宏 + usp宏
---
-- 开启鼠标左键支持编程设定
EnablePrimaryMouseButtonEvents(true)
-- 宏开关标识,默认未开启
switch = false

-- 默认宏开关键为 g6
lock = 6

-- 默认炼狱宏 按键为 g5
gatlin_key = 5

-- 默认usp宏 按键为 g4
usp_key = 4

function OnEvent(event, arg)
    -- 是否 打开\关闭 宏开关
    if event == "MOUSE_BUTTON_PRESSED" and arg == lock then
        switch = not switch
    end
    -- 如果宏开关被打开,检测是否开始执行宏脚本
    if switch then
        Sleep(50)
        -- 炼狱宏循环
        -- 如果持续摁住炼狱宏的触发键
        if IsMouseButtonPressed(gatlin_key) then
            repeat
                -- 模拟长按鼠标左键
                PressMouseButton(1)
                -- 间隔随机100-300毫秒之间
                Sleep(math.random(111,169))
                -- 松开鼠标左键
                ReleaseMouseButton(1)
                Sleep(math.random(18,35))
            until not IsMouseButtonPressed(gatlin_key)
        end

        -- usp宏
        if IsMouseButtonPressed(usp_key) then
            repeat
                -- 模拟长按鼠标左键
                PressMouseButton(1)
                -- 间隔随机100-300毫秒之间
                Sleep(math.random(21,61))
                -- 松开鼠标左键
                ReleaseMouseButton(1)
                Sleep(math.random(16,46))
            until not IsMouseButtonPressed(usp_key)
        end
    end
end