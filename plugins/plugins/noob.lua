do
function run (msg, matches)
if is_momod(msg) and matches[1] == 'هذه فرخ' and string.find(msg.text,"@") then 
Mico = string.gsub(msg.text,"هذه فرخ","")
text = "  هسه راح انيجه😍🙈  "..Mico
return text
end

if not is_momod(msg) then
return 'بس للادمنية دي'
end
end
return {
patterns = {
  "(هذه فرخ) @(.*)"
},
run = run
}
end