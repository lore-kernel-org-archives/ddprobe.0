Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A867A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 12:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654776959;
	h=To:Subject:From:Message-Id:Date;
	bh=DaOK/5M7v35TzhiOC0T0+QqJ2DCoaunLGMdsn3pgMRQ=;
	b=RXxoZYGVppv+189GQS/+2vR7m1RMu1lU2RJPUPr15TxIHxyMcubxgYX08Z6JmkrH
	pa2pb5XStt0Q9ALJWCPLghM3Ei3gbLnl7HcGiGvsUlYLpjQgYKQ2IDVBM5uM6yNiEhY
	sCLxGDBfY1TgVmA+cmkK2dw0BEOe0eQjLDKEihcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654776959;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DaOK/5M7v35TzhiOC0T0+QqJ2DCoaunLGMdsn3pgMRQ=;
	b=DwM2sln7PX6tGHW7M1oMmCK2kjrX58XZDuFJXV0Sxy4ENKdQNPvxbqirGGAxmdaK
	mmE+MztFfHy0FrRJZzol9/0AbiKNEU+vA5HiL2ElTQlV0q3Y0bWhfvY0nlI5ywTKroe
	zRTiRfN5M1vkmNolsAePF6+y30yi7FM/1zv/ZSXY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181486490fe-9f585f40-5480-4fe2-8b68-29b709e41cd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6127208b0b991585fa8d34307d5370cae2b4148bc0f375cf2af1803224b5676e
Date: Thu, 9 Jun 2022 12:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654776959
