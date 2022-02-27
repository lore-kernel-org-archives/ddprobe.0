Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89C517A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645988784;
	h=To:Subject:From:Message-Id:Date;
	bh=K9Ptt4frljUnyBW6tISRuOlfm19oi8dHZ55PUmPvjJA=;
	b=PL1zEXrHDPYthPYm71h2kGtNd7rnMYstuEqEv9/UlW97HQHN9ZZaiVsbnT3PSh8Z
	wBg6aXYKg1vdV12CmMxuJHP3tw4RonAAQI3cPS/yhWno2GRmy/F7OdivhqdDd9xVYme
	X+oyCsFM+oFDGxU8xiwl4tqwgQCSKIA7+FI5r8iQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645988784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9Ptt4frljUnyBW6tISRuOlfm19oi8dHZ55PUmPvjJA=;
	b=JNm66a6aaklu18afT3+m+DZtpzPOZMxt18oOUwz5MOb67gQEroG4TbmzZuepI7nn
	hReulB6XvqcWdskgut6H4QwY1txo/AYUllaGCOLERmUbjnd+Um0nvxHSSARflqclK0y
	3jjHlC41t69vNVkvDYL2hUxd5G9RVIs6HV4OFgtg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3c93aa78-c3c4b1c4-b461-418e-b78d-305ed766e8ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50e2c42ff04bdfa0e43b41517e141c2238e36d257401dc534aac233af3dc387e
Date: Sun, 27 Feb 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645988784
