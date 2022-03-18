Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A868348C0
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647601585;
	h=To:Subject:From:Message-Id:Date;
	bh=DJAZ0GRPR3D1zqZlsxMXqGNeeEXU20DYTeMBYogwQ/g=;
	b=drvl3OkFdpPN/fECfh1UkD2OleT/P8CPR0RiIQKQp4MIY1KbIKi+lB4tbWsVSvKK
	hi3a+H6aFSL2zh9nRb1ziPD+59tDDjag3u1LGOtGwd0Rsah8lo1N+oNVNQ+OTl4przr
	/nef/icnC5rdYeBuu18+3ZCB4IFmZRjBq9yNhLMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647601585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DJAZ0GRPR3D1zqZlsxMXqGNeeEXU20DYTeMBYogwQ/g=;
	b=fsPOd5mfATd5lqCiiHtx63Ws5MtvWsNQJ7oauCqvnMjomzwR59bMyjxSL0/2fBeF
	nryru1yzAbv/FU7zXzXLyLErEu/8IMsYX7jTxI6CBH1fbEpnEraP+ieyEXftjju2xwd
	ZtA9ZQwQdvlVClkTSihtgM/mvazabjpDAwcrpps4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9cb50a8d-43f905db-d9bf-4bb2-9c21-f73c580573de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7503432d198c89d721f607c238b0e7f451d59f74c5e8fa40b44733e400b1880c
Date: Fri, 18 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647601584
