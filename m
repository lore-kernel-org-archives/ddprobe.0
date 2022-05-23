Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 040BE2F26
	for <ddprobe@lists.linux.dev>; Mon, 23 May 2022 16:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653324119;
	h=To:Subject:From:Message-Id:Date;
	bh=C+osPWk6DkBqqV528/EhnyA3+soZtxGyuIoJcmXsGX0=;
	b=TSkMLNbHMzr/e3fAXrKOS4PEstIpB24kfpTfC2yHeeXItk6p70bFCb9Kh0XtzR1D
	1h3ddQ5L0tnOjMffMsnyBVWq3mZd4XMzXrmY0HeM9uB1A4rkcO+Q050RjKP70fNFW90
	WLgrwUo7O0qsGT0evz59mZH14aaNdwcTwXhZFfiQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653324119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C+osPWk6DkBqqV528/EhnyA3+soZtxGyuIoJcmXsGX0=;
	b=apbMdUxamECSnzeNMg397p4PrjyDZ6xAqfYrPePnk0l2P+kZJL98OkKWGii6XTIb
	a0sw8fkNaQIbcAwr+ZjzWkVjOtHJ6r49AoToDfpVJ4DUSMBcR8DL1IqxVeg+ujdu0im
	HmD6nTwDLIB82yu/BUoYmVLZlPMlAhVeyr89XIBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f1cbfcf1-8e60e8da-f863-40b0-8824-b7603cc0abcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 188a93fcedee2b046d8a2db88f88e079e9e95637a49cde12d065b58eba0ee13b
Date: Mon, 23 May 2022 16:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653324119
