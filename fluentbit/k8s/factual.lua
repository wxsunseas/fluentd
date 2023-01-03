
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
    if string.match(record["log"], "([0-9-]+ [:0-9.]+)") ~= nil then
        newRecord["lo07"] = string.match(record["log"], "([0-9-]+ [:0-9.]+)")
        return 1, timestamp, newRecord
    else
        return 1, timestamp, newRecord
    end
end