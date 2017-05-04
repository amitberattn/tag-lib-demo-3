<head>
    <asset:stylesheet src="bootstrap.min.css"/>
</head>

<body>
<h1 style="text-align: center">Registration Form</h1>

<div class="container">
    <div class="well">

        <g:hasErrors bean="${user}">
            <div class="alert alert-danger">
                <g:eachError><g:message error="${it}"/></g:eachError>
            </div>
        </g:hasErrors>
        <g:renderErrors bean="${user}"/>
        <g:form action="save">
            <g:hiddenField name="userTime" value="${currentTime}"></g:hiddenField>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="firstName">First Name</label>
                    </div>

                    <div class="col-md-3">
                        <g:textField class="form-control" name="firstName" value="${user?.firstName}"/>
                        <div class="alert-danger" role="alert">
                            <g:fieldError field="firstName" bean="${user}"/>
                        </div>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="lastName">LastName</label>
                    </div>

                    <div class="col-md-3">
                        <g:textField class="form-control" name="lastName" required="required"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="password">Password</label>
                    </div>

                    <div class="col-md-3">
                        <g:passwordField class="form-control" name="password"/>
                    </div>
                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">
                        <label for="description">Something About You</label>
                    </div>

                    <div class="col-md-3">
                        <g:textArea class="form-control" name="description"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">Gender</div>
                    <g:radioGroup class="form-control" values="${[true, false]}" labels="${["Male", "Female"]}"
                                  name="gender">
                        <label>
                            <span class="radioSpan">${it.radio}</span>
                            ${it.label}
                        </label>
                    </g:radioGroup>

                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">Country</div>

                    <div class="col-md-3">
                        <g:countrySelect class="form-control" name="country"/>
                    </div>

                </div>
            </div>


            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">Religion</div>

                    <div class="col-md-3">
                        <g:select class="form-control col-md-4" name="religion" from="${Religion.values()}"
                                  keys="${Religion.values()*.displayName}"/>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <div class="row">
                    <div class="col-md-2">Send Updates</div>

                    <div class="col-md-3"><g:checkBox name="sendUpdates"/></div>
                </div>
            </div>

            <div class="pull-right">Current Time:::<g:formatDate date="${currentTime}"
                                                                 format="dd/MM/yyyy hh:mm:ss"/></div>
            <g:submitButton class="btn btn-success" name="save" value="save"/>
            <g:actionSubmit class="btn btn-primary" value="${message(code: 'default.button.edit.label')}"
                            action="edit"/>


        %{--
         for internationalization
        <g:actionSubmit value="${message(code: 'default.paginate.next' , locale: 'fr')}" action="save"/>--}%

        </g:form>
    </div>
</div>
</body>
