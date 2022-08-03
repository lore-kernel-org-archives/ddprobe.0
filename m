Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 822BA4A26
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659564052;
	h=To:Subject:From:Message-Id:Date;
	bh=+DD8la7XDDJS5VTcxDiRQHUf8xw+Rw+qUZaUmHqjxMw=;
	b=CcNyjiXt86NKpcLaJwCAYzXzvXeToQ4YyUtupdUchUA48wJzTxzJ+xeqrCDfXOHU
	38QzoSw6XPbq57BQAUr1/81gSilAxkN24gefkRKzf427pfG4l3A3Bf9njp4swY+KL0l
	vUkNh7dU98Q2f1NpdiR8rzXvTMVip05x/u1+YIbA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659564052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+DD8la7XDDJS5VTcxDiRQHUf8xw+Rw+qUZaUmHqjxMw=;
	b=WHEt4jHAdHYK9YPXEComrTFq+0VV2Sl/99nh8PtCiGVHAkmz9d6pOsqqKX3Nq2JQ
	IYFn/bC+dRturnjx+rmv6dRtU4LyDVPTP2jAZyOZFD+XuzDDpzR7qhKzxEygoYLFyPI
	Vr1gEr2KcggaH39pcDVAQJUYMSpMzXwlkQPl94TU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018265b9d059-fc88f109-e116-44bb-aad8-44fb423800af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1f914ac8c2387ff1b0d99a5ced0e9f01f5acb8df756e8821c228e324f611195
Date: Wed, 3 Aug 2022 22:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659564052
