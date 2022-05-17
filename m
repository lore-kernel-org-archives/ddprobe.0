Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 117BF1103
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 22:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652827439;
	h=To:Subject:From:Message-Id:Date;
	bh=0RVJ+f9Ukr1Eo6qr1WviFkyjSqxvEjTvKoUx8xnYogU=;
	b=hIFt1evdtrBwymGWZe4iBxgLpwIuNHCmBHQsvsKaTYVSy2Ij/qJT5G09A3oN/fnN
	lQ8UBerN7JnGkwx+qiWiuu0YsWCJRbM7uxv9W13pXuUiP6AV68n1aEb+1ZL95a9cxsx
	myGpxVZbOS3Suqej+2E1XZl4bW+xt9kjNv8GRjls=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652827439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0RVJ+f9Ukr1Eo6qr1WviFkyjSqxvEjTvKoUx8xnYogU=;
	b=PCvE8wwliELdk1G4Hk6NcOBrA8bp4DiaBglk+ywqBCTvxBoEkbRoTRRQXCoWCd+m
	DblQ/Fp3tRxTBy2PpyUyGz9B7Fgw8Nte8Y9dQFXMrSciMVmsVG8WKBBnzNTAngbNmWe
	QqWO8y7oEjf3kZmeOoWNqNLyxXIs2iX2kkhkZGFk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d43140c0-3d1ef165-34f7-4590-964e-9567a9f9eb6c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f7a356673bacb3875f31dddfb822b0e794b8142ce32ab3aa8e6e47416e56a58
Date: Tue, 17 May 2022 22:43:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652827439
