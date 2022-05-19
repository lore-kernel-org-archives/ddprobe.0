Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6847E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 13:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652966339;
	h=To:Subject:From:Message-Id:Date;
	bh=TuxFOw4Nfi7H+4DXM6uX83Geb+ElJK8yjAi0XMShd/0=;
	b=DfD/PgVG0TIP3DUTZLeyWNm898Mb5TORHZIacstHm9RX0bRX/9CHkXeybpJzmKoc
	J3iTFF4EYOd+9bCsmYtqg/nNmRQ/kyLzUcz7CNemPRHZmq2IdHlRsMMOeXhgH0q83Xy
	/I5rsO3JhBxocrAfBm6udUyrLr+hXmr/ENuSEsZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652966339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TuxFOw4Nfi7H+4DXM6uX83Geb+ElJK8yjAi0XMShd/0=;
	b=PV3T/KbI8hIVs8N4RkLLyJJG93/spqf9c3Bwdz36LQhLCbar2Gv6WrwLF5P4edk7
	5FBdXWvBMpVya9TZ76O5jjk8WuvRl7Bk/ii01spnZ+2mD3iXVeMBVr0dm7P/ZB9tVT4
	c964/D4hsCLaQY/DMJO/AZAOp9sM3LrWgJwiWrmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc78b2cd-d42c392c-3249-4596-ad2d-bfced4c2a9a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 798020f6e84b6158983518ad9cbbf65eccbac0a7aa55a7fbb670724708da2e32
Date: Thu, 19 May 2022 13:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652966339
