class AuthenticationMail < ApplicationMailer
    def welcom_email
           mail from: 'qoflqot@naver.com', 
           to: 'sunssun2@naver.com',
           subject: 'test',
           body: 'test'
    end
end
