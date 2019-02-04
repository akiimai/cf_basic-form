<cfparam name="form.submitted" default="0" />
<cfparam name="form.firstName" default="" />
<cfparam name="form.lastName" default="" />
<cfparam name="form.email" default="" /> 
<cfparam name="form.message" default="" /> 
<cfparam name="page" default="index.cfm" />

<cfset validation = false />
<cfset first = 'display: none;' />
<cfset last = 'display: none;' />
<cfset email = 'display: none;' />
<cfset formData = '' />

<!DOCTYPE html>
<html style="height: 100%">

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

<body style="height: 100%">
    <div class="container-fluid" style="position: absolute; top: 10%">
        <div class="row justify-content-center">
            <cfif form.submitted>                         
                <cfif len(trim(form.firstName)) LESS THAN 2>
                    <cfset validation = true />
                    <cfset first = '' />
                </cfif>	
                                
                <cfif len(trim(form.lastName)) LESS THAN 2>
                    <cfset validation = true />
                    <cfset last = '' />
                </cfif>	
                                
                <cfif len(trim(form.email)) LESS THAN 2>
                    <cfset validation = true />
                    <cfset email = '' />
                </cfif>	
                                
                <cfif validation eq true> 
                    <cfset page = "index.cfm"/>
                <cfelseif validation eq false>
                    <cfset formData = "firstName=#form.firstName#&lastName=#form.lastName#&email=#form.email#&message=#form.message#" />
                    <cflocation url= "thank-you.cfm?#formData#" addToken = "no">
                </cfif>	
            </cfif>

            <cfoutput>
                <form id="form" action="#page#" method="POST" class="col-4" style="font-family: 'Open Sans', sans-serif;">
                    <h1 class="pb-2" style="font-family: 'Shadows Into Light'; font-size: 4rem">My Guestbook</h1>
                    <div class="form-row">
                        <div class="form-group col-6">
                            <label for="firstName">First Name *</label>
                            <input type="text" class="form-control" name="firstName" placeholder="Enter First Name" value="#form.firstName#" />
                            
                            <cfif validation eq true>
                                <small class="form-text" style="#first# color: red">First name is required</small>
                            </cfif>
                        </div>

                        <div class="form-group col-6">
                            <label for="lastName">Last Name *</label>
                            <input type="text" class="form-control" name="lastName" placeholder="Enter Last Name" value="#form.lastName#">
                            
                            <small class="form-text" style="#last# color: red">Last name is required</small>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email">Email Address *</label>
                        <input type="text" class="form-control" name="email" placeholder="Enter Email Address" value="#form.email#">

                        <small class="form-text" style="#email# color: red">Email address is required</small>
                    </div>

                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea class="form-control" rows="5" name="message" placeholder="Enter Message" value="#form.message#"></textarea>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-info px-10">Submit</button>
                    </div>
                        <input type="hidden" name="submitted" value="1" />
                </form>
            </cfoutput> 
        </div> 
    </div>
</body>

</html>