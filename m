Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5394A7A
	for <ddprobe@lists.linux.dev>; Mon, 13 Jun 2022 03:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655090399;
	h=To:Subject:From:Message-Id:Date;
	bh=7JI0F++J9TZpFQLV9CmWIv7GH9CTJjhLam1mkASWMUg=;
	b=Y077eltDjpov4KSU0OzfxU1eseTILtNBnkKDmgAo3dG8FpWGr5fb3MMgLlybINQ0
	sPFjTSiPZ2D17s9Ub2Ov+CqLED7LgQ2HdKY8lkgKDMY0OzshNu4ICqWQ/yiREHKlT5U
	dva6TEjAXQOeX6ngrZyQJzfVzTM6vv0E8hTAXClo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655090399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7JI0F++J9TZpFQLV9CmWIv7GH9CTJjhLam1mkASWMUg=;
	b=KdjCHtRMgqihehL5YCfgqrUNJJZm3PLhF7VIwaTIIi4Z79T4hvgj8iXRop8EEhAZ
	fkylv542YGE4hfe/IGimxGVlsKMwR2kvdbhi4SXA2gKBPl36CfkaYcCyJLesX5XUIiJ
	dT4sKsN4EQxT00CBWSZgAQwTW/dDbrKfw+/WTfW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815b13480b-bf084c63-4a98-46b1-a22d-f46f92c2b032-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 91c6969b70de4fac2d9c4cdcde5086ee94f832b4b0f9f592e2507cbaa16e917b
Date: Mon, 13 Jun 2022 03:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655090399
