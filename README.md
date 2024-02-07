<p align="center">
  <a href="https://polygant.net/opencex/" target="_blank">
    <img alt="OpenCEX Logo" width="500" src="https://github.com/Polygant/OpenCEX/blob/master/logo.png">
  </a>
</p>

<p align="center">
OpenCEX is a free and open source cryptocurrency exchange platform.<br>
Developed by <a href="https://polygant.net" target="_blank">Polygant</a>.  

<p align="center">
<a href="https://a.65.109.204.172.sslip.io" target="_blank">Live demo</a> | <a href="https://polygant.notion.site/OpenCEX-Help-Center-8cf8c842bde947c3818a615a88ceef9c" target="_blank">OpenCEX documentation</a> | <a href="https://t.me/opencex" target="_blank">Telegram chat</a>
</p>

## Main features.

-   Custodial wallet supporting BTC, ETH, BNB, TRX, USDT (ERC-20, BEP-20, TRC-20). Deposit and withdrawal.
-   Order matching engine. Trading pairs BTC-USDT, ETH-USDT, BNB-USDT, TRX-USDT.
-   Professional exchange interface for placing orders.    
-   Simplified interface for quick swap.
-   KYT transaction verification (requires Scorechain keys).
-   KYC verification of users (requires Sumsub keys).
-   SMS 2fa for users (requires Twilio keys).

## System requirements.

<table>
<tr>
<td><b>Minimum</b></td>
<td><b>Recommended</b></td>
</tr>
<tr>
<td>CPU: 4 cores<br>RAM: 16 GB<br>Disks: 40 GB<br>OS: Ubuntu 22.04<br><br><a href="https://www.hetzner.com/cloud" target="_blank">https://www.hetzner.com/cloud</a></td>
<td>CPU: 8 cores<br>RAM: 64 Gb<br>Disks: 2x1Tb NVMe SSD<br>OS: Ubuntu 22.04<br><br><a href="https://www.hetzner.com/dedicated-rootserver/ax51-nvme" target="_blank">https://www.hetzner.com/dedicated-rootserver/ax51-nvme</a></td>
</tr>
</table>

## The software used.

<table>
<tr><td>Docker</td><td>latest</td><td>OS-level virtualization</td></tr>
<tr><td>NGINX</td><td>1.22.0</td><td>Web server</td></tr>
<tr><td>Caddy</td><td>2.6.2</td><td>Router</td></tr>
<tr><td>Postgres</td><td>14.5</td><td>RDBMS</td></tr>
<tr><td>Redis server</td><td>7.0.4</td><td>RDBMS</td></tr>
<tr><td>RabbitMQ</td><td>3.10.7</td><td>Message-broker software</td></tr>
<tr><td>Python</td><td>3.8</td><td>Programming language</td></tr>
<tr><td>Django</td><td>3.2.7</td><td>Python framework</td></tr>
<tr><td>VUE.JS</td><td>3.2.25</td><td>JS framework</td></tr>
<tr><td>NUXT.JS</td><td>2.15.7</td><td>JS framework</td></tr>
<tr><td>Bitcoin Core</td><td>latest</td><td>Bitcoin node</td></tr>
</table>

## Before installing:

-   Watch the installation video [https://youtu.be/c-WnQkvBwf0](https://youtu.be/c-WnQkvBwf0)
-   Order a virtual or physical server, not below the minimum requirements. You will need full access to this server (root). Shared hosting will not work.
-   Bind the IPv4 address you received when purchasing the server to your domain. If you don't have a domain yet, you can use [https://nip.io/](https://nip.io/) or [https://sslip.io/](https://sslip.io/).
-   Sign up for a Google account and get reCAPTCHA V2 keys (invisible). [https://www.google.com/recaptcha/](https://www.google.com/recaptcha/)
-   Get the SMTP server credentials for sending emails (any will do, i.e. [https://www.mailgun.com/](https://www.mailgun.com/)).
-   Register an Infura account ([https://infura.io/](https://infura.io/)) and create an API key + secret.
-   Register an Etherscan account ([https://etherscan.io/](https://etherscan.io/)) and create an API key.
-   You will need BTC, ETH addresses and BNB, TRX addresses(optional) to collect cryptocurrency deposits (cold addresses). If you don't have it yet, you can use any multi-currency wallet like Trust Wallet and generate BTC, ETH, BNB, TRX addresses.
-   OPTIONAL. For BNB и BEP-20 support you will need Bscscan credentials (https://bscscan.com/)
-   OPTIONAL. For TRX and TRC-20 support you will need Trondrid credentials (https://www.trongrid.io/)
-   OPTIONAL. For SMS verification you will need Twilio credentials ([https://twilio.com](https://twilio.com))
-   OPTIONAL. For KYT you need Scorechain credentials ([https://www.scorechain.com/](https://www.scorechain.com/))
-   OPTIONAL. For KYC you will need Sumsub credentials ([https://sumsub.com/](https://sumsub.com/))
    

## Installation

You need to SSH into your server as root and run the following command:

    mkdir /app ; 
    cd /app/ || exit ; 
    git clone https://github.com/Polygant/OpenCEX.git ./deploy ;
    cd deploy ; 
    chmod +x opencex.sh ;
    ./opencex.sh 2>&1 | tee /tmp/install.txt

Installation time ~ 5 minutes.

If something goes wrong you can clean the installation and try again

    cd /app/opencex && docker compose down ; 
    rm -rf /app ;
    docker system prune -a

🥳 Congratulations, the exchange has been successfully installed!  
You can open it by your domain name.

**After installation, you need to download the file /app/openex/backend/save_to_self_and_delete.txt and delete it from the server.**

**Mind that BTC node will take up to 30 hours to fully sync. BTC transactions sent to user addresses in this period will be collected and credited only after a full sync.**

## Documentation
-   [OpenCEX Help Center](https://www.notion.so/polygant/OpenCEX-Help-Center-8cf8c842bde947c3818a615a88ceef9c)
-   [Admin panel Guide](https://docs.google.com/document/d/1VoBFEjzmGXzNHQYfvu8BYHvoSv9Sg73AV9wWGvsRJ04/edit#)

## Partners & Sponsors ❤️
Become a partner: [hello@polygant.net](mailto:hello@polygant.net)

## Donate 💰
You like our product and want to support the team? Nothing could be easier :)

<table>
<tr>
<td><b>Bitcoin (BTC)</b></td>
<td><b>USDT (TRC20)</b></td>
<td><b>ETH, USDT, USDC (ERC20)</b></td>
</tr>
<tr>
<td><img src="https://github.com/Polygant/OpenCEX/assets/119800471/60e3ac1a-ee66-473e-95d7-0c8adff9a5ae" width="250"></td>
<td><img src="https://github.com/Polygant/OpenCEX/assets/119800471/79cb61c0-bea9-45f9-8f9f-15ff0076c0c8" width="250"></td>
<td><img src="https://github.com/Polygant/OpenCEX/assets/119800471/5cf4e880-a33b-406e-926d-ed7a8bd9b910" width="250"></td>
</tr>
</table>

BTC:
**bc1qgdnah2uh49wgnlvpmpnf7jkwz6dm8teuf66ynt**

USDT (TRC-20):
**TShx7cEsDancuqU5PmVPCQ3bUMtZyiqQq2**

ETH, USDT, USDC (ERC-20):
**0x938209344aD987EFB91D7dc1F3957Ce3DD39b95**

## Community
Ask questions at the official community Telegram chat.

## Contributing
Thanks for all your wonderful PRs, issues and ideas.
You’re always welcome to join: check out our contribution guides, open issues and the Telegram chat.

## Can I hire you guys?

OpenCEX was created and backed by Polygant, and is supported through all the years. You can request a consultation or order web and mobile development services by Polygant, just visit our site. 😎

Say hi: [hello@polygant.net](mailto:hello@polygant.net) . We will be happy to work with you!

## License
Apache License, Version 2.0
