Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2A361FB5
	for <ddprobe@lists.linux.dev>; Sun,  5 Jun 2022 17:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654450859;
	h=To:Subject:From:Message-Id:Date;
	bh=arYw+quKTer6Lszwqk/WN1VIeeM8bXa10vTdaFBDk3c=;
	b=WXL2VjiS8n8gH9CBZkTGBova8X9pjk2+D15k6GuorA0f/HdRLpkiQiZSk/vSZB+M
	3+oYRerDERYUa4P1nEQKLJHQQgJOiORVwWTjD0zQLvuMC9s2u/cPzFteZipV2cKfdpm
	SDcAqnzCNFzG+uSq7fAWzCK9qV4dPI+ao2u6n2To=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654450859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=arYw+quKTer6Lszwqk/WN1VIeeM8bXa10vTdaFBDk3c=;
	b=FP1EcAzLH6pc0xSgaYbKLbnI/NbUuOnSozfb/RvFxDgZ82DMhi1SmGLq41H1F6dn
	ZsRBjeZ8yFk8NDSZozfeJ7DnbBP4UEQdqoZY8KOVgC8As+/W1Pyj7htkuIV2id8r8MJ
	CkluFD2g0EPhCO/xMmE72Rc7WoFVWADtDMiYmUiY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018134f4ad0e-140d7cbd-e068-43d4-80ed-4c542ef9daf5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 11e936179d1f7ed9778b0a2ce02f2c1093881fcaf5ddde2f53e9cd660cc8f92f
Date: Sun, 5 Jun 2022 17:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.05-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654450859
