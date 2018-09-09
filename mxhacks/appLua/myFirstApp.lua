scriptId = "com.armProject.myFirstApp"
scriptTitle = "My Cool Game && first app"
scriptDeatilUrl = ""

function onForegroundWindowChange ( app, title )
    myo.debug("onForegroundWindowChange: " ..  app .. ", " .. title)
    myo.getArm()
    return true
end

function onPoseEdge ( pose, edge )
    myo.debug("onPoseEdge: " .. pose .. ": " .. edge)
    if (edge == "on") then
        if (pose == "waveOut") then
            onWaveOut()     
        elseif (pose == "waveIn") then
            onWaveIn()
        elseif (pose == "fist") then
            onFist()
        elseif (pose == "fingersSpread") then
            onFingersSpread()
        elseif (pose == "doubleTap") then
            onDoubleTap()
        else onRest()
        end
    end
end

function onWaveOut(  )
    myo.debug("Next")
    myo.keyboard("right_arrow", "press")
end

function onWaveIn(  )
   myo.debug("Previous") 
   myo.keyboard("left_arrow", "press")
end

function onFist(  )
    myo.debug("Enter")
    myo.keyboard("return", "press")
end

function onFingersSpread(  )
    myo.debug("Windows")
    myo.keyboard("tab", "down", "alt")
end

function onDoubleTap( )
    myo.debug("Lock Windows")
    myo.keyboard("left_win", "down")
    myo.keyboard("l", "press")
end

function onRest( )
    myo.debug("Arm")
    myo.getArm()
end