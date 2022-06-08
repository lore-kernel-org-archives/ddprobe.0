Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199447B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 00:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654646579;
	h=To:Subject:From:Message-Id:Date;
	bh=ej5xyllWj90Lny0Qa3mWMF1847IFpsOMgxPtDMtmXjw=;
	b=XJNECs/lEHFECODXSOmfm/NnqbRayBjbrP2Y6Roon1wfzZMTrmvaOyddTVNV/elx
	woBpVUHJFKAL6F0wHstLimRmDnRAE1jrt4cNDVG3C4YxEmpmG+BAeWlmHOzuHC9eJEt
	kP29tmCAdZbIUkCss6x9AJn/lXyy/PCjaLGk9nkU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654646579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ej5xyllWj90Lny0Qa3mWMF1847IFpsOMgxPtDMtmXjw=;
	b=YvML7hhn0jcxiL1D/7xnZbmMy+bpcXh1Zu8jZ6xmb0wIyW6HlJ2X2gThAd/mUP3q
	oMAjtul6YaVtDSlh0E8jycPwPikOqzRPSeWR4Hvp9Rc4bw2AeJHHtdYmmK1lIjbFIcT
	VKD937wZEWn2qH2p55c+BKBAEpuDBtkCsQzBdy6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181409f203b-bb63748b-28e8-4c71-b827-2baab5a77602-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06adc9514f4dc848cdaf5a00435e254bbfc4838fb29470f492c30462f5211819
Date: Wed, 8 Jun 2022 00:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654646579
