
NOGR=0
BS=0
AP=0
TS=0


function hide()
gg.toast('hide')
end

function main()
if AP==0 then
	playerAntennaTitle = "🟥 Player Antenna" else
	playerAntennaTitle = "🟩 Player Antenna"
end

if NOGR == 0 then
    grassTitle = "🟥 No Grass" else
	grassTitle = "🟩 No Grass"
end

if BS==0 then
	blackskyTitle = "🟥 Black Sky" else
	blackskyTitle = "🟩 Black Sky"
end

if TS ==0 then
	timeSwitchTitle = "🟥 Time Switch" else
	timeSwitchTitle = "🟩 Time Switch"
end

menu = gg.choice({
 playerAntennaTitle,
 grassTitle,
 blackskyTitle,
 timeSwitchTitle,
'🔚Exit'
},nil,'Discord 🔵[saber.man]🔵')
if menu == nil then hide() end
if menu == 1 then PlayerAntenna() end
if menu == 2 then Grass() end
if menu == 3 then BlackSky() end
if menu == 4 then TimeSwitch() end
if menu == 5 then exit() end
end



function BlackSky()
  if BS==0 then
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("1280D;5D;-1,597,960,448D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("5", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(99)
    gg.editAll("-2", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Ok 😎")
    BS=1
  else
    gg.setRanges(gg.REGION_VIDEO)
    gg.searchNumber("1280D;-2D;-1,597,960,448D", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.refineNumber("-2", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.getResults(99)
    gg.editAll("5", gg.TYPE_DWORD)
    gg.clearResults()
    gg.toast("Ok 😎")
    BS=0
  end
end


function exit()
MSG = print("Good Luck 🙏")
os.exit()
end


function PlayerAntenna()
  if AP == 0 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-0.9855342507362366", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-999", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Ok 😎")
    AP = 1 
  else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("-999", gg.TYPE_FLOAT, false, gg.SIGN_FUZZY_EQUAL, 0, -1)
    gg.getResults(999)
    gg.editAll("-0.9855342507362366", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("Ok 😎")
    AP = 0
  end
end

function Grass()
  if NOGR == 0 then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("0.5F;512.0F:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("0.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5000)
    gg.editAll("5", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearList()
    gg.toast("Ok 😎")
    NOGR = 1
  else
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("5;512.0F:69", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(5000)
    gg.editAll("0.5", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.clearList()
    gg.toast("Ok 😎")
    NOGR = 0
  end
end

function TimeSwitch()
  if TS==0 then
    qmnb = {
      {memory = 32},
      {name = "Ok 😎"},
      {
        value = "0.0066999997943639755",
        type = 16
      },
      {
        lv = "9.219422856485836E-41",
        offset = 8,
        type = 16
      }
    }
    qmxg = {
      {
        value = 999,
        offset = 8,
        type = 16
      }
    }
    xqmnb(qmnb)
    TS=1
  else
    qmnb = {
      {memory = 32},
      {name = "Ok 😎"},
      {
        value = "0.0066999997943639755",
        type = 16
      },
      {
        lv = "999.0",
        offset = 8,
        type = 16
      }
    }
    qmxg = {
      {
        value = 9.21942286E-41,
        offset = 8,
        type = 16
      }
    }
    xqmnb(qmnb)
    TS=0
  end
end


function xqmnb(qmnb) 
gg.clearResults()
gg.setRanges(qmnb[1]["memory"])
gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"])
if gg.getResultCount() == 0
then gg.toast(qmnb[2]["name"] .. "Failed1")
else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"])
if gg.getResultCount() == 0 then
gg.toast(qmnb[2]["name"] .. "Failed2")
else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0
if sz > 999999 then sz = 999999 end
for i = 1, sz do pdsz = true
	for v = 4, #(qmnb) do
	if pdsz == true then
	pysz = {}
	pysz[1] = {}
	pysz[1].address = sl[i].address + qmnb[v]["offset"]
	pysz[1].flags = qmnb[v]["type"]
	szpy = gg.getValues(pysz)
	pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value
	szpd = split(pdpd, ";")
	tzszpd = szpd[1]
	pyszpd = szpd[2]
	if tzszpd == pyszpd then
	pdjg = true
	pdsz = true
	else
	pdjg = false
	pdsz = false
	end
	end
	end
	if pdjg == true then
	szpy = sl[i].address
	xgxc(szpy, qmxg)
	xgjg = true
	end
	end
	if xgjg == true then
	gg.toast(qmnb[2]["name"] .. "Successfully, Total Edit" .. xgsl .. "data")
	else gg.toast(qmnb[2]["name"] .. "Failed3")
	end
	end
	end
	end
function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end 

while true do
 if gg.isVisible(true) then
    gg.setVisible(false)
    main()
end
gg.sleep(100)
end
while true do
 if gg.isVisible(true) then
    gg.setVisible(false)
    main()
end
gg.sleep(100)
end