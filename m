Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7A22F45
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 16:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652373839;
	h=To:Subject:From:Message-Id:Date;
	bh=QStB4OIUSrFOQE0Ex95hGhW+YPAXiKTDnW9Nxlw170Q=;
	b=OTolS8dNEegETPMKU03yHDeayIjaTHRpVXP8RMZpcR6f3oh8SoH0sXdzsUdHYyKT
	KrywLxIoGwftwsFUv4ZkYp72orjL0CW9fjpcUEi5e6Rp3VuBbjICQGv+R/L2iXBYvq9
	OU/YqS3NRX74/v+YHzo2Gy1Yl7v5kQpXg6bNHzKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652373839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QStB4OIUSrFOQE0Ex95hGhW+YPAXiKTDnW9Nxlw170Q=;
	b=cHaZlMbEx7GBZugfDW0VVvhA+/81evZPnMC2t2pGtXKQk/UlI201wCdRw45/A+vK
	y6BUUGlkbocMMhnCDiN7uTSbUL2f7n7QBu2tNZh3Aq93QM3ZR+IIiLZ/5PEL2E/LqiH
	xkxqlf7mBkorQHJzf0D6ouX8RBZtd8NGRkLI/rfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b927ddc7-5e2e5f9e-405f-47d7-8b85-739ef566f84b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d86fb0efa404eb2911b340fdbccb3632bcbff05dc906c93897802a76f8b01057
Date: Thu, 12 May 2022 16:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652373839
