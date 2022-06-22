Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FCF1843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 15:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655912879;
	h=To:Subject:From:Message-Id:Date;
	bh=atMu52NFTIila6J0Kp/yXRlKGWm4a1F+Rv294j6aUD0=;
	b=WQR/yoj7/9ytiyTWLIWrpXm8wsj9ObxgwyIa1Km+gtsu0L5dyoPsoseN8SBGPXU0
	E9gTVUDwwnvrEVK6kQPTYznt26sv7/Sd2dtUNJOxwOjyWCOPSPDvcOf7pcrRhVTk8AZ
	nOVB1OWVa9Q8OOlOP7LtpWcCIJDgNQN8HbVJLIxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655912879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atMu52NFTIila6J0Kp/yXRlKGWm4a1F+Rv294j6aUD0=;
	b=NDpVt9gwudewcqxd8wRI9909XFoRcI29FeRCvd8Ga4mtAQRghdtCPfJJBB44WuzM
	TxveH898ws5gHu1u7IS9m/RS+zLJCz6PmJz50QGXNiuJlcqgi+ejBSmSIEjTCx8UC60
	LbPuXfQZYJ8wjkmP1o3lZwg2s8Ln539ska7wupgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c1954a4-076ea4a0-1c69-4cf2-9614-fb9456c62f20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6306579a0ff49f7f7138f2c09bd87974327e2e04fe3298ebf445959d8bcf2805
Date: Wed, 22 Jun 2022 15:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655912879
