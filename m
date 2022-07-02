Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C64B1365
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656722212;
	h=To:Subject:From:Message-Id:Date;
	bh=doDscMY5F57vxUpbcG7gKq8l9yW9f8CmzScEsJ1wqC8=;
	b=VZZE8WYrTZE+UjPZAIIXDNyzL2vEb2cCGO6zqsr8OAov1hBmvXwQecpPsL2ShlwM
	7tDyE4edKLToeGORcGD7hNyW136hVqZOoz2ofnx8HiZWKfIK9y95z183kkHYYSYD9WX
	cDq4JRwRpyvm8QHwdU6GoP7LwSaoNVrInDz1xgjs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656722212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=doDscMY5F57vxUpbcG7gKq8l9yW9f8CmzScEsJ1wqC8=;
	b=Ltg+iQwCUvfauN6HDir10wa1LfwTT0VE2fsZCICww98P0h/ZiAR/NzGcV1iZn4aH
	XidTXiHVZGxwEWKKpQ85XMC1hWnQQuKcRBIPZIvUxYbgs7/dBkqFfrR0d8NLg9/BD58
	LCRVAla/muMndeV4aZXyoddWQK8B3uqmClUjt8W4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bc56c640-0793614e-9caa-4b44-9e91-de2599cb6218-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 478db3e4046ad5c6e4b12deadc52aad7008b1f84be64c4ca8c056d4154f057a8
Date: Sat, 2 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656722212
