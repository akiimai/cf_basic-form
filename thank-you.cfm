<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="main.css" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
        crossorigin="anonymous">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Shadows+Into+Light" rel="stylesheet">

    <title>CF Code Challenge</title>
</head>

<body>
    <div class="container-fluid" style="position: absolute; top: 10%">
        <div class="row justify-content-center">
            <div style="font-family: 'Open Sans', sans-serif;" class="col-4">
                <h1 class="pb-2" style="font-family: 'Shadows Into Light'; font-size: 4rem ">Thank you!</h1>
                <h3 >Your Info:</h3>

                <cfoutput>
                <div>
                    <p>First Name:  #firstName#</p>
                    <p>Last Name:  #lastName#</p>
                    <p>Email Address: #email#</p>

                    <cfif trim(message) eq ''>
                        <p>Message: <span style="color: red">None<span></p>   
                    <cfelse>
                        <p>Message: #message#</p>   
                    </cfif>              
                </div>
                </cfoutput>
                    <a href="index.cfm" class="btn btn-info" role="button">Back to Guestbook</a>
            </div>
        </div>
    </div>
</body>

</html>