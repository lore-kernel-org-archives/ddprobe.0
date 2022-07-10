Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2C021108
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 07:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657439212;
	h=To:Subject:From:Message-Id:Date;
	bh=P28XHtiSL8+7pj90h0c/lyB6jokB9h6MDM4fXjJxFDQ=;
	b=FavMZFpaVEjqtSAZFOTR8l1y6zUBplg6lGeZWrm31bQ9HTSVngzR2hC2+PtaTlKv
	qlbZJ+nROWnoVyH91m6JtGQWK+HT9cboHusmb7lCI77nHNAP3ezEcBo95qoOJeian0C
	doLVMC2T5D24XoTRK/eBI3R3btuABzQMh66bK/Zg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657439212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P28XHtiSL8+7pj90h0c/lyB6jokB9h6MDM4fXjJxFDQ=;
	b=Lkryhx++Yu6ISVdBA6WzA0ILhvMtAbEfvnGm7GoNxJLW8opaaye3nqEEo1zl0H2T
	XFA819ZGYOoyRgS16OgEAACfBjJ3wUkQUFUC2xinbP4hX96du6ttdXeuEG41JGdXoTD
	+Y4quZjFVR8LMq4P1MhYTxeolL0qvPcadQbT1I5A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e713531b-d1288396-e06b-4b7f-a0c5-91ad96763784-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a5b26675ee1f568d3dfff29cb3ba90ced70cfc1f3d6551ae98b2e70179e4840
Date: Sun, 10 Jul 2022 07:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657439212
