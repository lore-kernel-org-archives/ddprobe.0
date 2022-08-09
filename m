Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5563923C6
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660030252;
	h=To:Subject:From:Message-Id:Date;
	bh=4h1Hmlkc/jYA7ipoOH2p95PvZjkNtKW+qidoCudlgSo=;
	b=XfYkKhBNcUO9wVQ9PTL9ln7Gd60fPi9slR/RHM+TGJioq6sbyafhqABIcDQGqrR+
	R6yTJ5y/2V3CAYPNtf8jyBRR/1nLLuGXftZqhon/qXbs9shVG2lMUCVZuOHgL0653ov
	dHz5hhqBEhNJNBPInCahXJzDS0hnQn+2DPTnZRAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660030252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4h1Hmlkc/jYA7ipoOH2p95PvZjkNtKW+qidoCudlgSo=;
	b=jpNCC/kJcP8do5poXcYpf5el02YuS/mVkE79HgiFKLhlkbA13rw3fbMrYsg8LkxW
	xoQQWFiy63DC+qTB/P3Hit92wrH4DCmSw7rub6GNNU15jZLmUowtolh7OeEnhwUkUcc
	/ODUwZAbqiEiraJswxFhQ5B+hibLiXK5B45aPDYU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018281837627-36f088d4-0a13-4212-9de2-bae103a6c041-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b6361512833de7be1b823b30fe0a4df1a173f918b6c77cfcdeac61d248539811
Date: Tue, 9 Aug 2022 07:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660030252
