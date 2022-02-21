Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 858B15EBC
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 17:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645463785;
	h=To:Subject:From:Message-Id:Date;
	bh=40xrTw2TygKQ8e7MlNtVxk7hj0BBUiwzKN5E9UJXo5A=;
	b=bsyH/VXZrzCQwL41WNyxBfY7gc5lS5aSFQny4SI1pL+gRa3/YS4xNatMczj/ejgj
	HwnTwU8klZGRSNDuFNSY/GtkTl7NdzJ7rDxrWkbx7d5aGzwxKva2WMmQKfqtLvO8XoD
	Anx0h1QosWUPLC/RXNvp0CcvaVHUL4k/GMBidC/s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645463785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=40xrTw2TygKQ8e7MlNtVxk7hj0BBUiwzKN5E9UJXo5A=;
	b=Ix5D1hFz2Ol0m4HjrABG9Zcshg9E41Fk3l4t6FHF+Hai80XqpYznDF7ba5Bv5lCa
	mWL96qbWAni7SxIx3EFi1PGtfTZRXWpSPpDQczXuj0mTuW5Qm5l16Owxyuk5Fu5cQ/L
	LSPY9W5O3dUFk59sTmm5hMczAYLHJM9gajm8rsvI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d48cda0-15ecb535-5a2f-4825-8d10-17d49f7e0b9d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a80d0067f05fbbbfe805ecb61de57a81d5bc2edf007037690d9badf6c6afea80
Date: Mon, 21 Feb 2022 17:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645463784
