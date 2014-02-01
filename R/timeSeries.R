timeSeriesDataJson = '[{"label":"Site 0","values":[{"value":2.58,"loqValue":3.939,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2000-02-26","timeLength":23},{"value":3.147,"loqValue":3.289,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1996-01-26","timeLength":13},{"value":0.114,"loqValue":5.319,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2002-02-23","timeLength":11}]},{"label":"Site 1","values":[{"value":4.661,"loqValue":2.114,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2004-01-06","timeLength":19},{"value":2.935,"loqValue":0.262,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2010-01-05","timeLength":14},{"value":0.465,"loqValue":5.812,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2006-03-11","timeLength":5},{"value":6.879,"loqValue":9.331,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1997-08-02","timeLength":15}]},{"label":"Site 2","values":[{"value":5.747,"loqValue":5.895,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1990-04-08","timeLength":27},{"value":7.306,"loqValue":8.274,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1995-08-03","timeLength":22},{"value":0.157,"loqValue":8.873,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2005-11-23","timeLength":10}]},{"label":"Site 3","values":[{"value":6.558,"loqValue":7.329,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1991-08-23","timeLength":9},{"value":1.929,"loqValue":2.338,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1995-10-25","timeLength":8},{"value":8.103,"loqValue":0.961,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1994-07-14","timeLength":13},{"value":8.053,"loqValue":5.394,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"1991-09-13","timeLength":7},{"value":5.431,"loqValue":2.877,"loqMethodCode":"INS","unit":"ng_m3","dateTime":null,"dateTimeString":"2001-05-01","timeLength":10}]}]';
timeSeriesData = jsonlite::fromJSON(timeSeriesDataJson);
# timeSeriesData$values[[1]]$value
# class(timeSeriesData$values)
timeSeries <- function(records, centralValueType="median", whiskerValueType="5_95", transformationType="none")
{
  ## body prvni casove rady (ConcentrationValue)
  cv1_1<-list(value=2.580,loqValue=1.89,
                   label="Site1",
                   loqMethodCode = "INS",
                   unit="ng_m3",
                   dateTime=NA,
                   dateTimeString="2000-02-26",
                   timeLength=23);
  cv1_2<-list(value=3.580,
                   loqValue=2.89,
                   label="Site1",
                   loqMethodCode = "INS",
                   unit="ng_m3",
                   dateTime=NA,
                   dateTimeString="2002-02-26",
                   timeLength=18);
  cv1_3<-list(value=4.580,
                   loqValue=3.89,
                   label="Site1",
                   loqMethodCode = "INS",
                   unit="ng_m3",
                   dateTime=NA,
                   dateTimeString="2004-02-26",
                   timeLength=12);
  cv1_4<-list(value=2.580,
              loqValue=1.89,
              label="Site1",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="2004-04-26",
              timeLength=18);
  cv1_5<-list(value=1.580,
              loqValue=0.89,
              label="Site1",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="2005-01-26",
              timeLength=12);
  
  
  ## body druhe casove rady (ConcentrationValue)
  cv2_1<-list(value=4.580,loqValue=1.89,
              label="Site2",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="1997-02-26",
              timeLength=23);
  cv2_2<-list(value=3.580,
              loqValue=1.89,
              label="Site2",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="1998-02-26",
              timeLength=18);
  cv2_3<-list(value=4.580,
              loqValue=2.89,
              label="Site2",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="1999-02-26",
              timeLength=12);
  cv2_4<-list(value=2.580,
              loqValue=3.89,
              label="Site2",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="2000-04-26",
              timeLength=18);
  cv2_5<-list(value=4.580,
              loqValue=0.89,
              label="Site2",
              loqMethodCode = "INS",
              unit="ng_m3",
              dateTime=NA,
              dateTimeString="2001-01-26",
              timeLength=12);
  
  
  ## body agregovaneho trendu (AggregationValue)
  aggValue1<-list(label="Annual aggregation",
                n=23,
                nUnderLOQ=NULL,
                unit="ng/m3",
                centralValue=10.8,
                centralValueType="median",
                whiskerTopValue=10,
                whiskerBottomValue=13,
                whiskerType="5/95",
                dateTimeString="2002-01-01");
  
  aggValue2<-list(label="Annual aggregation",
                n=17,
                nUnderLOQ=NULL,
                unit="ng/m3",
                centralValue=14,
                centralValueType="median",
                whiskerTopValue=8.3,
                whiskerBottomValue=19.3,
                whiskerType="5/95",
                dateTimeString="2003-01-01");
  
  aggValue3<-list(label="Annual aggregation",
                n=21,
                nUnderLOQ=NULL,
                unit="ng/m3",
                centralValue=10.8,
                centralValueType="median",
                whiskerTopValue=10,
                whiskerBottomValue=13.3,
                whiskerType="5/95",
                dateTimeString="2004-01-01");

  #prvni usek prvni casove rady
  timeSeriesRecord1_1 <- list(values=list(cv1_1, cv1_2, cv1_3), label="site1 part1");
  #pak je rekneme dira a nasleduje druhy usek prvni casove rady
  timeSeriesRecord1_2 <- list(values=list(cv1_4, cv1_5), label="site1 part2");
  
  # usek druhe casove rady (ta bude bez der)
  timeSeriesRecord2 <- list(values=list(cv2_1, cv2_2, cv2_3, cv2_4, cv2_4), label="site2");
  
  # usek agregovane casove rady
  timeSeriesRecordAgg <-list(values=list(aggValue1,aggValue2,aggValue3), label="Annual aggregation");
  
  ## nyni se z jednotlivych useku slozi kompeltni casove rady
  seriesSet1 <- list(series=list(timeSeriesRecord1_1, timeSeriesRecord1_2), trendSummar=list(delta=2,
                                                                                             superdelta=1,
                                                                                             spearman=3.2,
                                                                                             spearmanP=0.001,
                                                                                             mannKendall=0.9,
                                                                                             mannKendallP=0.001,
                                                                                             daniels=2,
                                                                                             danielsP=0.001,
                                                                                             mean=3.1,
                                                                                             geomean=2.1,
                                                                                             median=2.3,
                                                                                             min=0.1,
                                                                                             max=9,
                                                                                             perc5=0.2,
                                                                                             perc25=0.3,
                                                                                             perc75=7,
                                                                                             perc95=8.2,
                                                                                             geoMean95CIUpperBound=5.8,
                                                                                             geoMean95CILowerBound=1.8,
                                                                                             mean95CIUpperBound=4.7,
                                                                                             mean95CILowerBound=1.2), label="site1");
  seriesSet2 <- list(series=list(timeSeriesRecord2), trendSummar=list(delta=2,
                                                                      superdelta=1,
                                                                      spearman=3.2,
                                                                      spearmanP=0.001,
                                                                      mannKendall=0.9,
                                                                      mannKendallP=0.001,
                                                                      daniels=2,
                                                                      danielsP=0.001,
                                                                      mean=3.1,
                                                                      geomean=2.1,
                                                                      median=2.3,
                                                                      min=0.1,
                                                                      max=9,
                                                                      perc5=0.2,
                                                                      perc25=0.3,
                                                                      perc75=7,
                                                                      perc95=8.2,
                                                                      geoMean95CIUpperBound=5.8,
                                                                      geoMean95CILowerBound=1.8,
                                                                      mean95CIUpperBound=4.7,
                                                                      mean95CILowerBound=1.2), label="site2");
  
  
  timeSeriesDataSeries <- list(seriesSets = list(seriesSet1, seriesSet2),
                               labels = list("Site1", "Site2"),
                               aggSerie = timeSeriesRecordAgg,
                               aggTrendSummary = list(delta=2,
                                                      superdelta=1,
                                                      spearman=3.2,
                                                      spearmanP=0.001,
                                                      mannKendall=0.9,
                                                      mannKendallP=0.001,
                                                      daniels=2,
                                                      danielsP=0.001,
                                                      mean=3.1,
                                                      geomean=2.1,
                                                      median=2.3,
                                                      min=0.1,
                                                      max=9,
                                                      perc5=0.2,
                                                      perc25=0.3,
                                                      perc75=7,
                                                      perc95=8.2,
                                                      geoMean95CIUpperBound=5.8,
                                                      geoMean95CILowerBound=1.8,
                                                      mean95CIUpperBound=4.7,
                                                      mean95CILowerBound=1.2)
                               );
  
  return(timeSeriesDataSeries);
  
}

result = timeSeries();
js = jsonlite::toJSON(result);
js;