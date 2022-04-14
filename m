Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B48D15A5
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 07:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649922958;
	h=To:Subject:From:Message-Id:Date;
	bh=xfr6HVS5sSAe9/B0tNZ1YNC7hfDA8qaHDMpGhvXfWBE=;
	b=DueAN0yx8Zzckv5R7kXRYqGM4fcLxizVYFuLa06xSZ98EueINoq2QRRBHsNOLfJr
	0sriYPyuRnu0OErBnQIeodYkXPHHgyRj7ricd8Odp715CS+LBiTCrnI3y0uZvo2KmWJ
	d0ICWlrb7kYhsHgI2mLLEFXiGfQf2EMDZXfHsqio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649922958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xfr6HVS5sSAe9/B0tNZ1YNC7hfDA8qaHDMpGhvXfWBE=;
	b=eiolTQOgRFbUuI7DGRLQlud+pf7JGXof4OqXPhi9Z6d2y/tCts2mmsDFZJXZqUFD
	m0Sm/+gfRc/kOBdZe4d+D6/469ZZG6BwgxR2/XZtoN2xo1lv1xQba0EjmDBtQLs/2fz
	K604rBaTKDw4YKFMPHpaL9s0ejVISUPsTE5n4nTc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180271263af-cd592ba8-651a-4240-b6c5-8a044f268c62-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06781b0e81f5e208880fd2f8d0317def0b6a39a74deca060b4a8bf36aa7ea89d
Date: Thu, 14 Apr 2022 07:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649922958
