Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8FB27F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 15:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659366053;
	h=To:Subject:From:Message-Id:Date;
	bh=sHu2+31IrVeTZl7oCjTJZibF44AbRMB+Ea9ksOn/7nU=;
	b=FSGsDclawVrOYbYXOaHD0IxJgy4Gq2U2EAh8ZnYy43isfo5xVDw0Ahu9dgavzlKr
	IpcnlUI/UaArEvHCooarOSn9o7CDk3d/jhiZouyYCDhsLe5DmluJ3S1tZYpkw08R2A4
	GbLx6JAKjiFeQ2qHdkDUFp2VUJJ8p9oq/EY47lVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659366053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sHu2+31IrVeTZl7oCjTJZibF44AbRMB+Ea9ksOn/7nU=;
	b=WCYHyiw98REthXjUYv5qcN67VqpSJG3LEyW46yR9+bZVT73R0DnGyrADFi82OgYV
	qx4HwW1UG1Hhh0ft6/WanNaCzlxpVv/qW6CLkFDFMrlTctCZ9s4x3nbX2+gwA11Qu6K
	TZfY5BeaaYOnRLA0HC23bn6tGZERCbdganN6eoZ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018259ec92cf-f9c62db0-bb13-4691-a3cb-4fb13c7f4f7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8e5d5f359be6ba38bb31a7131a6628f822b40bf6c9712b70d64408198c58251
Date: Mon, 1 Aug 2022 15:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659366052
