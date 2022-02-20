Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F118613A
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 23:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645399584;
	h=To:Subject:From:Message-Id:Date;
	bh=g1HLuKP2YAZv7zsA91oql3tIRH4/AYP4LvjKimZMDQU=;
	b=Ru+fFNHW1SSZbyoMKHCXHV683nMuAh2wrh2zDYHC1+uOQQFH1hE6ne9cCuYcokHF
	StR0g7fDdvchqOpArOC1FD3jMhZJYxwt9tq9HlRJAhATUyW4r0CCYQ2ugh4r/Oe7TQx
	XU7tcGAk19VBilfUxpyC2S9AgvedM5xyuhTQW7to=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645399584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g1HLuKP2YAZv7zsA91oql3tIRH4/AYP4LvjKimZMDQU=;
	b=BoR360pYw5/iA4/wMAVs7YJtVFJNPaUhDMOwTvgKPcPujLkgbUMMslMqWD2kYkHQ
	vxNDclqBN66/ed6B40Es+zj57hmyStezGfpBP01S0STVPXGSwQQp976ka3i1OZNyJX7
	oOti/EF5BFKtoXSPvwfFD4N3STuwP/GACvSP6qNw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19753027-afe4cfb0-40cb-4983-b8e7-a4b2f7f3a1e5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9069e1a62484bd60d270d52618c7150df93419aafcd93d6828f146b0fe1dbb03
Date: Sun, 20 Feb 2022 23:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645399584
