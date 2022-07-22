Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF0E56AD4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 20:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658521612;
	h=To:Subject:From:Message-Id:Date;
	bh=lytczl/4GEcvquM0bO8n/vkGQl6yLwNjePMLeFiydr4=;
	b=DqlhudQU0hXRz+ZIkt/pjn1hjAjiAPrltT1Vvhojnm2p0SVuonvOM8xw49gIaI2q
	nHfXgiN0nSGNMYTBCBaq0MxPWdZ5YlXtzTSyBv4LYZ/f/gTlY6WaRw7XPplrNaAqzgZ
	XowtHCH4+ThK1O3VN75KkH4gjKJ9m9pZLKyQP1n8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658521612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lytczl/4GEcvquM0bO8n/vkGQl6yLwNjePMLeFiydr4=;
	b=SgcrCizqRm8mu4v4f/2nfl0n0klefERG7WwRFCiJdwgDSRGiPFzc/GgUeZYk+Vbn
	MheoFdHgmgJTdLdCqdEW/9Nrsw9Roec0q5Ietust9UoY5Xf9ZGQsG+ueMgttT8+DYNk
	lZnu0AfJXmkpaS6PtibKTMHr0RgEDBrbZhWJ4y/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018227977011-be09c164-0739-4890-8ac3-d016eb281ca8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d044fb3b2c5d8faaf00fef961ab85039210c6b0f10bb3e9b277f6012b1d7188
Date: Fri, 22 Jul 2022 20:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658521612
