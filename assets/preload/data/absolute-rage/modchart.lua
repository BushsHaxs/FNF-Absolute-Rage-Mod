function setDefault(id)	_G['defaultStrum'..id..'X'] = getActorX(id)
end
function start(song)
    for i = 4, 7 do 
        tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
    end --this centers bf strumline and removes dad strumline (copied from modchart examples)
    strumLine1Visible = False
    setCamZoom(0.7) -- camera zoom
    setActorAlpha(0, 'girlfriend') -- removes girlfriend (rip)

    WhiteBG = makeSprite('WhiteBG','whitebg', true) --copied from Release Retro remix modchart by ClipeeChan
	BlackBG = makeSprite('BlackBG','blackbg', true)

    setActorX(200,'whitebg')
	setActorY(500,'whitebg')
	setActorAlpha(0,'whitebg')
	setActorScale(4,'whitebg')
	
	setActorX(200,'blackbg')
	setActorY(500,'blackbg')
	setActorAlpha(1,'blackbg')
	setActorScale(4,'blackbg')

end

local defaultHudX = 0
local camHudAngle = 0

function update(elasped) --this is used for switching characters at the correct times
    if curStep == 121 or curStep == 241 or curStep == 406 or curStep == 543 or curStep == 663 or curStep == 721 or curStep == 841 or curStep == 980 or curStep == 1010 or curStep == 1040 or curStep == 1071 or curStep == 1312 or curStep == 1442 or curStep == 1 then
        changeBoyfriendCharacter('tricky') --tricky
        setActorFlipX(false, 'boyfriend')
        setActorAlpha(0, 'trickybg')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(1, 'tabibg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 151 or curStep == 271 or curStep == 436 or curStep == 468 or curStep == 513 or curStep == 633 or curStep == 783 or curStep == 811 or curStep == 1143 or curStep == 1293 or curStep == 1382 or curStep == 1599 or curStep == 1613 or curStep == 1635 or curStep == 1647 or curStep == 1663 or curStep == 1675 or curStep == 1690 or curStep == 1707 or curStep == 1719 or curStep == 1736 or curStep == 1767 or curStep == 1795 or curStep == 1827 or curStep == 20 then
        changeBoyfriendCharacter('whittycrazy') --whitty
        setActorFlipX(true, 'boyfriend')
        setActorAlpha(1, 'trickybg')
        setActorAlpha(0, 'whittybg')
        setActorAlpha(1, 'tabibg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 213 or curStep == 301 or curStep == 377 or curStep == 483 or curStep == 602 or curStep == 693 or curStep == 797 or curStep == 1084 or curStep == 1470 or curStep == 1593 or curStep == 1605 or curStep == 1641 or curStep == 1654 or curStep == 1669 or curStep == 1685 or curStep == 1699 or curStep == 1714 or curStep == 1729 or curStep == 1757 or curStep == 1788 or curStep == 1802 or curStep == 1820 or curStep == 35 then
        changeBoyfriendCharacter('tabi-crazy') --tabi
        setActorFlipX(true, 'boyfriend')
        setActorAlpha(1, 'trickybg')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(0, 'tabibg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 181 or curStep == 333 or curStep == 391 or curStep == 421 or curStep == 450 or curStep == 573 or curStep == 902 or curStep == 990 or curStep == 1022 or curStep == 1053 or curStep == 1077 or curStep == 1534 or curStep == 1746 or curStep == 1776 or curStep == 1808 or curStep == 50 or curStep == 827 then
        changeBoyfriendCharacter('agoti') --agoti
        setActorFlipX(false, 'boyfriend')
        setActorAlpha(1, 'trickybg')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(1, 'tabibg')
        setActorAlpha(0, 'agotibg')
    elseif curStep == 1202 or curStep == 1324 or curStep == 1444 then
        changeDadCharacter('tabip2') --these below change player 2 so animations can play properly while multiple characters are singing
        setActorFlipX(true, 'dad')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(0, 'tabibg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 1441 then
        changeDadCharacter('dad')
    elseif curStep == 1472 then
        changeDadCharacter('trickyp2')
        setActorFlipX(false, 'dad')
        setActorAlpha(0, 'trickybg')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 1203 or curStep == 1252 or curStep == 1281 then
        changeBoyfriendCharacter('tricky')
        setActorFlipX(false, 'boyfriend')
        setActorAlpha(0, 'trickybg')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 1503 or curStep == 1232 or curStep == 1262 then
        changeBoyfriendCharacter('whittycrazy')
        setActorFlipX(true, 'boyfriend')
        setActorAlpha(0, 'whittybg')
        setActorAlpha(1, 'agotibg')
        setActorAlpha(1, 'trickybg')
    elseif curStep == 1534 then
        changeBoyfriendCharacter('agoti')
        setActorFlipX(false, 'boyfriend')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(1, 'tabibg')
        setActorAlpha(0, 'agotibg')
    elseif curStep == 1508 then
        setActorAlpha(1, 'tabibg')
        setActorAlpha(0, 'trickybg')
    elseif curStep == 1836 then
        changeBoyfriendCharacter('agoti')
        changeDadCharacter('tabip2')
        setActorFlipX(false, 'boyfriend')
        setActorFlipX(true, 'dad')
        setActorAlpha(0, 'agotibg')
        setActorAlpha(0, 'tabibg')
        setActorAlpha(0, 'whittybg')
        setActorAlpha(0, 'trickybg')

    elseif curStep == 100 or curStep == 1594 then --when the black and white backgrounds appear
        setActorAlpha(0, 'blackbg')
    elseif curStep == 1563 or curStep == 70 then
        setActorAlpha(1, 'blackbg')
        changeBoyfriendCharacter('bf')
        changeDadCharacter('dad')
        setActorAlpha(1, 'trickybg')
        setActorAlpha(1, 'whittybg')
        setActorAlpha(1, 'tabibg')
        setActorAlpha(1, 'agotibg')
    elseif curStep == 1835 then
        tweenFadeIn(WhiteBG,1, 5)
    elseif curStep == 1896 then
        changeBoyfriendCharacter('bf')
        changeDadCharacter('dad')
        setActorAlpha(1, 'whitebg')

    elseif curStep == 1580 then --supposed to change scroll speed but doesnt work
        scrollSpeed = 3.7
    end

    local currentBeat = (songPos / 1000)*(bpm/60) --wiggle arrows copied from agoti
    for i=0,7 do
    setActorY(defaultStrum0Y + 10 * math.cos((currentBeat + i*0.25) * math.pi), i)
    end

end


function keyPressed(key) -- hud shake effect
    if getHudX(i) == 10 then
        tweenHudPos(getHudX(i) - 20, 0, 0.05)
    elseif getHudX(i) == -10 then
        tweenHudPos(getHudX(i) + 20, 0, 0.05)
    elseif getHudX(i) == 0 then
        tweenHudPos(getHudX(i) - 10, 0, 0.05)
    else 
        tweenHudPos(defaultHudX, 0, 0.05)
    end

end
function stepHit (step) -- arrow spin copied from agoti
    if curStep == 355 or curStep == 457 or curStep == 595 or curStep == 836 or curStep == 954 or curStep == 1064 or curStep == 1556 or curStep == 1889 then
        for i = 0, 7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.6, 'setDefault')
        end
    end
end