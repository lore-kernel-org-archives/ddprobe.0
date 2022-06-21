Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A61F8EA4
	for <ddprobe@lists.linux.dev>; Tue, 21 Jun 2022 09:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655802780;
	h=To:Subject:From:Message-Id:Date;
	bh=qnnnslyiHvOlmjrZNw8R/LepIFJd4a1VKa4TUzyFyC8=;
	b=Am3mComQMbq3kkcBOhtq+S5xt+7z2utGfCNzeCaCV79KTuTLvtDC8bNq2DKLoVfy
	3jYaYBgDKLYUC+euYISuo0yRiRYdNBFEjq5XcxQzr1BLfgaD30cIX7kjyoYuy4Q+jgN
	ufL+uW9CpkXBbGyA9JXVDAikXpR0ftVc2yYBz6t8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655802780;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qnnnslyiHvOlmjrZNw8R/LepIFJd4a1VKa4TUzyFyC8=;
	b=RV1dnANuH0/uLnj/tMpveI5XReLjDwjdIdXLLqp+rWx5z2gGxnEPzdU92W2ia0Mb
	Ls7m2zEs6j4pvZtzxX/nttQUDh8DUhuuUogHCFJJMmJ9uX2ht8nyyBV2dFmPpmE5ecm
	YqQEpTP5pOcGZLYybMR25qSXi4lwnsJ8jsJO8GAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818589569a-3af9b991-aa02-4c1d-8b2e-5a12f0dd487d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f2f54fcf44a93315f72f590f4e015cc3ac2d02a3b0beb9964890096a741a086
Date: Tue, 21 Jun 2022 09:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655802779
