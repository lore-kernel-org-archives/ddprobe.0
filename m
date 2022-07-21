Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5297453BC
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 19:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658433412;
	h=To:Subject:From:Message-Id:Date;
	bh=Y1rMZFTbsAM/obh04lc24iyE4Yyg3M9ZV02Sr7+ipD8=;
	b=U1xMUHGmGSAkHCkDaJVivViWmBMYRqOGUltfs6w88tic5pHDZg5xiGRHDP0lf0OZ
	KxvPGt/8oo+u0O3q8rXwwP4RnbgEtS4uxoBN6RTjw5aLl+wnZTw+aKPbpXq9MsYI2AZ
	BbHnAhWR6r2mBwCqpDFj3hI0asYPtLl/CC1hJclw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658433412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y1rMZFTbsAM/obh04lc24iyE4Yyg3M9ZV02Sr7+ipD8=;
	b=Aee4IMI5jobMBLhtQyEtl+En7RK4itm/3CeoIZDo8UTg80qk1IzexZdAq8mTtxlk
	y93Mapp5sljXGxBeI15EeFTpYhN1/TvLxulsFkjuqsy1DZNxomivWYXNsYdO4tIqVzu
	TnECL2nrgQ6MpP41tsAeJ1ieamWuC9R4Qq+qh4kM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018222559d08-2c65fe12-689d-4fcc-8072-ea3faac5a292-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89b7f81faf40e0ece56e171ade529b1301c0806a5f13af46e8603711a9c90f6e
Date: Thu, 21 Jul 2022 19:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658433412
