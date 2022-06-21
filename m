Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC18E7499
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 21:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655845679;
	h=To:Subject:From:Message-Id:Date;
	bh=/F7uOdjOZ7xHe94LYQiWyHVZG7/F3I5J1umFFe2t6xo=;
	b=c8N9Kr7DogrqOYRu8TuCyXPupaihRzPzhYrZ0cNpLi4X/3281IxK6D4ILObspWNA
	gPsPP+b3QMZFIKdtO/5ztqbXb577VePYhFHh1GbfJgzkGVrSnADEARvDTPaIyR5WvJu
	JZv/zkdfrFTPZxfe2o1qG2ujqvcP6WLMCVMKdUt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655845679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/F7uOdjOZ7xHe94LYQiWyHVZG7/F3I5J1umFFe2t6xo=;
	b=APIqYphrlvh8/0j3x8y5fWDprQ5kCp4a3AEzy34vyLHmrmJUp8xoO6zUou0uiBR5
	gtyprjnuSKR2+6i/pY8iIaOfBOryEnVuGY24EsuzDQBkexs8vldmZbho0Eg6cq9J8fV
	f2l7/rvdGaQTC/9hOWeRlnp1PIYIbmCZRISfioI0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818817f09f-ff3ebcd0-c2a9-480d-a424-b40e2433e273-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 41b3d7c2f1c7c3abe43bb6ae28ec21f2a63446129b1a93ed3e760305b47636c3
Date: Tue, 21 Jun 2022 21:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655845679
