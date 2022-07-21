Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 316A04690
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 17:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658425612;
	h=To:Subject:From:Message-Id:Date;
	bh=lkDluIqvX3Xk9sr5OAjyQFFvZkSxLyWUfelafHt5Qqs=;
	b=Rht5G9mk1nhbXyVIvLcfDSPUurHe4VCD673YIDQH94bZTG5smVGfUDaRO25KIoRh
	4eqRmlMIpXxuOyJKgQ7fuSC2aII4f11HhHl/hULhheyfUzSkGMgH4s/mfhrkmnzZt85
	TxTMbQerpw0bAyTpaA1W4gtvAUz9INXK01LDyICo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658425612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lkDluIqvX3Xk9sr5OAjyQFFvZkSxLyWUfelafHt5Qqs=;
	b=f4qWJIio1oDAbhmfug9aeXJTxFt9XkTAm4etJt1+rXjluJ9gj3esUffGdL67Djpe
	NufJHjylEfbtcFKmHx5DX1ztRZmLHRaRYKTTjQnjwcmgBV+RWrqoFlyYV/uB+hk9Lg1
	D4gPsc8eKA8vrLgNV4ZM/2UCSFJvhcA4O2wbUmdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018221de983a-8b53b392-f5cb-41c8-a733-3ee2ba21b6a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5077a99f0dfaf6d66169ab2e4cdf3b1df9c791811f7e45a404c8b2874f8c2c18
Date: Thu, 21 Jul 2022 17:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658425612
