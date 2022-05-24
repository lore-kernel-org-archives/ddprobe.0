Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0614A7C
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 05:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653370979;
	h=To:Subject:From:Message-Id:Date;
	bh=D5oqoXMBt1+jDxxzr4uqLStPB4i9rJOV6GIxjIVJmAc=;
	b=kz6Ym/KMTc3EDVmA7n1TOTXEOGL6Zs363RYGqB7XLB2nqwOiA89UpmISv6yfr/p0
	QfHZQ/jYLyYe7E0NijaB+kmWma4l+hAq7VpDOHMXHSn/NeMtpt1s5pMLej0eJWYSsny
	ZDEgpkahBkbijd60oNLncbJHflPkMOYdtAT/AptU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653370979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D5oqoXMBt1+jDxxzr4uqLStPB4i9rJOV6GIxjIVJmAc=;
	b=cpOw0Ir/MsVpo5u04s74b5pKzyTRFVWu5MNUOs9GtvWGHVvDJI3+QW1VRWESQ/78
	XTZOIxEXHKaiZwMgrO7570lr6QWUq+ANluaFuvf37c/ZsMtfMKiDt7fyAnFao//zeou
	xvdquE0WrN3GpyaN1nvTy9SwBIEhKGNaNcnIjpmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f49703c0-9df61025-e57c-43d7-bfb2-5fe2cfad9b38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 630e3198105721ade99c2790a891301d8a1f4d14a68cd66aaacf7769ddd0a189
Date: Tue, 24 May 2022 05:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653370979
