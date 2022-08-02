Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 414597F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 01:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659402052;
	h=To:Subject:From:Message-Id:Date;
	bh=RmhbhYEGdGJd7WoWOXs6K1xHJx1KZJovsmgQmJuN6ys=;
	b=ba7AVjzqUvsCCQj0flYV+PVZapxQaAo1O95GsInjINC9J1C71orNgMPplgbZ5i4B
	otn63hGlHIZZ+3sWu4+n3o2au3TusJCB+ZVLDnlcUFVHarB4NcH/v9XPbrBqDqBUTIu
	xQVjjEyneXYKIloY6riVN2pWiZiMf9p0SDhtSqt4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659402052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmhbhYEGdGJd7WoWOXs6K1xHJx1KZJovsmgQmJuN6ys=;
	b=djxT37OtlAUOAbzQJgRoupOVcBuTHVOZj6N/hoE6i3ydWmvLqdeSIxO/huIKVCkw
	oK1t2riXsT7YmrLtDSID3XcycoShjR/4kDQ8pgC5Gbw48zKN4q18yMqLmmPXLLMnVS3
	RQ9JXpBUYsJnwwH1TzlsCCXJUNjJ+sDjxJfQ0IBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825c11e3cd-7f3f8ec6-40a4-48d9-b036-a9fbcbe4a05e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9c71079bffb06c1ba059d1c1dc67dcdf21089527b934f85b3a17a7d3bf584f0
Date: Tue, 2 Aug 2022 01:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659402052
