Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 657D6440F
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659999652;
	h=To:Subject:From:Message-Id:Date;
	bh=hbNDUxEEAVK4dM3xnKxC7UM5Nq7jteKZ4m23oIWI4FM=;
	b=VFj4mjOnjcFlx99Sm77YtbLXEMN8sbwml115Cjo8WM8p8qEW2mLM9pVZMrcN67tF
	PG7dkPW5P9v+560AFxRaPAbmHTrocr7EUGCUQAeRj8n+U0oLalKpZVoj2i08XuFpbol
	SDe2VrmM51tp/Q+EyvLH1pNpqZuFkzQAr8Zp5oPs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659999652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hbNDUxEEAVK4dM3xnKxC7UM5Nq7jteKZ4m23oIWI4FM=;
	b=DgGZqspW1f7HJbBTPkLNzQMaEfgD7EaL8UdiDEZz6hXpz427/Pbsw45eL0GopfoT
	FJ9XmE0W8MKXl4uBg2ij/Y3V6vS+ZjnwpPsR2LCv5X8Ow4TqLMtV9jQotrXxWYv5xQD
	MGCS4Q/cFOpOOt3W8KSe8mVuAkzCRl6vmwZxhHIk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827fb08b30-bc673efe-f08d-4bbe-bbdb-fe8bccc8566e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b39a93de2af79da0e4bd68c2b7488171d8a4cced98b42eb46ca07a90dc01876c
Date: Mon, 8 Aug 2022 23:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659999652
