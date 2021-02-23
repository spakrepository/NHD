<%

dim msg
msg ="Date of contact" & now() & "<br><br>"
msg = msg & "Name: " & Request("name") & "<br><br>"
msg = msg & "email: " & Request("email") & "<br><br>"
msg = msg & "message: " & Request("anliegen") & "<br><br>"




SendEmailNew "shivstuff@gmail.com", "guru@spakcomm.com", "contact us from nowhatch.com", msg

Response.Write("Thanks for contacting us, we'll get back to you shortly")
Response.end


Function SendEmailNew(toEmail, FromEmail, strSubject, strEmailBody)
	 Const cdoSendUsingPickup = 1
        Const cdoSendUsingPort = 2 'Must use this to use Delivery Notification
        Const cdoAnonymous = 0
        Const cdoBasic = 1 ' clear text
        Const cdoNTLM = 2 'NTLM
        'Delivery Status Notifications
        Const cdoDSNDefault = 0 'None
        Const cdoDSNNever = 1 'None
        Const cdoDSNFailure = 2 'Failure
        Const cdoDSNSuccess = 4 'Success
        Const cdoDSNDelay = 8 'Delay
        Const cdoDSNSuccessFailOrDelay = 14 'Success, failure or delay

         set objMsg = CreateObject("CDO.Message")
        set objConf = CreateObject("CDO.Configuration")

        Set objFlds = objConf.Fields
        With objFlds
            .Item("http://schemas.microsoft.com/cdo/configuration/sendusing") = cdoSendUsingPort
            .Item("http://schemas.microsoft.com/cdo/configuration/smtpserver") = "mail.ofizkart.com"
            .Item("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = cdoBasic
            .Item("http://schemas.microsoft.com/cdo/configuration/sendusername") = "customerservice@ofizkart.com"
            .Item("http://schemas.microsoft.com/cdo/configuration/sendpassword") = "Welcome!321"
            .Update
        End With

        With objMsg
            Set .Configuration = objConf
            .To = toEmail
            .BCC = "singh.guru@gmail.com"
            .From = FromEmail
            .Subject = strSubject
            .HTMLBody = strEmailBody
            .Fields.update
            .Send
        End With


End Function

%>
