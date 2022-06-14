Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC6A323AA
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 21:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655242379;
	h=To:Subject:From:Message-Id:Date;
	bh=fbcA5E0qRcP6B5DxZhFxYSC02We84pkuwkFsJ8siGn8=;
	b=PVhnpWcMrOuVDjOXO4GvB4LVLSda/Ig8PVChchPgSG8nnf0I0Kzh00bz1eEJM17w
	vg8zSgOHyR8Hw++UI00gKrrx8iMgtjIMytkYPiZkNQtHbbVUkt1Tmhv6vT2egq3yjxV
	S6LiiOL9Qjo4gN5Y9QkfdUj0emjbD72cu6hY7o+g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655242379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fbcA5E0qRcP6B5DxZhFxYSC02We84pkuwkFsJ8siGn8=;
	b=KxNwL6nPcFZ5N8t3nv4L7qIVw++yUxy+6rn5BRb+nYf/BpnOwcOZGb8XcBEP1mvV
	zg/KWi9niaPdCcN7kW506mV02UXHOF+Bi2Eo+WFcJ/yBc859X4kXI9YoiPVjijWB1eL
	D4YhkqWdDvLiCORQOZBfLPvljjbctPCIWNEILxts=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816422500c-49aa6346-3206-4cb2-ba21-3ccdb581d737-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 858078e17bbdc600d1152d35d198a15e1a8c53ed11d8371a9c4555a8ae57c0fc
Date: Tue, 14 Jun 2022 21:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655242379
