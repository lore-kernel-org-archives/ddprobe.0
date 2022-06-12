Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 148CD7A
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 11:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655032679;
	h=To:Subject:From:Message-Id:Date;
	bh=9ZFmMgG4G1ZcV83f2qpGAk+Fvfg+r9O3O4ikNpRATiI=;
	b=OQ9qFoqTgkYtE1+TgB83AjnA7Hf5yvDdzYRiwA0j63hyvGIjgJfVUhyuLa7BFd5A
	Yhvt0+5nmBjtnAWlLfvuusf8QAvqbjOUP/IyMbxN6j6/nY/0SqkGTK5MhpI9W1pf7RN
	RqSseEkuuM1t5DO1aVubtx0K7LoZra/QF5dayU40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655032679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ZFmMgG4G1ZcV83f2qpGAk+Fvfg+r9O3O4ikNpRATiI=;
	b=hrpTBmRE+O2o53dCnGiLwdILWZJLScCEZDVBEw8pxsp4LgirENZabibeWiVRTm3y
	XeSXeoBvQo5CUu+ctIUwAazYaTYgDj99cRlXVK7cA3NFR5xzPvQxoI4PkOCaTUQqVLb
	hFEQbcymt56eTaECiomGQgRfeN6t8ssatutjAEOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018157a28b70-6f01b819-78d2-49a6-a988-dbdf1b208ae6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5cde1516ce7ebcbc2eba7f39b5c9d64387fffebdd5e19380223167c38c416c22
Date: Sun, 12 Jun 2022 11:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655032679
