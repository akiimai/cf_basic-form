<cfinclude template="header.cfm">
            <div style="font-family: 'Open Sans', sans-serif; background-color: #F5F5F5; text-align: center" class="col-4 pt-3 pb-5">
                <h1 class="pb-2" style="font-family: 'Shadows Into Light'; font-size: 4rem ">Thank you!</h1>
                <h3 class="pb-3">Your Info:</h3>

                <cfoutput>
                <div style="text-align: left; padding: 0 4rem 2rem;">
                    <p><strong>First Name: </strong> #session.firstName#</p>
                    <p><strong>Last Name: </strong> #session.lastName#</p>
                    <p><strong>Email Address: </strong> #session.email#</p>

                    <cfif trim(session.message) eq ''>
                        <p><strong>Message: </strong><span style="color: ##E80000">None<span></p>   
                    <cfelse>
                        <p><strong>Message: </strong>#session.message#</p>   
                    </cfif>               
                </div>
                </cfoutput>
                <a href="index.cfm" class="btn btn-info" role="button">Back to Guestbook</a>
            </div>
        </div> 
        <!--- row --->
    </div> 
    <!--- container ---> 
</body>

</html>