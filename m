Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303E915A6
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659288052;
	h=To:Subject:From:Message-Id:Date;
	bh=D1slwetrTx4aMQHIXfWw7G4Nkz/JLdePcwEdjtd74RI=;
	b=W0Fjshy+zFpgIqGccSQB5Mu8oeItaDIKgklYkJn0iIs5TduIivoQc1wuQ7UlP1MA
	6xrjHwGsbzFOyp8F+T+mwZ/V80epFkBxXk3uVcqhGHxRVgHWeMvumLRtD/DoRD8hw1S
	FQnkuuEq0gmfceG6lvL1/fCZBU3Gs0nuFi8L1UYI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659288052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D1slwetrTx4aMQHIXfWw7G4Nkz/JLdePcwEdjtd74RI=;
	b=dnop+iTT6b1zM4xa/6jdUEnGJuo4Qs3vUyRqQtlJCI+Ole6qwninuDwYL4JL//bL
	aw3pMVH8Rqn0n3znCQ3c6zvXjLjx81wyCjUvp+BK4j+SxHML7E5xKOMWyKotOvxkBCW
	D0tg7KpF9m5AUNnFu3MUSgA/i6LZZjALHk14KtG4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825546632e-224fe934-3b23-4af1-9108-8012586a8b64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c5640adf09b813f61e7f44917bce9033f2855e38403637c9b9a0e993ff2d979
Date: Sun, 31 Jul 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659288052
