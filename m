Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 320357E0
	for <ddprobe@lists.linux.dev>; Thu, 31 Mar 2022 04:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648701898;
	h=To:Subject:From:Message-Id:Date;
	bh=noFvO9Ys2IuIi/iPU1XHbSX1Mgel0uVWDadvvtAT0ho=;
	b=QPDoDEdrZo1/039ZbPRtAi4coE+5J0MqBunZpLy8BlhqH0M+4IVhJIAhQ38QaWye
	/taX1nLys/FQvSi/5xh1p+8xdafkvsNe98h5nFvoC2a8kBQjEolHGusC3lNURdyRwth
	XB85dr6DDsUKHmee8qlmNAI/qM8MIo1KSt1hgXXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648701898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=noFvO9Ys2IuIi/iPU1XHbSX1Mgel0uVWDadvvtAT0ho=;
	b=kwgSjEXaux4MAhMAMQM/Lapl7V/bPakAre0/hpolx1VIEzbhmnUXCXpV3/NRlovv
	eYE0Zg6vPLsTLtznd/i1/+6OQlM+/dH4JFnCLR4N8F5VpXJpyy/GI/s8Z+C4HYs1a2J
	Ci7EX3LI0a7dpp9awiBUHe6m0fMvvc7HRLK/bJ+k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fde4a7e3e-8cfcd484-3deb-4bfc-a4f4-1115af89f314-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 54ece7873c5f543c7654bfe30524fcde9ad5ae9dd3a7dbe73104d89a500552ac
Date: Thu, 31 Mar 2022 04:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648701898
