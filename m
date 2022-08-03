Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6369863D
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 12:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659528052;
	h=To:Subject:From:Message-Id:Date;
	bh=HwJTK5YTKrZ/Ka5f8RmGgIjBLI6MTqACtuNZ1VPrhxM=;
	b=ZW3KMDe5YHEGyqDLesi/+hOQENCe2GOLwEI98vu7p1jd/toiV7IHc4HHQXWVEZ84
	W1YWZpUqFeQwTIR6IAoOF7uiGe9Mey5jVu1+wRi2JYMYAojj9P0t3MVTaaSdLz3GQxf
	wAGS5rwtS5upqFF8jKot3RGKAAI2tpuKLl0QDN74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659528052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HwJTK5YTKrZ/Ka5f8RmGgIjBLI6MTqACtuNZ1VPrhxM=;
	b=Uar3zTapVoCLPkmedIHiRniGd7jCWNiIzM+AiZw/gwIMtL3vIe4cZwaSUbAnMGCU
	6grqFnf7lGW5hLpieM6w/Zd1VJey7U6L+jz6cz6oB4/rh2ZtxekYAdv+7dSEjwJ6aDc
	seyGCTMjDAF9R11822Wa6AqTafqrp8v9XtvwlAGA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018263947f6a-7a608ae1-b4c0-47f7-80e2-fadc9085d00d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e286a848d5323f283b9c7047275a4da3f149ddca7e4145f3bafb3a37fd0d01ca
Date: Wed, 3 Aug 2022 12:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659528052
