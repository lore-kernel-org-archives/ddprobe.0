Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A857C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 03:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644634848;
	h=To:Subject:From:Message-Id:Date;
	bh=RmFdut9l4OFz4F6YWSTQO6UvSfzYQjHtzK0ZJLlbZo4=;
	b=hBHn1KZzIacNW2B26ju+TYIQ/mxJWj5+e4tR0me7Eb9NPjVmjNKelKDWK36gMNgo
	ct5PGgPsAtE5ZuTD8KszCJe9rPxJzUOKqTdtVkM6IYxRCPYqQMgPqCBDjwPQehG+CbJ
	X6l5tky7WNuBeIGf7byDpP5Xm4JAsQSqdHnjWrhs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644634848;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmFdut9l4OFz4F6YWSTQO6UvSfzYQjHtzK0ZJLlbZo4=;
	b=H1pLe4EI6G/aClcnqu1qe9nf8JY5mUlkr7oAm1X7IUMgkV7h3HWaAiMMMGNKoN9r
	zE7g90r2L1W6XI59gcfEKSDTKq9GhXzq9K3zN7ZaI8re+O5bbca904HOEbSwdAf1fP+
	jaxzb4COKRKXPdt2d59WLBl15hX/yNwTKCHr7z5M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eebe03cd1-37130057-8dc6-45e3-86a4-ab56a3d6e6c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 282fc3fd0925a1103674a478813715abf55ce5a06ae3de424c4d07466902b554
Date: Sat, 12 Feb 2022 03:00:48 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644634848
