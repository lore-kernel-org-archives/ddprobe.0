Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC9D7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 02:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654913399;
	h=To:Subject:From:Message-Id:Date;
	bh=9XkxjD9CG7WAUzd9nO4+sem6BAcE+AxZAaQJzTYkMc4=;
	b=D0DBx2VuyABElLbhcSBuBSTczr277+eZBukl/8g+71FdzrjHr253K/95hLW22hTU
	fxUvVvupoz1u9QVxN1mbqtzFP3GICX3LkzE+8gkglD1B6RdJAQfu1w9+56g4Qf+jTIY
	nZSryNtARTsfpmz8sbP4rzRxWG+fCMXFl4n++laQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654913399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9XkxjD9CG7WAUzd9nO4+sem6BAcE+AxZAaQJzTYkMc4=;
	b=iKJ+gqkoeA5pDC/CUAXZF6GEUCusM7A9rLolOaI+XgTkJ/2BII0Q61DFsT2B5QnF
	KQsDxKV9XEdin4jawg1vpK3RAXd3LBEEYR/INhD1gSBYR+UsGRU5yU97bROp1PY7u5D
	fUbje3MXUhPmJKBK3nx/E2oNh3GgOM8bQgzBPjZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018150867a10-a6a4771e-d59b-4c66-98c9-ff2384e0f57c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 072acefd7406567a8040c8ebe6cdaea0326889836d5d9067e6d49ff3be4a606f
Date: Sat, 11 Jun 2022 02:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654913399
