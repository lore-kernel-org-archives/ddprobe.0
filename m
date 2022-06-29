Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCD037A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656474412;
	h=To:Subject:From:Message-Id:Date;
	bh=GyUKEvoqkXDm26HqMufAPgKTtx4wpsqCPiOJBVMEOLg=;
	b=LSqgVVOMoWg9Q9n2qV7yx9mctUe1EA3o79sDWtdy66Lobz8De8atJahJyMDoYwdu
	n06NUt2x6WI8m/deIcUJ+6QgvalKvE0uUZf2Ij6nPMV5xp4xLIDhoHmlQ8ERe17s0cP
	o3xWCOe7t7ITwaaXT7c9CzQ+WW3xWzEL04U8gImE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656474412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GyUKEvoqkXDm26HqMufAPgKTtx4wpsqCPiOJBVMEOLg=;
	b=SswwtXiNuqou79xRN92nEmImsN3/pFGKD9UX/WXoCyjX/1ubs32Lf6gA5JtC2wUi
	CJI1vFj5AJRKLGi9DGqx3Yqz8rWoTTXvEMNICZRa52qA7iF4vJYB6dx9MzFGFRPV8nb
	fEev5RgiELZn6F3Ym5KTgSd9SQHSI5ck+yPZOYeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad91a4eb-d6b1b75b-e5ca-4410-9594-ed5814829e4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bcdcc2f0716611ac30d5c6b60d450a7ddae0de226237d8c5ae73c923b9572d7
Date: Wed, 29 Jun 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656474412
