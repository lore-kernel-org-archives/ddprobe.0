Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7150B3B5A
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645086084;
	h=To:Subject:From:Message-Id:Date;
	bh=LdPxAH6bgVpvLufkhkekCXozZVtdg58hR+yBXl956aQ=;
	b=bPzoS1tWeSgwsPIsbSsSWc+Oheg6rnS2iplq+1ML8+5CadxbMzZBfR2rVsxHCxpW
	BUhCl4aDLSyJWiUyFRlcSfg0Zd4n+mo9xVrUuBAwxZ8Foic92KK/kK9WhafyTdR9fSL
	GtI2pid+5v07VH/lBGBkfPFMcCYUGgaeQBf/8RRM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645086084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LdPxAH6bgVpvLufkhkekCXozZVtdg58hR+yBXl956aQ=;
	b=dsQFoj/5U+rQXiAdErgM5G4OLPZr1KfEQ1A8Yi7e2MvTFOYBODsyzRr8XwUZMkb+
	1OzK9kbBjXsNMA0xpiINe7goNEhHEy7RyAcFgiUVUhaBTYGJv6DJ4pg+Eu159PcIrEv
	r+6QLZ6YrlYvOD/aX/XWL8OYPF/6v1KH+DFNmq08=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f06c58ebe-da2e05bb-d363-453f-a2f0-817f6a5257e7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 644a0ac433a7b54162b1d746ec42009c079c96c949a86468b67d66cfc4a618cc
Date: Thu, 17 Feb 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645086084
