Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83A1D7E
	for <ddprobe@lists.linux.dev>; Sat, 23 Jul 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658579213;
	h=To:Subject:From:Message-Id:Date;
	bh=+shUSCPoYyImYqEWxOAf/JNppzeVRjyRvwXYI1tREpQ=;
	b=VbI/O7p4A9o9cK/cq3t5rXyEhfc/Kw6Prbz2B7H1lxLi5lAwed/Tr0Syjjy97qdr
	/bE9COmgVsRZL5L2s+y22S4NjGcvrHiDPJALi+i2q+ni4/GX+bamvJ7HRql1wDZpnpk
	g8fTfsWbvGbXfwbW9frGgk6SDOZygUsgLYwkXM4o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658579213;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+shUSCPoYyImYqEWxOAf/JNppzeVRjyRvwXYI1tREpQ=;
	b=R4IMYQw5VlINalbMjB/+Lrrp8m4HfG1z2dCfWHMTMdO7fQCON1XyvF1QwRZaeGzX
	nPY69+2mqdjv5E2qW81GH7oYnhpqzBsXFMC2yNEC3cZcvBZaVPaOF7hahjbR9OsDk68
	MArwOvGn/bzm4uTvoqp+zlrKR2Nir+YmlteNruAI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101822b065831-d826910b-6d9e-4e25-af89-2b22c87b3cf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67050ff7ebca21b66bc3487b1f2d041ed7ff8b736c6c20b5824cae4f13ec80ab
Date: Sat, 23 Jul 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658579212
