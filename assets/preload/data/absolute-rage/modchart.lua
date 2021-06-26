function setDefault(id)	_G['defaultStrum'..id..'X'] = getActorX(id)
end
function start(song)
    for i = 4, 7 do 
        tweenPosXAngle(i, _G['defaultStrum'..i..'X'] - 275,getActorAngle(i) + 360, 0.6, 'setDefault')
    end --this centers bf strumline and removes dad strumline (copied from modchart examples)
    strumLine1Visible = False
    setCamZoom(0.8) -- camera zoom
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


function update(elasped) --this is used for switching characters at the correct times
    if curStep == 121 or curStep == 241 or curStep == 406 or curStep == 543 or curStep == 663 or curStep == 721 or curStep == 841 or curStep == 980 or curStep == 1010 or curStep == 1040 or curStep == 1071 or curStep == 1203 or curStep == 1312 or curStep == 1442 or curStep == 1 or curStep == 1865 or curStep == 1873 or curStep == 1881 or curStep == 1889 or curStep == 1253 or curStep == 1281 or curStep == 1606 then
        changeBoyfriendCharacter('tricky') --tricky
        setActorFlipX(false, 'boyfriend')
        character = 'tricky'
    elseif curStep == 151 or curStep == 271 or curStep == 436 or curStep == 468 or curStep == 513 or curStep == 633 or curStep == 783 or curStep == 811 or curStep == 1143 or curStep == 1293 or curStep == 1382 or curStep == 1503 or curStep == 1599 or curStep == 1613 or curStep == 1635 or curStep == 1647 or curStep == 1663 or curStep == 1675 or curStep == 1690 or curStep == 1707 or curStep == 1719 or curStep == 1736 or curStep == 1767 or curStep == 1795 or curStep == 1827 or curStep == 20 or curStep == 1859 or curStep == 1867 or curStep == 1875 or curStep == 1883 or curStep == 1891 or curStep == 1232 or curStep == 1263 then
        changeBoyfriendCharacter('whittycrazy') --whitty
        setActorFlipX(true, 'boyfriend')
        character = 'whitty'
    elseif curStep == 213 or curStep == 301 or curStep == 377 or curStep == 483 or curStep == 602 or curStep == 693 or curStep == 797 or curStep == 1084 or curStep == 1470 or curStep == 1593 or curStep == 1605 or curStep == 1641 or curStep == 1654 or curStep == 1669 or curStep == 1685 or curStep == 1699 or curStep == 1714 or curStep == 1729 or curStep == 1757 or curStep == 1788 or curStep == 1802 or curStep == 1820 or curStep == 35 or curStep == 1861 or curStep == 1869 or curStep == 1877 or curStep == 1885 or curStep == 1893 then
        changeBoyfriendCharacter('tabi-crazy') --tabi
        setActorFlipX(true, 'boyfriend')
        character = 'tabi'
    elseif curStep == 181 or curStep == 333 or curStep == 391 or curStep == 421 or curStep == 450 or curStep == 573 or curStep == 902 or curStep == 990 or curStep == 1022 or curStep == 1053 or curStep == 1077 or curStep == 1534 or curStep == 1746 or curStep == 1776 or curStep == 1808 or curStep == 50 or curStep == 827 or curStep == 1863 or curStep == 1871 or curStep == 1879 or curStep == 1887 then
        changeBoyfriendCharacter('agoti') --agoti
        setActorFlipX(false, 'boyfriend')
        character = 'agoti'
    elseif curStep == 1202 or curStep == 1324 or curStep == 1444 then
        changeDadCharacter('tabip2') --these below change player 2 so animations can play while multiple characters are singing
        setActorFlipX(true, 'dad')
    elseif curStep == 1441 then
        changeDadCharacter('dad')
    elseif curStep == 1472 then
        changeDadCharacter('trickyp2')
        setActorFlipX(false, 'dad')

    elseif curStep == 100 or curStep == 1594 then --when the black and white backgrounds appear
        setActorAlpha(0, 'blackbg')
    elseif curStep == 1563 or curStep == 70 then
        setActorAlpha(1, 'blackbg')
        changeBoyfriendCharacter('bf')
        changeDadCharacter('dad')
    elseif curStep == 1856 then
        setActorAlpha(0.7, 'whitebg')
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
    if curStep <= 1572 then
        if getHudX(i) == 10 then
            setHudPosition(getHudX(i) - 20, 0)
        elseif getHudX(i) == -10 then
            setHudPosition(getHudX(i) + 20, 0)
        else
            setHudPosition(getHudX(i) - 10, 0)
        end
    else
        if getHudX(i) == 15 then
            setHudPosition(getHudX(i) - 30, 0)
        elseif getHudX(i) == -15 then
            setHudPosition(getHudX(i) + 30, 0)
        else
            setHudPosition(getHudX(i) - 5, 0)
        end
    end

end
function beatHit(beat) -- camera shake effect
    if curStep <= 1572 then
        if getCameraX(i) == 5 then
            setCamPosition(getCameraX(i) - 10, 0)
        elseif getCameraX(i) == -5 then
            setCamPosition(getCameraX(i) + 10, 0)
        else
            setCamPosition(getCameraX(i) - 5, 0)
        end
    else
        if getCameraX(i) == 10 then
            setCamPosition(getCameraX(i) - 20, 0)
        elseif getCameraX(i) == -10 then
            setCamPosition(getCameraX(i) + 20, 0)
        else
            setCamPosition(getCameraX(i) - 5, 0)
        end
    end

end
function stepHit (step) -- arrow spin copied from agoti
    if curStep == 355 or curStep == 457 or curStep == 595 or curStep == 836 or curStep == 954 or curStep == 1064 or curStep == 1556 or curStep == 1889 then
        for i = 0, 7 do
            tweenPosXAngle(i, _G['defaultStrum'..i..'X'],getActorAngle(i) + 360, 0.6, 'setDefault')
        end
    end
end