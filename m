Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7361C320A
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660347052;
	h=To:Subject:From:Message-Id:Date;
	bh=xAtDhBXUey22h27XG7Ipm9F2820LCQ3Kjq6vgzFbNRo=;
	b=GbIZLv3TTqKsVnlYHg5uKv6Vimv8GRCKfOwjbq9q1/KiPUX4fGS6RMWWHKyUaGfs
	rEY0C9mAgTlGLjTvNlIdv15m+EUwiJNdjYidVktdK6LrAuXGT+8ZOzjio3lQfdeHLMA
	2ZL0n5uNrWSVgmSoEzSW6FIt17pXDRm3ZLUsm+NA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660347052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xAtDhBXUey22h27XG7Ipm9F2820LCQ3Kjq6vgzFbNRo=;
	b=Nr3EHTVi4pP3aGtZ+KrX5Twh6cHa8uwDrD4eRcsJ5607SkA6x8bjq3EzlXgRCpgN
	Ys/L2lIsJlbVPu+Lfmo6EJrbvk7FgPrMgFe2qTCJ2qd0Kk7bFLHdC6NMsAJcssqEqM3
	US6SEvd5UFSATFANM3frHerf1mE1is4CSBrgKBbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829465723a-94bde931-d4be-43ec-bce7-168e0c31e34b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd1e9642aac19abdc7a5a2d9dfb65f73fbaed5f0aa5f5e00c64d0a70b7ecfba
Date: Fri, 12 Aug 2022 23:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660347052
