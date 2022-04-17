Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26772567
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 16:55:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650214558;
	h=To:Subject:From:Message-Id:Date;
	bh=zKBzS8zGJ2S+T7UlJjdWerKYdW+t4fUijS53myH7WfQ=;
	b=SPP+j4S7Lv1ua5qQYAKZ9+Nk5l3ioYYw+7jPdaDkZbNm2Ld1IJhDUoD7UA210fGm
	8umJucHeWNQHEXwBb2xUWfAZdGrbNNJ+LWcyb6boy85LXxjB0SZInjS4Og7Cj/aXBeb
	5A4nFs0k/VBB7ZDF7AdtbZcXIQ/PkCIbo0L59w3Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650214558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zKBzS8zGJ2S+T7UlJjdWerKYdW+t4fUijS53myH7WfQ=;
	b=FAm1Zoli3ZMuSpxxiNLr3p52fWfkdlXh2ER5mryyvUuspcmSsN2OgD1gZXGlYATQ
	XnQdJDWh6aJ7K8NlrqzK12scr7OETbMLfkH0G3kqzyfDrCCfEZy+spJ4uxyKHNjS5zO
	u5P8Z2y+pABknIl8zBk+Rt2o+pK2zEP0Jfh28Bi0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803873da32-0c4b6994-3e66-4484-acd1-59685a7aefe2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fde5e24015aa3550fc13a60e7413f2e3c5ca55c6278fa93f8555283f779479e7
Date: Sun, 17 Apr 2022 16:55:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650214558
