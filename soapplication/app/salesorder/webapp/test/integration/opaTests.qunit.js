sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'salesorder/test/integration/FirstJourney',
		'salesorder/test/integration/pages/SalesOrderList',
		'salesorder/test/integration/pages/SalesOrderObjectPage',
		'salesorder/test/integration/pages/SalesOrderItemObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrderList, SalesOrderObjectPage, SalesOrderItemObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('salesorder') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrderList: SalesOrderList,
					onTheSalesOrderObjectPage: SalesOrderObjectPage,
					onTheSalesOrderItemObjectPage: SalesOrderItemObjectPage
                }
            },
            opaJourney.run
        );
    }
);