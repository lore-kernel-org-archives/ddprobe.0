Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34276EA1
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 05:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650346498;
	h=To:Subject:From:Message-Id:Date;
	bh=dY6znWR3/LDbMeihiT+heIYvHjjA+rx16CXAT7frnsI=;
	b=kpycdvqq3ALVY54ubbqFxHrVtGnExReRKzPTq6uYLyg0m36HPWZSNuy3pmHAGcQ3
	CUMWkQCyXJLTJ/W4f8f/73RqcJl/1k8KL8ZAYG1wjEhATeBT4WIA0azow2Mert7nHh1
	277BLxVh2roAQWsTf9IYTCplMB3iv8NcrRcSjVD0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650346498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dY6znWR3/LDbMeihiT+heIYvHjjA+rx16CXAT7frnsI=;
	b=fkUzlkZQRo3UlpylI4xSPF91g1q4hptxNyKrxG6ZkBF+BxauGU3nODCI2b73ajjx
	qzRZD3Hp3cg9YvLsIDUjv0ywH5iCVsd2PTwLmxvkjcj96mlb1XqgzZ29RqiQEVgfCO0
	hRxozHXSYP+oQKmgMS7wcsBsqF3zRsyQQBgHlY/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180405118f7-b0aa4f0b-960c-43db-a1f9-ff90f2854d87-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6296e857f6caa48dbce8aa36e4ad5e3c5d7c83e16cf83b7886a7d20a88a614a0
Date: Tue, 19 Apr 2022 05:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650346498
