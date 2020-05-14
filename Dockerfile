FROM kalilinux/kali-rolling
RUN apt-get update && \
    apt-get upgrade -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    nmap sqlmap python python3 netcat-traditional net-tools iproute2 nikto curl iputils-ping openssh-client && \
    curl "https://raw.githubusercontent.com/diego-treitos/linux-smart-enumeration/master/lse.sh" -o /usr/local/bin/lse.sh && \
    chmod a+x /usr/local/bin/lse.sh && \
    curl "https://raw.githubusercontent.com/rebootuser/LinEnum/master/LinEnum.sh" -o /usr/local/bin/LinEnum.sh && \
    chmod a+x /usr/local/bin/LinEnum.sh && \
    rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
