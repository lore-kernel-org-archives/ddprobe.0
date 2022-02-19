Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1C728E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645232485;
	h=To:Subject:From:Message-Id:Date;
	bh=vqnDujTihNBhKug9VwupPFLoRqAWkyrKdlCIe5LYVaY=;
	b=JQfnCMxdCUUfS0R0F724jB47kRLpqJiZr5LpIRXpjfhD2iktpFfebxAxck+UkGqP
	QlHU8tneg60PvqQN1dr6HieZFNHBt1M6YXtoH+hMUOszxsJaQ1AnVCqlLyaQESzUbwu
	f6rAdOmcmLJH7sVeFBzIiIdqFaisUdFiHvu8XVAM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645232485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vqnDujTihNBhKug9VwupPFLoRqAWkyrKdlCIe5LYVaY=;
	b=krFm1CnNI4JDL2Nq1muPY8gmtHL5WmogWKuPC5F/RbGhklTPGSjqTG1KTARLGW1h
	xCDUe7j7LyXZrPHZsoMneQY+0oyJn+cZ8OvbP7vnU2GeoCYYWODXMdQiqAe1D5VT1hz
	L4zoSr2avVhLS2wMDuyF31sGugzym5fumXQBRYxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f7f7189-60864b13-7137-4c55-a63a-501d4673fe10-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4628ca453850fa17a0661b140d55880781c1843d8780b56e0a7fb140a60f2459
Date: Sat, 19 Feb 2022 01:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645232484
