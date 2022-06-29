Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC28F7B
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 00:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656463612;
	h=To:Subject:From:Message-Id:Date;
	bh=JKEon1XJ9mXpZctUtmsUidtg/x/x725zVvHxf3eckHw=;
	b=ODEAk+rC5aQTB0kGZ5uIx4Tt8SmMO+iZJq/VtDanZOw8QJIXSjK78JomTKVRMv+H
	pXFWtymlzX1aL0XheymjTLDTbThKX2SlnAjMACYB40+oUZroTKh0Hrlsh6kJV6YLLH+
	L+rrtM70R9qSjFRLUPELya1akgYysF99cMT7RdQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656463612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JKEon1XJ9mXpZctUtmsUidtg/x/x725zVvHxf3eckHw=;
	b=EXZNsaTBipM92+MUCwmZETNvMrlofL3ujQxo9Z3BunsDQRVfYpbsOFCVfI122Glo
	5/s96zyvi0uuw3gsi8P0zceG07e3VKMS7GfD2P74lq/MJRRfsGb340M19TOhfG4lQG4
	p6cfNszv6ljzguk6rOX2EVOVZy+pMj/GNHYQHVEo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181acecd98f-52495327-8b77-4ede-8acf-2054303ac5e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b80161479e90c918ff3ebda964a5d333e09a4d23df216e51f9dee118a32938f5
Date: Wed, 29 Jun 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656463612
