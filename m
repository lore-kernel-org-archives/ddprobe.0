Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120C62103
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 07:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653205619;
	h=To:Subject:From:Message-Id:Date;
	bh=17BPLHk4nzzr+M15tKEevMVNGOyZKsV8qrkWcB9z00E=;
	b=FUqe7rp8kFT7fpxpjXH7FwBkCeM7ENU6ExTAUUw3W50UPF+GgK/zEDiHm1iIJ63m
	Lr4/OqMEqyCLX1QVb/cD3SDvBBFm3NqHzQucj2L8Mc4fu7Yorw8MZRA6TYmup7nhfzk
	X2vj/OxxIcml5ciW/Uiape6v4+RJ8JoC1tFyh0iI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653205619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=17BPLHk4nzzr+M15tKEevMVNGOyZKsV8qrkWcB9z00E=;
	b=KuJ7Ycc6IZzN6Se+m2C4OuMfkbJWtw6GO6ps+wHwMOaZjn0FXQ7dytaSTiUPk+Od
	CKazl8HMezfsBkNlAXxIZQk2eOUcoo1ERYpvficMZfzOsTPvtVQm53w2xtbuT+Ovj74
	RjY7P9WNNl+c30KOQT5pPsiLSNhEtxcq8Kvafqa0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180eabbd240-7b69c9fe-1dee-4c43-8adc-d7399552f1e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9d31d9cd7448809643f7ec5b29160a59dc228c60c4ef73be22bbe580828d6e2c
Date: Sun, 22 May 2022 07:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653205619
