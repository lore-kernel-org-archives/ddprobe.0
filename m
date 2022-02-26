Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D3D7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 23:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645918284;
	h=To:Subject:From:Message-Id:Date;
	bh=7pO2r1xoC/6R3V0h15qa2jcBNkn6T0Zmo6y9ZideHV4=;
	b=WN3aRTLBeyMxcHSscJYrWzZJzFenBhma1C9/Y4LNGHHYkEaer3pQF0a5MU7XFLx/
	yP+5pvFpN6rIFyUKVudxRFUlTFLRHdXsbIBCesNg22DPXOlmRrSueiM9R2gwHE0sa75
	M+wprD60SHBkpAUJviPXlmlNy9dCFTb5ghfVniaU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645918284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7pO2r1xoC/6R3V0h15qa2jcBNkn6T0Zmo6y9ZideHV4=;
	b=cKrck+L2MRt0rMjiyACC0SNVlAyxAY4RZsvkHiNMghj88rDLI/QV5ZRYCtERVwQ0
	08LRb9GD/FafyoRxkQGn18IpG54KYTm2XfoLCA86ZdnR48SRxo/fTAztVLKCAnJgaHe
	LKbdrFkTzN1JW600Gnj85gMBO0A3b78mTympoIzg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f385fec04-05d38c6e-98d8-4cfd-ba4c-7dea8d6b2c69-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad6c4e75572900356572f4bce4a62e32c5e4bb568da8fd22ccf214afdfa6b13d
Date: Sat, 26 Feb 2022 23:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645918284
