Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F0BE4626
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 21:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645134984;
	h=To:Subject:From:Message-Id:Date;
	bh=ocPOafQQBgIvMloP7wbzNXK7XcgwRc4zoE+MHOMFLkc=;
	b=dBPQjpCZzAPIjR7v43Tq6g8D7VMjboaqJWitvUQvPLUFXcx4ejBQpaVwsuy8p2GE
	Eoj7Loh4bJtgVdiSeduVM7kxRMbZHCQYKvTJPHnT5w+GVkbE2Rdy2XiuqPuPpQJsR07
	NVR8JS4RPxpG4W0mjCr18qr8xUOjXQapchz65Nb4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645134984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ocPOafQQBgIvMloP7wbzNXK7XcgwRc4zoE+MHOMFLkc=;
	b=F3WebZ0pGpkdACqC7xB99z/P1x/WIXKui436/HlGG0mge8xqDDdbs7UPP5/ix02s
	ZNt2n/3/CXM3o7wU9+/Fmcv/mIzA83CLsg/caVjRh5g3IG+3NXLF5qp3US+CUqfa7pA
	WUHpc7XnY9T1MxWlScxQ9Vw3bT9WH4uNygeUV6a8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09afb671-5eddb8aa-15e4-4536-bdeb-64b401ecb549-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d1bdddf1edfc29dbc68d6eea784848d2f4fd7152715b07b6eeacbc955920184
Date: Thu, 17 Feb 2022 21:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645134984
