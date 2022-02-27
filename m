Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEA4323A
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645968684;
	h=To:Subject:From:Message-Id:Date;
	bh=gc3Yv9LLmn7onzBykhM10gJi37KDB31ZUJdadP3w/FY=;
	b=ZhJHD0o6dljpS4znDrsOqfvjhSiFj67WoWUbnf5HxWr1eWDs4vsC5pxnkU2mWbXM
	CbNKv6X8+SvQnrF2LvjB5OniNq1KLjT0kIv5TbCec2bVdnD9UwTwfWEE3sfbn41qJrR
	8s8Mg0N8PKcXCR1M1MZJ5ENNMnFnl/96kI/hfLqM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645968684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gc3Yv9LLmn7onzBykhM10gJi37KDB31ZUJdadP3w/FY=;
	b=dXlynFfkT2OpvrqH+Z7bSueloMyyrpnp8ePITAlf1xzpXslvh9qgIv+zkSE0IfDy
	S9GdnaohBSrJ3ZsvFpyCCCrZENHuR9CF1BvmnksEaiCQ+vodQvNslIvWTBg6abPIha1
	I8RqNbOeFFelqoE13vFpH4PUc04RjEgYHgcmV2G4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b60f6f0-6a321d10-df18-4f16-b4c3-b3a391bd59ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 76ff60b542616fc47151e2440031320e1dded7e0706cc3df48df18645ee3749d
Date: Sun, 27 Feb 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645968684
