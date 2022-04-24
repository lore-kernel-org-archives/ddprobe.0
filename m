Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D07E160
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650783058;
	h=To:Subject:From:Message-Id:Date;
	bh=SkT54mxBwDnp1P4Ok+ZtdPVqEAj3HwcqlhjdjZl95Kw=;
	b=G0GnOYQfmVf0LVv2/CPdBVFPTDrhbbPSUmxw1O2A8WTSxjsGiWbZFXBNdg5A/SnY
	m5TSWf72TdJiJLmQdchnoCnMuS5MxwGGCPx1IUf2JUEB/SGjYqTfnzwXRL5pA4bpL4e
	HNFGfZqTxLBO1WmFtScs6j0j+7aKs6b0YgEP5mlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650783058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkT54mxBwDnp1P4Ok+ZtdPVqEAj3HwcqlhjdjZl95Kw=;
	b=an3/HA065QjmzNxV2Hg4i9xTqMCbUKwB7PLZWp2Bi1vc3zg+BCj59ph9w8PAV2r3
	paXY2PcyKuFv3pL/kuRZPEHsbBgyGvpd6P627WRR/Mqs6+o0JlpRyxjbycbOQiX1EPb
	NbpTzHg/PLQ4I2sov3XHllRdpcGKLPHY4t3InoUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805a567925-ca0448e2-4a60-4489-b72b-f724bb0aefef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f98b8c2664e713117185bbb6ac8e704d53c796c6e17c5432289e23c5fda601dc
Date: Sun, 24 Apr 2022 06:50:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650783058
