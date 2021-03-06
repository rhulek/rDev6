# Testovaci data v JSON reprezentaci
sumStatTestDataStr = '[{"rowLabel":"Lokalita 0","values":[{"value":7.287,"loqValue":9.884,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":8},{"value":0.982,"loqValue":0.233,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":10},{"value":4.087,"loqValue":6.674,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":16},{"value":8.419,"loqValue":4.908,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":16},{"value":9.471,"loqValue":9.98,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":19}]},{"rowLabel":"Lokalita 1","values":[{"value":6.27,"loqValue":4.117,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":24},{"value":6.946,"loqValue":8.883,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":12},{"value":7.97,"loqValue":2.788,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":30},{"value":7.669,"loqValue":5.259,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":21},{"value":5.968,"loqValue":9.49,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":24}]},{"rowLabel":"Lokalita 2","values":[{"value":4.742,"loqValue":6.057,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":23},{"value":7.652,"loqValue":3.588,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":7},{"value":9.505,"loqValue":2.49,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":20},{"value":6.424,"loqValue":8.099,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"timeLength":15}]}]'

# prevod testovacich dat do nativni podoby - takto bude strukturovan vstup funkce summaryStatistics predavany do argumentu records
sumStatTestData = jsonlite::fromJSON(sumStatTestDataStr)


# Projde zaznamy predane v atributu records a provede aggreci
#
# konstanty:
# const CENTRAL_VALUE_TYPE_MEAN = "mean";
# const CENTRAL_VALUE_TYPE_MEDIAN = "median";
# const CENTRAL_VALUE_TYPE_GEOMEAN = "geomean";
# 
# const WHISKER_VALUE_TYPE_5_95 = "5_95";
# const WHISKER_VALUE_TYPE_25_75 = "25_75";
# const WHISKER_VALUE_TYPE_MIN_MAX = "min_max";
# const WHISKER_VALUE_TYPE_2INTERKVARTIL = "2iq";
# const WHISKER_VALUE_TYPE_CI = "ci";
# 
# const TRANSFORMATION_TYPE_NONE = "none";
# const TRANSFORMATION_TYPE_LOG = "log";
summaryStatistics <- function(records=NULL, centralValueType="median", whiskerValueType="5_95", transformationType="none")
{
  # ukazkovy navratovy dataset
  result1<-list(label="site1",
               n=23,
               nUnderLOQ=NULL,
               unit="ng/m3",
               centralValue=10.8,
               centralValueType="median",
               whiskerTopValue=10,
               whiskerBottomValue=13,
               whiskerType="5/95");
  
  result2<-list(label="site2",
                n=17,
                nUnderLOQ=NULL,
                unit="ng/m3",
                centralValue=14,
                centralValueType="median",
                whiskerTopValue=8.3,
                whiskerBottomValue=19.3,
                whiskerType="5/95");
  
  result3<-list(label="site3",
                n=21,
                nUnderLOQ=NULL,
                unit="ng/m3",
                centralValue=10.8,
                centralValueType="median",
                whiskerTopValue=10,
                whiskerBottomValue=13.3,
                whiskerType="5/95");
  
  results<-list(result1,result2,result3);
  
  return(results);
  
}