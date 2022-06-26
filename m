Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E63FD7C
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656253612;
	h=To:Subject:From:Message-Id:Date;
	bh=AHkpcVheUDU+ZODg2PfuCgjte8+YswsR0sHtMvMcdI4=;
	b=DZHbgffP8kPNRzMTbAL+zQcBRw9bUsy4hN4vTXuzImZGN64ktq8xLCvSm3LD1Rn3
	/U+dn5eLOaO5Tb5KS0Kh3/fNpIOUumNJL9QMF3Iwd+QkI2oib7EF8Gs8KEnF+ni4qIO
	W+JLNv3HZJmJoq9f6H/ruKqpvOWW+0/bLADVqcE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656253612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AHkpcVheUDU+ZODg2PfuCgjte8+YswsR0sHtMvMcdI4=;
	b=J0nXdwAPqkNau2LkxwuyYfe2Cy90Tx/cxxtv7auKxZmAIK/q8bMXpcKo70i70vqy
	6Rtx61l9Vr2jV+QwAHItaTkk34xPod1VqUbqa5NnfTiHTjVMG/2HZDt0MJOQXHNnKWK
	Dcca3y1CHa6pMOTKgtcUMW0EWLHFseEjjlVtyS+c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a06880f8-ea2356b6-3789-4345-855e-946b5cbc4dc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 384ec65b35c94cb71e1c8032454ef677d2c36485ad9b250e4b7d455337d4b9f5
Date: Sun, 26 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656253612
