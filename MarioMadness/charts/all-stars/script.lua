

-- -- xx/yy is always for player characters
-- --xx2/yy2 is always for opponent
-- --instead of having a if then festival we're just gonna have the values get set whenever certain notes are hit
-- local act = 1

-- local xx = 220
-- local yy = 450

-- local xx2 = -420
-- local yy2 = 150

-- local ofs = 30
-- local ofs2 = 60

-- local zoom1 = 0.6
-- local zoom2 = 0.35

-- local followchars = true
-- local zoomchars = true

-- local singer1 = 'boyfriend'
-- local singer2 = 'dad'

-- function onUpdate()
--     if followchars == true then
--         if mustHitSection == true then
--             if getProperty(singer1 .. '.animation.curAnim.name') == 'idle' or getProperty(singer1 .. '.animation.curAnim.name') == 'idle-alt' then
--                 triggerEvent('Camera Follow Pos',xx,yy)
--             end
--             if getProperty(singer1 .. '.animation.curAnim.name') == 'singLEFT' or getProperty(singer1 .. '.animation.curAnim.name') == 'singLEFT-alt' then
--                 triggerEvent('Camera Follow Pos',xx - ofs,yy)
--             end
--             if getProperty(singer1 .. '.animation.curAnim.name') == 'singRIGHT' or getProperty(singer1 .. '.animation.curAnim.name') == 'singRIGHT-alt' then
--                 triggerEvent('Camera Follow Pos',xx + ofs,yy)
--             end
--             if getProperty(singer1 .. '.animation.curAnim.name') == 'singUP' or getProperty(singer1 .. '.animation.curAnim.name') == 'singUP-alt' then
--                 triggerEvent('Camera Follow Pos',xx,yy - ofs)
--             end
--             if getProperty(singer1 .. '.animation.curAnim.name') == 'singDOWN' or getProperty(singer1 .. '.animation.curAnim.name') == 'singDOWN-alt' then
--                 triggerEvent('Camera Follow Pos',xx,yy + ofs)
--             end
            
--             if zoomchars == true then
--                 setProperty('defaultCamZoom', zoom1)
--             end
--         else
--             if getProperty(singer2 .. '.animation.curAnim.name') == 'idle' or getProperty(singer2 .. '.animation.curAnim.name') == 'idle-alt' then
--                 triggerEvent('Camera Follow Pos',xx2,yy2)
--             end
--             if getProperty(singer2 .. '.animation.curAnim.name') == 'singLEFT' or getProperty(singer2 .. '.animation.curAnim.name') == 'singLEFT-alt' then
--                 triggerEvent('Camera Follow Pos',xx2 - ofs2,yy2)
--             end
--             if getProperty(singer2 .. '.animation.curAnim.name') == 'singRIGHT' or getProperty(singer2 .. '.animation.curAnim.name') == 'singRIGHT-alt' then
--                 triggerEvent('Camera Follow Pos',xx2 + ofs2,yy2)
--             end
--             if getProperty(singer2 .. '.animation.curAnim.name') == 'singUP' or getProperty(singer2 .. '.animation.curAnim.name') == 'singUP-alt' then
--                 triggerEvent('Camera Follow Pos',xx2,yy2 - ofs2)
--             end
--             if getProperty(singer2 .. '.animation.curAnim.name') == 'singDOWN' or getProperty(singer2 .. '.animation.curAnim.name') == 'singDOWN-alt' then
--                 triggerEvent('Camera Follow Pos',xx2,yy2 + ofs2)
--             end

--             if getProperty(singer2 .. '.animation.curAnim.name') == 'exit1' or getProperty(singer2 .. '.animation.curAnim.name') == 'exit2 ' then
--                 triggerEvent('Camera Follow Pos',xx2,yy2 - (ofs2 * 2))
--             end
            
--             if zoomchars == true then
--                 setProperty('defaultCamZoom', zoom2)
--             end
--         end
--     else
--         --triggerEvent('Camera Follow Pos','','')
--     end
-- end

-- function onBeatHit()
--     if curBeat == 268 then
--         act = 2
--     end
--     if curBeat == 396 then
--         act = 2.5
--     end
--     if curBeat == 264 then
--         zoom2 = 2
--         xx2 = 480
--         yy2 = -180
--     end

--     if curBeat == 328 then
--         followchars = false
--         zoomchars = false
--         doTweenAlpha('tag0', 'camHUD', 0.7, 0.5, 'quadInOut')
--         doTweenX('tag1', 'camFollowPos', xx2, 1.6, 'quadIn')
--         doTweenY('tag2', 'camFollowPos', yy2 - 300, 1.6, 'quadIn')
--         doTweenX('tag3', 'camFollow', xx2, 1.6, 'quadIn')
--         doTweenY('tag4', 'camFollow', yy2 - 300, 1.6, 'quadIn')
--     end

--     if curBeat == 330 then
--         setProperty('defaultCamZoom', 1.1)
--         triggerEvent('Screen Shake','0.8, 0.004','0.8, 0.004')
--     end

--     if curBeat == 332 then
--         followchars = true
--         zoomchars =   true
--         doTweenAlpha('tag5', 'camHUD', 1, 0.5, 'quadOut')
--     end

--     if curBeat == 580 then
--         act = 3
--         xx2 = -800
--         yy2 = 300
--         zoom2 = 0.7
--         ofs2 = 20
--         ofs = 20
--     end

--     if curBeat == 586 then
--         followchars = false
--         zoomchars = false
--         doTweenX('tag1', 'camFollowPos', xx2, 5, 'quadInOut')
--         doTweenY('tag2', 'camFollowPos', yy2, 5, 'quadInOut')
--         doTweenX('tag3', 'camFollow', xx2, 5, 'quadInOut')
--         doTweenY('tag4', 'camFollow', yy2, 5, 'quadInOut')
--         doTweenZoom('tag5', 'camGame', zoom2, 5, 'quadInOut')
--     end

--     if curBeat == 604 then
--         followchars = true
--         zoomchars = true
--         xx2 = -400
--         yy2 = 300
--         zoom2 = 0.6
--     end

--     if curBeat == 668 then
--         ofs2 = 80
--         ofs = 60
--     end

--     if curBeat == 844 then
--         act = 3.5
--         zoomchars = false
--     end

--     if curBeat == 916 then
--         act = 4;
--         zoomchars = true;
--         xx = 720;
--         yy = 480;
--         ofs = 15;
--         zoom1 = 1.3;
--         xx2 = 570;
--         yy2 = 440;
--         ofs2 = 40;
--         zoom2 = 1;
--     end

--     if curBeat == 1172 then
--         xx = 1000;
--         yy = 550;
--         zoom1 = 1.5;
--         doTweenX('tag3', 'camFollowPos', xx, 1.6, 'quadInOut')
--         doTweenY('tag4', 'camFollowPos', yy, 1.6, 'quadInOut')
--         doTweenZoom('cam1', 'camGame', zoom1, 1.6, 'quadInOut');
--     end

--     if curBeat == 1176 then
--         zoom1 = 0.7;
--         yy = 425;
--         doTweenX('tag3', 'camFollowPos', xx, 0.05, 'quadInOut')
--         doTweenY('tag4', 'camFollowPos', yy, 0.05, 'quadInOut')
--     end

--     if curBeat == 1208 then
--         zoom1 = 0.6;
--     end

--     if curBeat == 1236 then
--         zoom1 = 0.5;
--         doTweenZoom('cam1', 'camGame', zoom1, 0.8, 'quadInOut');
--     end

--     if curBeat == 1238 then
--         zoom1 = 1;
--         doTweenZoom('cam1', 'camGame', zoom1, 0.8, 'cubeIn');
--     end

--     if curBeat == 1240 then
--         xx = 720;
--         yy = 480;
--         ofs = 15;
--         zoom1 = 1.3;
--         xx2 = 570;
--         yy2 = 440;
--         ofs2 = 40;
--         zoom2 = 1;
--     end

--     if curBeat >= 300 and curBeat <= 331 then
--          triggerEvent('Add Camera Zoom','','')
--      end
--      if curBeat >= 364 and curBeat <= 395 then
--          triggerEvent('Add Camera Zoom','0.016','')
--      end
--      if curBeat >= 426 and curBeat <= 472 then
--          triggerEvent('Add Camera Zoom','0.016','')
--      end
--      if curBeat >= 476 and curBeat <= 491 then
--          triggerEvent('Add Camera Zoom','0.016','')
--      end
--      if curBeat >= 508 and curBeat <= 523 then
--          triggerEvent('Add Camera Zoom','0.016','')
--      end
--      if curBeat >= 540 and curBeat <= 556 then
--          triggerEvent('Add Camera Zoom','0.016','')
--      end
--      if curBeat % 4 == 0 then
--          if curBeat >= 396 and curBeat <= 424 then
--              triggerEvent('Add Camera Zoom','0.032','')
--          end
--          if curBeat >= 460 and curBeat <= 472 then
--              triggerEvent('Add Camera Zoom','0.032','')
--          end
--          if curBeat >= 492 and curBeat <= 507 then
--              triggerEvent('Add Camera Zoom','0.032','')
--          end
--          if curBeat >= 524 and curBeat <= 539 then
--              triggerEvent('Add Camera Zoom','0.052','0.06')
--          end
--      end
--      if curBeat % 2 == 0 then
--          if curBeat >= 268 and curBeat <= 299 then
--              triggerEvent('Add Camera Zoom','0.024','')
--          end
--          if curBeat >= 396 and curBeat <= 327 then
--              triggerEvent('Add Camera Zoom','0.024','')
--          end
--      end
-- end

-- function goodNoteHit(id, noteData, noteType, isSustainNote)
--     if noteType == '' or noteType == 'Alt Animation' or noteType == 'GF Duet' then
--         singer1 = 'boyfriend'
--         if act == 1 then
--             xx = 220
--             yy = 450
--         end
--         if act == 2 or act == 2.5 then
--             xx = 520
--             yy = 450
--             zoom1 = 0.8
--         end
--         if act == 3 then
--             xx = 350
--             yy = 475
--             zoom1 = 0.7
--         end
--         if act == 3.5 then
--             xx = -150
--             yy = 400
--         end
--     end
--     if noteType == 'GF Sing' then
--         singer1 = 'gf'
--         xx = 370
--         yy = 450
--     end
-- end

-- function opponentNoteHit(id, noteData, noteType, isSustainNote)
--     if noteType == '' then
--         singer2 = 'dad'
--         if act == 1 then
--             xx2 = -420
--             yy2 = 150
--             zoom2 = 0.35 
--         end
--         if act == 2 then
--             xx2 = 520
--             yy2 = 250
--             zoom2 = 0.6
--             ofs2 = 80
--         end
--         if act == 2.5 then
--             xx2 = 260
--             yy2 = 450
--             zoom2 = 0.7
--             ofs2 = 60
--         end
--         if act == 3 then
--             xx2 = -400
--             yy2 = 300
--             zoom2 = 0.6
--         end
--         if act == 3.5 then
--             xx2 = -150
--             yy2 = 400
--             ofs2 = 30
--         end
--     end
--     if noteType == 'GF Sing' then
--         singer2 = 'gf'
--         xx2 = 520
--         yy2 = 350
--         zoom2 = 0.7
--     end
--     if noteType == 'Yoshi Note' then
--         singer2 = 'funnylayer0'
--         xx2 = 780
--         yy2 = 450
--         zoom2 = 0.7
--     end
--     if noteType == 'AS Bud Note' then
--         singer2 = 'dad'
--         xx2 = 520
--         yy2 = 350
--         zoom2 = 0.6
--     end
-- end