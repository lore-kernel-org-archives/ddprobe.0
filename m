Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEF47E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 00:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652832959;
	h=To:Subject:From:Message-Id:Date;
	bh=0I8OsK809TMiIHCUZ/8sSsI/AwOAt+/sqZa2uekZbWE=;
	b=NwMRC6dNblLDh1s+br52+0bYidSC1TKPWICXP6ZdbzSv6vyZg+in2Wzw1j5pDbnk
	EDHXSZv+7QHZnORN2LwUcaVvyneY+07zA0Zd8G2U45Xp7rW7oJoeuQtnfTtyUjyDuQK
	UUOEaBlVijMGLIOvw3CcXNPmYoZ3fAcNkx1GccIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652832959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0I8OsK809TMiIHCUZ/8sSsI/AwOAt+/sqZa2uekZbWE=;
	b=WTj47MuQFOuJgkLwXTG6Pcuz9AZkdXdh3T+muh+aSQ/iMiCVCdqtlcAShORZ8hMb
	ZAp+yDxvhffkV2+rEfBB9O7VjV+m+Gfg4qGPLvJtl9xmqpXiQHKk5JGIGXMbBt6gUL9
	OZ/grKTQeppVZH2eqfenYI7BN2VhtkHzGYUtysMU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4857b24-19e84e1a-95a9-4752-8f5a-0c5688198a8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d4ffd77404fe5d258ccf47d6a076259d8b807680e45c9cd9948e7635e37e3d4
Date: Wed, 18 May 2022 00:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652832959
