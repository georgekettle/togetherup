import { Controller } from "@hotwired/stimulus"
import ApexCharts from 'apexcharts'

export default class extends Controller {
  static values = {
    data: {
      type: Array,
      default: []
    }
  }
  connect() {
    var options = {
      chart: {
        type: 'line'
      },
      series: [
        {
          name: 'actual',
          // data: this.dataValue,
          data: [30, 40, 35, 50, 49, 60, 70, 91, 125]
        }
      ],
      xaxis: {
        categories: [1991, 1992, 1993, 1994, 1995, 1996, 1997, 1998, 1999]
      }
    }
    
    this.chart = new ApexCharts(this.element, options)
    this.chart.render()
  }

  disconnect() {
    this.chart.destroy()
  }
}
