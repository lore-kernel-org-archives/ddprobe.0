Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF26F1FB8
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 01:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659144653;
	h=To:Subject:From:Message-Id:Date;
	bh=ajLeJxGYDJRshmhkmrauno9ub5Mb3tmQvPWlxiX3U3s=;
	b=E9O8kqUv9ZJxq2YDuSvnKDvrb4n/VH89AOVAVJl36TSvgKQS2gguBDmsUl4IarDd
	+xvTjozSjUX9BxULzL7tdjiOrUEQVR0fU560jO7LBgcNhslyPRt8e9Hhm94X3FsXR8a
	pw7nL2sLTatRtOR4+RywL/tAnVMtP6gJyHuOsrZ4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659144653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ajLeJxGYDJRshmhkmrauno9ub5Mb3tmQvPWlxiX3U3s=;
	b=FEj7mO1UPNs0UmwAQbN8rV3nRa6Qo+ZrJHKfMR59PC6fgl40c/QeLwwbqh97bdKX
	lSXimWS4S9YFVS94ItXHBsZGD4huJtBmigInGsjIaPPXNptJKeqYMZ7GT6FBh3ByJjM
	wuTt1BYAdAr8QfFCWfq80XK4wAZSizqEDZTFuOJY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824cba472d-acf81860-c7a4-4623-acf5-68a940cbd83a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 435a408f8b7af0be87cf769c314acfdf59c4ecdafdc4bc8c159d2bcbe3a69a08
Date: Sat, 30 Jul 2022 01:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659144652
