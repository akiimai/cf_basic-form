<cfparam name="form.submitted" default="0" />
<cfparam name="form.firstName" default="" />
<cfparam name="form.lastName" default="" />
<cfparam name="form.email" default="" /> 
<cfparam name="form.message" default="" /> 
<cfset validation = false />
<cfset first = 'display: none;' />
<cfset last = 'display: none;' />
<cfset email = 'display: none;' />

<cfinclude template="header.cfm">
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
                            
            <cfif validation eq false>
                <cfset session.firstName = "#form.firstName#">
                <cfset session.lastName = "#form.lastName#">
                <cfset session.email = "#form.email#">
                <cfset session.message = "#form.message#">
                <cflocation url="thank-you.cfm" addToken="no">
            </cfif>	
        </cfif>

        <cfoutput>
            <form id="form" action="index.cfm" method="POST" class="col-4 pt-3 pb-5 px-4" style="font-family: 'Open Sans', sans-serif; background-color: ##F5F5F5">
                <h1 class="pb-4" style="font-family: 'Shadows Into Light'; font-size: 4rem; text-align:center">My Guestbook</h1>
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
                <div class="pt-3" style="text-align: center">
                    <button type="submit" class="btn btn-info px-5">Submit</button>
                </div>
                    <input type="hidden" name="submitted" value="1" />
            </form>
        </cfoutput> 
        </div> 
        <!--- row --->
    </div>
    <!--- container --->
</body>

</html>