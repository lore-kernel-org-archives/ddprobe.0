Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E17A52
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 00:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657412212;
	h=To:Subject:From:Message-Id:Date;
	bh=xyRru/HyZXhWv9LRiR3kRgX4COObviZvEieVwWvYRCE=;
	b=DyVvsPaiNPu1LJS62IUb3yk1ctK2i7PdLr0MxEm7VdHRCNWgl2rgQzdrSyyyE7Ak
	AzdaOV2LS7X5F3zjDwPjfRZxSmY96cELwAP7GZbbKxMunGl0+ui2u8My6Qay/nkitne
	oSy8C/1HxPnbj+o3TUNh4X9gZVNOOM6XZuZJiWpA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657412212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xyRru/HyZXhWv9LRiR3kRgX4COObviZvEieVwWvYRCE=;
	b=iie9XviVnDziBXCQyVTnTVXvjF2ytUaZ14luinvENC5vaDQtf1YceIDazB7fb+66
	aX5/4B+jXsE+ztDIGWJedJRZE60Lh604NNUgMoIvvNto5OK3J6WnyC/pjGr0WHZfokC
	6YNVfuKbmM9ElyW+xPRRiBnDY/HX5Hn+A0nsvnEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5775649-a6cffe43-1fc2-485e-8055-7135019147c6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c3cdbd3bc2ba800449f5a3b217648533a72c29517715a121f24436c348b4ec84
Date: Sun, 10 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657412212
