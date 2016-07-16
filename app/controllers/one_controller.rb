class OneController < ApplicationController
  def index
    @chart = LazyHighCharts::HighChart.new('graph') do |f|
      f.xAxis(categories: ["2015", "2016"])
      f.series(name: "GDP in Billions", yAxis: 0, data: [14119, 5068, 4985, 3339, 2656])
      f.series(name: "Population in Millions", yAxis: 0, data: [310, 127, 1340, 81, 65])

      f.yAxis [
        {title: {text: "GDP in Billions", margin: 70} },
        {title: {text: ""}, opposite: true},
      ]

      f.legend(align: 'bottom', verticalAlign: 'bottom', y: -10, x: 250, layout: 'horizontal')
      f.chart({defaultSeriesType: "line"})
    end

    @graph = LazyHighCharts::HighChart.new('column') do |f|
      f.series(:name=>'Correct',:data=> [1, 2, 3, 4, 5])
      f.series(:name=>'Incorrect',:data=> [10, 2, 3, 1, 4])
      f.title({ :text=>"clickable bar chart"})
      f.legend({:align => 'right',
        :x => -100,
        :verticalAlign=>'top',
        :y=>20,
        :floating=>"true",
        :backgroundColor=>'#FFFFFF',
        :borderColor=>'#FFFFFF',
        :borderWidth=>1,
        :shadow=>"false"
        })
        f.options[:chart][:defaultSeriesType] = "column"
        f.options[:xAxis] = {:plot_bands => "none", :title=>{:text=>"Time"}, :categories => ["1.1.2011", "2.1.2011", "3.1.2011", "4.1.2011", "5.1.2011"]}
        f.options[:yAxis][:title] = {:text=>"Answers"}
        f.plotOptions(series: {
          :cursor => 'pointer',
          :point => {:events => {:click => "click_function"} }
        })
      end

  end
end
