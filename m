Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E06B36A
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661048452;
	h=To:Subject:From:Message-Id:Date;
	bh=E6A8Pq0Hp7c36rZu7RMyNe3eI6rnSLO0qalDEvHb4/k=;
	b=Ix43C4IWt7mP6RRu+qso52rSybrRXTvtISWDji035vaMmQbY5JNLGC9dOFzj9kGQ
	d7Nc/dok+10CInVdk3kAoU1IdSwZYrU2NO1eWED8YwCxcfcJf1u2ci0YIMmo6Mhi7Cz
	iDrSuGW/zAOmz+aL/2g/kjhU3UJ9akk2oH13v7o0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661048452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E6A8Pq0Hp7c36rZu7RMyNe3eI6rnSLO0qalDEvHb4/k=;
	b=US6xAiQDpcJ614/Ze8VADg0m2iQjBanxXMGpM8wcOtHAwnpy3Q6QWxyJIp0u8CBP
	foKm1H1bQvdevsOsnljngebH/Sc1F9TIane/IFSRtxGptT26mP7NxP/vp8T7SMOnZF5
	BeHpq2CgqDk/w/VVL621Run9Xq1NdsYKLJEChAJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be33f5de-f740715f-bfcd-4b72-8baa-bac2aad33299-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaee59feda66fc838b5e6ad38c254ad691300d7ff1879aba3066b14968de3c7d
Date: Sun, 21 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661048452
