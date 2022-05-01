Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F32E2F3C
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 23:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651447738;
	h=To:Subject:From:Message-Id:Date;
	bh=OyF4Tb5TnzL03xvZGZQ/xslxnWvNCtDnOknqLbZ4/vo=;
	b=gmiMDo8Dj6drcOlJfMhrWEghTGT0CYx02kw4ZBVehkbZINYz0e1DeZJuGF8vdm5t
	XC31hKy+hsmHm1zGcv0Tmngocimej/g+bw/WNGYWn9pfiz4FYzGB+Dta4HiPhC09Quw
	Bu9dafy14abJXNhqCCTGAp2AaYN2c1qzkca0vKZA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651447738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OyF4Tb5TnzL03xvZGZQ/xslxnWvNCtDnOknqLbZ4/vo=;
	b=k3P6I/7j8zx6CPuoA5mT1bpWgMm2rAbQUgyWCZUGhg0evXOL4vZo8kVe31usHfJG
	Zpdcep4iuXudUhvmnlXhuZfVB1jyB2vCfXqjDpQ7ZO3ugA8Wd3nfAEM4yltIvWj8ylQ
	JulYEyEEyDsXxRRRKZON2/H1iMpQ1IaHT1E8Xw9k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018081f4af78-c637ccb1-8809-4713-aff4-b984608c83ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8096abc6e26d2f677c63a0212d059f8ab7c34a2628f0160d8d5ad413a8478637
Date: Sun, 1 May 2022 23:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651447738
