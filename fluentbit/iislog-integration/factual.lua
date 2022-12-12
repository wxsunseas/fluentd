
function getLogType(tag, timestamp, record) 
    newRecord = record
    if string.match(record["log"], "ERROR") ~= nil then
        newRecord["lo11"] = string.match(record["log"], "ERROR")
    elseif string.match(record["log"], "WARN") ~= nil then
        newRecord["lo11"] = string.match(record["log"], "WARN")
    elseif string.match(record["log"], "INFO") ~= nil then
        newRecord["lo11"] = string.match(record["log"], "INFO")
    elseif string.match(record["log"], "DEBUG") ~= nil then
        newRecord["lo11"] = string.match(record["log"], "DEBUG")
    end
    return 1, timestamp, newRecord
end

function getUpdateTime(tag, timestamp, record) 
    newRecord = record
    mather = "[0-9-]+ [0-9:]+.[0-9][0-9][0-9]"
    if string.match(record["log"], mather) ~= nil then
        newRecord["lo07"] = string.match(record["log"], mather)
        return 1, timestamp, newRecord
    else
        newRecord["lo07"] = 'None'
        return 1, timestamp, newRecord
    end
end