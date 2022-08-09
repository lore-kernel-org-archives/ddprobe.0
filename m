Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8629133C4
	for <ddprobe@lists.linux.dev>; Tue,  9 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660070452;
	h=To:Subject:From:Message-Id:Date;
	bh=ikLBDH8+VOt7icUpEdCxjVXOmCWlFwD+jnqbEvtEUhc=;
	b=EzkC8nI2d0WFFJ4rvTpAzFXJM1NGISnH43NBVq8zVwqxAjzLI9PqwM+Q3IL8RiDJ
	kXMLX0x2tU2nXcjHUUJO5oFtHTWY7BpcMq2NDY9p/qTlP8XyLcPAZoLKnt2DH/YYshs
	hhH4FwL6FzUjqqnbJKJZIFqq/aTwsSgXv2nMacnc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660070452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ikLBDH8+VOt7icUpEdCxjVXOmCWlFwD+jnqbEvtEUhc=;
	b=j+Fb5wbG3lso+r0grubjoaWP687oynAIqZTR+HZ2t1RaysvZ0SnLC3PnDV6Bjgjy
	iGG4sGMGKyeS8vNITJbxhs/CFNernqmzlwLt0IoDBEmMonZJZMfbBQjkOQVuKtO0TQU
	MB2Ggs/+7mzA3bGCbuEbI0FqcKbGHNK4H1JptVkY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018283e8dd57-69ef241b-16cf-4d7f-94df-d752512d2044-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6978d4542b2d2f6740e4d73cc2bb782b6311415b5ba36d5b02f927ea9f4b5f0
Date: Tue, 9 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.09-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660070452
