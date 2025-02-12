@impl:'cf-serviceHandler'
service CFService @(path: '/cfinfo'){
    function getApplications() returns String;
}