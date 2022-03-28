Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 553A517E9
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 07:08:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648451338;
	h=To:Subject:From:Message-Id:Date;
	bh=SF/FLMuX1BBYw2GBVeWh7M+QSEw4OuxA1HMQLW+wo40=;
	b=K0JdQ4zPn0cYBCKzjYKx4/tGhefdCamHKs5FUO3MBGF7xCyLE1hG59xAMOlwGcgE
	j7TBuuJhKMRWmlBTf0xzSmtW7nwZRn4MPGS9ffMv72SH5sLgsniRYh4K3cbcr9YnWLn
	GyTqeOjI+JelbNCawHV6xQUCk+l12vQEsDYlLg8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648451338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SF/FLMuX1BBYw2GBVeWh7M+QSEw4OuxA1HMQLW+wo40=;
	b=hVo78cGiVe9Jj+3j8Foks7tfKHMcu9+yJAiCOQxIgUJ7vlUJ241Tu7DYO98FIi8E
	icPSpVDVh32OaooNYiA5/AZSiVxAK9OWGIf6YmEAPL2Lv2FNDHqh48zV2xKvj373fT2
	pxGBwGHS1uBCVcEVnlWmMf2cpD+1ivKyeQti1Dh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcf5b3ff6-edbcec67-207b-4774-8e68-4b97048b91bb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7652d1d6548d2870946fb2536e40aebc5a841d6ad2b2cc476eb907c14ee9ff6c
Date: Mon, 28 Mar 2022 07:08:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648451338
