Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 992837C
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646832384;
	h=To:Subject:From:Message-Id:Date;
	bh=iBHt2qpqwgM5zIhtE1yiBIn4k/Y+hNGFyt/xAnt6lsI=;
	b=cVtoeyQ7Zpp05WLaHEJTMIY2WWLR8A6gi76Tcbbu2Gvv9zpvBvATk9e/Ah3nSBG1
	bAK0dQ+VEb6B87C5do6JoAcmKrhin9Gy6CEN8FToEqwv3hmSFozdlqFquBZQ1QRNtou
	2iP4puDGChJvBrMHy7/5desx6nVexSbh3vXUtZf0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646832384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iBHt2qpqwgM5zIhtE1yiBIn4k/Y+hNGFyt/xAnt6lsI=;
	b=a7Z6PYvhW4zpkw4u7HLnV8lfJ5I6HV5RXHu0NLcc+axclta1lufd1ygTc9ViOLSB
	3pqKipH0Zz61x8M6EIJFE14Cxk5MkTatCPsYuFw0KWQv7CvC9rVUKAXPT9nYr6ga2Jm
	cR2S6p96ztp80gMYSFp0FOoxNaVDBhZQ7HpasWvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6edbfaff-fa56fabb-3fcc-48ee-99e4-20c9564ea19a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 52749fc9c94180a2e936108b3e0d63bf44d1d262d77946274752ec9f0a20d4e3
Date: Wed, 9 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646832384
