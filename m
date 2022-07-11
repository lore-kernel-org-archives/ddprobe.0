Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03C7F1879
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657513012;
	h=To:Subject:From:Message-Id:Date;
	bh=OOvypXTgQFe8FQXfxswmQTtf+zOPosrN/NUL2slXmpQ=;
	b=hgKDBR9ST1ehtaO8a1Tal3FNDqzJ7hTc8iMdagXYJvfKfpPZHHiufI1MlUSJEfIN
	MTABDOLFbRP3avBr50aHq3Pz/U5A6qeSJsKCQj510IrTO+7+7Oip4RdvvZnKT35pZNe
	LteVKe0Vli+MT6AmmrRmUBL6MnPa28LywtLWj9kc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657513012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OOvypXTgQFe8FQXfxswmQTtf+zOPosrN/NUL2slXmpQ=;
	b=fmvG/PJO532zcqgRgZn/sanyp54enB0+3pTtfgPmOesI6ZYg4i3viWH2ZFVtoexL
	EouHpt8q1cQXrkN5LB8e7gRDkT6Un9X1N7KejPQof0PsAJ1gpWB6LSkxgKk024XMXu4
	y4/O7ZTrCLI2Xo8p4W2on6ILFAQTeYoOtVKbjspM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181eb796c46-eb41a548-f1a4-4dd6-b70b-9934ade6398f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06f61907bea14be8fc18c74b9ad81bb93b7fad91aba640775dd4fc913eee90ea
Date: Mon, 11 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657513012
