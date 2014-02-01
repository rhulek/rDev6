# sumStatTestDataStr = '[{"rowLabel":"Lokalita 0","values":[{"value":7.287,"loqValue":9.884,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":8},{"value":0.982,"loqValue":0.233,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":10},{"value":4.087,"loqValue":6.674,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":16},{"value":8.419,"loqValue":4.908,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":16},{"value":9.471,"loqValue":9.98,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":19}]},{"rowLabel":"Lokalita 1","values":[{"value":6.27,"loqValue":4.117,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":24},{"value":6.946,"loqValue":8.883,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":12},{"value":7.97,"loqValue":2.788,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":30},{"value":7.669,"loqValue":5.259,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":21},{"value":5.968,"loqValue":9.49,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":24}]},{"rowLabel":"Lokalita 2","values":[{"value":4.742,"loqValue":6.057,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":23},{"value":7.652,"loqValue":3.588,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":7},{"value":9.505,"loqValue":2.49,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":20},{"value":6.424,"loqValue":8.099,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":15}]}]'
# sumStatTestData = jsonlite::fromJSON(sumStatTestDataStr)
# sumStatTestData$values
# 
# class(sumStatTestData$values[0][0])
# sumStatTestData$values[[1]]$value
# 
# mean(sumStatTestData$values[[1]]$value)
# median(sumStatTestData$values[[1]]$value)
# 
# jsonTest(sumStatTestData, "median")