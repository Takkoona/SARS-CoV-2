const ctx = document.getElementById('myChart').getContext('2d');
const data = {
    // Labels should be Date objects
    labels: [new Date(2017, 08, 16), new Date(2017, 08, 17), new Date(2017, 08, 18)],
    datasets: [{
        fill: false,
        label: 'Page Views',
        data: [280, 250, 340],
        borderColor: '#fe8b36',
        backgroundColor: '#fe8b36',
        lineTension: 0,
    }]
}
const options = {
    type: 'line',
    data: data,
    options: {
        fill: false,
        responsive: true,
        scales: {
            xAxes: [{
                type: 'time',
                display: true,
                scaleLabel: {
                    display: true,
                    labelString: "Date",
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                },
                display: true,
                scaleLabel: {
                    display: true,
                    labelString: "Page Views",
                }
            }]
        }
    }
}
const chart = new Chart(ctx, options);