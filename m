Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAD687EC
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650276239;
	h=To:Subject:From:Message-Id:Date;
	bh=hzxh8gul0FT+1W95w1a6/AQMFNhfwfZCa6trCZa1AJQ=;
	b=bU7x1BK2adeEFB5QWCbjLYMB+dyH7kLtT+MrwRmkfbjT18696upNieM7yP5/g7pU
	nuYz+ZbQMQnq2v4R1KamDQVr4pTGBm2+qcSUJ9AdztjTBy+juc9jUtA3ggZydSPctRR
	soNlXCSxVPYMUhijBDXqVt6JkLWsd3sbjqJSCHHo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650276239;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hzxh8gul0FT+1W95w1a6/AQMFNhfwfZCa6trCZa1AJQ=;
	b=YIGHKcrkVDUmgVJxBCzyLZQSE1ZM1yoCnvITOJ0geF53PhCmaErTzux8RRTJ8ZDJ
	LPSIjuytnD6Xjasj9htQUF5WbDIA4UH5yLEo4gifLN8l7RwT0I4pxRxMtbvDFdamsy/
	Aamfo97Nl0AAcgSrE9TotV2c45EyBczmW0EJa/pA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803c210430-ca754cae-80b4-484d-b1a1-8629fe6a5336-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dac27b066e27c8207048af5e39c5cc0d14a084e6a385c901c79d458a07ca3a28
Date: Mon, 18 Apr 2022 10:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650276238
