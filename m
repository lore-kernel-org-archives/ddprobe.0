Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07DAE7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 12:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648988818;
	h=To:Subject:From:Message-Id:Date;
	bh=9FyM6MPk1OSqWQNHIcr3BSvEkPQ6KmSqMGPhSUbi4zo=;
	b=YDiuDYS0C2FuZW81wNqWhs/R0RJ4aSTFyRwWXZ6BaIvpsfTcIzelM5O39UpYrOP7
	ybK35Itxq8lwcsATypIfsi8kljrJHz9sPeNqGSZ4L8eNVAEsV8m4twsW96k/tlOb+vo
	bwiUZyYnD0zGQZK89oF3l4ZboteEhkvre9BowN6U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648988818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9FyM6MPk1OSqWQNHIcr3BSvEkPQ6KmSqMGPhSUbi4zo=;
	b=VgOjQovCZmNMLejpz5jn+DP/dOV+9BbX+Bx/vVI2tbEh0n2ZvpgX23PvLjDNRC2z
	zeLwmO45b7rG1uaP0ZQbPrvsmEJQ6+vlMCnqWASG2Gnvl4Q9xHF2iMJwRcri74vvAuu
	eaO+p5gSzfYBqCbKo97QZVBziheKqz4y5tGXIBY0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fef648b83-8baba72c-6099-4843-8030-b4569e21f9c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05bdeaccedb9b1c03b006e3fa0896dfb1dc147903b2be421196b248ea6fbfdbe
Date: Sun, 3 Apr 2022 12:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648988818
