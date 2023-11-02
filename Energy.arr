use context essentials2021
include gdrive-sheets 
include data-source 
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g" 
EData = 
load-table: komponent, energi 
  source: load-spreadsheet(ssid).sheet-by-name("kWh", true) 
    sanitize energi using string-sanitizer
  end
#Variabler for funksjonene
distance-travelled-per-day = 20
distance-per-unit-of-fuel = 10
energy-per-unit-of-fuel = 5
#Energi per dag funksjon
energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel
#Lager en funksjon som kan fjerne "" fra energi kolonne
fun energy-to-number(str :: String) -> Number:
  doc: "If string is no number, set to 0"
  cases(Option) string-to-number(str):
    |some(a) => a
    | none => energy-per-day
  end
where:
  energy-to-number("") is energy-per-day
  energy-to-number("48") is 48
end

#Fjerner "" fra energi kolonne
transform-EData=
  transform-column(EData, "energi", energy-to-number)

#Summerer tallene i energi kolonne
sum-column= 
  sum(transform-EData, "energi")

#Lager en rad for de summerte tallene
sum-all=
  table: komponent :: String, energi :: Number 
    row: "Sum Energy", sum-column
end

#Lager formel for ett bar chart
EData-chart= 
  bar-chart(transform-EData, "komponent", "energi")

#Får fram bar chart og tabellen, samt legger til summer raden
EData-chart
sum-row= get-row(sum-all, 0)
add-row(transform-EData, sum-row)

