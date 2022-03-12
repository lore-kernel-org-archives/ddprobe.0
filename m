Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B3C361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 15:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647099384;
	h=To:Subject:From:Message-Id:Date;
	bh=LSqruBZ4g2aMHe549DvgcKRoHEiQBWVIcHkX55SPXS8=;
	b=aqNvaEqhmUHVp0zi05xTAQWNLBQIQ8U4IP6vjJKKjdJIHL1gcaeowG0+me65uqpM
	OiDboTIZ9Clii9TsQuzig0YmFVkNR+E2wo3rnGLoJUdki0R2SYCace158/uNc09B9Rc
	I02Wx+Hr8ze5iXuPMeXtEEkxE/xQStOvNgNK+prU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647099384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LSqruBZ4g2aMHe549DvgcKRoHEiQBWVIcHkX55SPXS8=;
	b=DXrDGWR0P9tqPIq/O4Ae872a3UhvETI+CVXJB1vR4+m5j2V/vvs4YJDuGUmZrimM
	mC/CqssXfnmXZNe4rlZiCjNU67rmsSK9RQlxVNa1nHpr/ZNHdZr2euQILue+d3i4Fa3
	RoCp0y1SAW0MP+rdsLhbnXEeRINdhuBxPhpMEHJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ec613ab-1c3a3556-59b2-40a3-8b4a-715479db4fef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25aece7d1fdf96465f986237a177e944a0d80d84e119e469d28b6527f2570684
Date: Sat, 12 Mar 2022 15:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647099384
