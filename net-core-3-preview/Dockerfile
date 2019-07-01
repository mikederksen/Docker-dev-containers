FROM mcr.microsoft.com/dotnet/core/sdk:3.0.100-preview6-alpine3.9

# SetUp development directory
RUN mkdir /root/development
VOLUME /root/development

# Install openssh and update the config file to permit root login
RUN apk add --no-cache openssh
RUN sed -i s/#PermitRootLogin.*/PermitRootLogin\ yes/ /etc/ssh/sshd_config

# Change default password. This is used for logging into ssh
RUN echo "root:Welkom@Docker01" | chpasswd

EXPOSE 22

# chmod +x makes the file executable 
COPY entrypoint.sh /
RUN chmod  +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]