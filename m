Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1F21FD0
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 04:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659931252;
	h=To:Subject:From:Message-Id:Date;
	bh=EFg4Qd+rgRHGHuAgYjyl5uRauE6VptfAbn+yG3R/79Q=;
	b=kizuRaxGpYD0ZQbm8sSsKtJAt4T6QFy3XcnmaHXLg8wOyDCT5PcP9ZagRZJ8Iy6L
	4oJK3OJ48KjYyrNm+Uid+iNgX6q7LSWQjYpzxV6BTcd/F904YXGUGSxTttGmiTE37nP
	iZM90uT4w/8+Ea/rVmWmM2ijQdJeBCoM3vOVDn2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659931252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EFg4Qd+rgRHGHuAgYjyl5uRauE6VptfAbn+yG3R/79Q=;
	b=V9ho/UK91tpbiamxf71Wg3zBF1uHCKiMRGdZgrMfshB0V0GHxmP/muesptkvjMYT
	m9mXKMhW/z3PYMpNWmleI0kMZ/UIiB/ykgjs+Yj5GkC8WBD6Dm0itABPro3WN/8dXsb
	Jc02DaJ20BCcm2cKiEKuvrH7lPLsc+W/AwvT/XFs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b9cd742-7bc1e1a7-a172-4c97-a6ca-1699270ad6e3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b854f7971b21617edf5c2b5b4f830a60774f15e2e5070b4b9a2913a29a411cc
Date: Mon, 8 Aug 2022 04:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659931252
