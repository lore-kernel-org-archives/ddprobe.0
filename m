Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 803AC7B
	for <ddprobe@lists.linux.dev>; Sun, 29 May 2022 21:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653858599;
	h=To:Subject:From:Message-Id:Date;
	bh=gA6/TLvzDOrpM8SHC0LTTqfE+MCURgVrzMeUKPY0Hyc=;
	b=ExwUNwZsWuMesW/ly6VA68KOIrcl2z4HNJ4KXnrHdmxqqCuNhhN8HkzozCDdY6tQ
	BqGf8S+XbHp4ucy5MgpgBQ112pELzWlhjLI6skOW3eh7WwUlJoC3bXBXW5JXjCEz9XY
	WVvtp0F0R8FBdCAKC0AqyNFQK4jw/C0SdjxuC/UI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653858599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gA6/TLvzDOrpM8SHC0LTTqfE+MCURgVrzMeUKPY0Hyc=;
	b=lCLhz8frlp2yacWv2Ubu9AMVTLYcvLTydU7qVnhrtxa+pDrABHQBe3lmAPvG9JwE
	qroyJ/v6LxUwossVaUpxAEeeXY/2gKRxdxDD+bUYm0QTdGKvyO1a8o1liRccsr1ZOSW
	CJicxIIMfU7pMsU1h0sSL4g1vp6nQn02ijOnTCbY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018111a78140-efb3f865-1bed-4d62-a6c3-c0c82981f2d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af84199045b242c8efc510d3520f508f13a590d542ab964c904d4be6d1fb4102
Date: Sun, 29 May 2022 21:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653858599
