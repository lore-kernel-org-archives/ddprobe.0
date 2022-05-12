Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C46817C1
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 03:22:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652325719;
	h=To:Subject:From:Message-Id:Date;
	bh=qQrl3k1vs94VojtZLEeQqRIGG3FGleti8RCqPhx/p3s=;
	b=aX3FvaDP0IOWiy/pVivlQHeroIcvZO8khJhAbQLN9qRTr8P2T2KYm9kIVBP7Bro4
	eiIqeTJAYL+ZoNdB+yIHwD/2VRzq1+Uvahry30QXW7Vzl2b3Qb64tlZQfSHWdMbQEuE
	hxX3mC6M/B2LL1UFmJIyp5O+uq5j1GRur7Ywy6v0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652325719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qQrl3k1vs94VojtZLEeQqRIGG3FGleti8RCqPhx/p3s=;
	b=j/waxTSzzDuJ29NrXrRG4sFE+cVybG2bolzbQ/gsax9TP1cu3FifZxY9KVE+4OSV
	Kb/pOB8H79Br3a2CXIol/PClcul8EmWP26LyaSi+pH5LXDYTSIK4Lbaly9aEuPx4qVy
	b4BxRH8V81XiDG3yFxyu62uqFp4QPNoaBKdsSvBc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b6499d2b-65a1da1c-2aab-4bd2-9235-f8a1c94284f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f02b92675586a161ab8d08ef7a933d065b363ecfa788c2128365d6d88f21c49
Date: Thu, 12 May 2022 03:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652325719
