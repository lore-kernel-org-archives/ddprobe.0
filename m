Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8636D5EBE
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645389684;
	h=To:Subject:From:Message-Id:Date;
	bh=gH0FGV9Z/OXheMFrWWcgiterZWkex1o5zTWhxwkUmDI=;
	b=Vm+Kfq1byPtpVT7lIaxrA0LBQXz5NTUK3P5gXmow0sFDjjgGHy8Uy2nUdbzavseK
	RmCIuYnlcyf/rdV4L4atcAS5b9DRMSTlcVNWA/6U6PeNWCLAJF9p+kvh0iy8aHgWDP3
	KIfNxWWtfEkEfaubae3c22rLmSVHgvK4uwuLob8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645389684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gH0FGV9Z/OXheMFrWWcgiterZWkex1o5zTWhxwkUmDI=;
	b=Sw5S71Kv3qISB44C5DWmK2D+wBKlBV6Z/lEc6yqutEV1oZ6/EGvwIGvsdYq8vAG6
	FEdAB7oRYPWltayg/zjFbVTEzhPMVVGuHFtcvcLtT5fBa4HSfeP19pA2a2sEFViPOCg
	bDe7AgUMp7kBJwm0MhXS6tMSFHtHPemkP4iM/LfQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f18de1ffd-a84a2ba7-6eca-41e7-a7ce-303149ee33a1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc607b26296d3286074f4ad24b316c1db6f2b40052e71cb33e56a32d4b783d9b
Date: Sun, 20 Feb 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645389684
