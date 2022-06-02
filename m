Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2928B3D99
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 23:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654213319;
	h=To:Subject:From:Message-Id:Date;
	bh=LUjnnmcl3PLKk37UvQ76OACEeU0wcTQ2BpBMp+rQMB4=;
	b=dF2Cc9tfSO4l4XCcxKI/drDCdVGduH5CnTeAslewH8cEHgY6bGli0wpVgbegEYU2
	F/wHYL+Rfd3xloGD6mlKYf2hU9cyxIOK5wa9ITACMKDvP2yt0HVz0L5/gruJbrEjSs8
	2C1tARyLvgcV8IyUEQSa/F4PMSU3EUzGGjRMzZag=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654213319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LUjnnmcl3PLKk37UvQ76OACEeU0wcTQ2BpBMp+rQMB4=;
	b=AvB6nWbdX7dEEjeIZ1yawY3iJzFNem4utgJd8Gop9QSrMYelruAi1bOR5la5IhHO
	l/udvFHmksdeqGBukmHYHvtk1jIjB3MUoXvqcxe9eaUgRJPBBCdA4RislNUNW+rtRN8
	MCo4G1HKnp4pg/xr5n7jZTP6QbQy2zfn/JagXJyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018126cc1a5b-a66edbea-4a59-42fd-852c-fab85ef22745-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4e2cbaa97eac4f443bc7fcd681a53846ead358497087f12f50a24bebc8c87cb
Date: Thu, 2 Jun 2022 23:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654213319
