Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F38E264C
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 04:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650256138;
	h=To:Subject:From:Message-Id:Date;
	bh=59/XJOT5ekrTd/rkd32TtpKHWDihHlJFYtQI1uqKHDk=;
	b=bxeA8yes3q4c1wJY43s4BPioNRwYd+6DQGw0LAL8vsNqVU12p6mjAR7nNdE1Eumw
	XYk454+OVe24DFCUoMooJiSob8bz8l6/PV9szCydWMU1EHS7UTWqSibyRnCe1f3RuTU
	R1m8EoO6+WwT9UvMyTBy8kxPnyl44VMcyXJeLSSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650256138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=59/XJOT5ekrTd/rkd32TtpKHWDihHlJFYtQI1uqKHDk=;
	b=GmOAtlflX3QFv4yEQdqT0NEQBwNJcvSSQ7Eyoa057BQlmD42a+5fBjHUg2hPl6F0
	XXolEDdVuRxfjt56tT5azGGyJEIu9qnzGfw+TUOQASRiGI/weI+fQLSqU9v2lvRtKUD
	JpG9HsDwrk3TRdi0B7Pu6rTSGUC9WULHeoqfLXW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803aee5022-ff012840-fd01-4e9f-bae8-31ce78f2bbdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 03578d2a25530ecf11aafd77afeb37a266eb59673b6079f190b8aaabaaa25665
Date: Mon, 18 Apr 2022 04:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650256138
