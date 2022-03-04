Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA167A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 14:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646403085;
	h=To:Subject:From:Message-Id:Date;
	bh=BquOCQt4B7s2hxQc0BCKCs/c2E2h2y6hacVWPvmB+yQ=;
	b=QK6SsmaHyaE2slA15/zYvhFPeC7MaU9BRQdqkEI61iYUEn6BJoqFF3a1a7P8wDrF
	3g9XvNnDtl9A5Hxml1T4xPsqrAuqZcITUDPy9uuv49Znn0NenFn3+S+Cmk8XAkOQnqb
	KfgnOW/8OAdstQf/lEAUEdRd+m0Kyg2/nPoi/5lw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646403085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BquOCQt4B7s2hxQc0BCKCs/c2E2h2y6hacVWPvmB+yQ=;
	b=TJCxOJle+JMayldc/LAMg7RXeSMbahg0oUX0TThBl90uoMKycecRkNE3R8Ku6tgx
	ZMm/RGL2DVR9sLzNvGQrMCe51Cu1dIy0PBpUmBMErvAd4HIq6VM6BJqEk1GXT8AJkKY
	rKi3Yqlf4b4BPACqYPKFzRQvjdLxpG5fQoHNkeOM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f554561bd-a967ce21-3511-4f63-8402-c756081ade82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 476fd1af3b2329eae7f80ae31cb378f4047f7f8f106567a1837c0ad38c928ad6
Date: Fri, 4 Mar 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646403084
