Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FA662F2C
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 21:44:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652391840;
	h=To:Subject:From:Message-Id:Date;
	bh=C1nErtNFH+KqoOKRIOpWr+kiSZPb7qjZED+VByfC2nA=;
	b=XPBEBa0VeR2txSfNCQw+scnChDOZ1SFMctDLYhkuuETrZQa3e5bOHA5gkYKdXgS9
	b8jNHGIMoctZYNPvGhJWhOCiI93fs7is82r5hQMcALnLw2DBpdlDF3QadoKv0Kh7+4N
	VCMtS4lysK0ex4iS7I/u0IyXL3weZENLB+CZxvQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652391840;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=C1nErtNFH+KqoOKRIOpWr+kiSZPb7qjZED+VByfC2nA=;
	b=C0LpFJF78tqzEpEUNRd/qdEcKAT84A1BS2E0+2xwvjlmmidDom4/2dbxUuy21nd1
	cdldVoZ+KrVRops14jmmDo0ZLVe84WLp8tn7V9tDAtJOGDCDs0dUb0/GWMVhAtsgvFQ
	Sgj8JXCAf1TXVjlljO8TFsasosOLmogPH8qg8REk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba3a8641-0d1bc28a-78bf-4ea0-99e5-fcc1a3103ca0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3286f064f3d86dcc033cf92eff87c62b42c074d2244352993e223f8dcb31e519
Date: Thu, 12 May 2022 21:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652391839
