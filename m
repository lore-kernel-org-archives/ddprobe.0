Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3486AAE
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 19:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660678252;
	h=To:Subject:From:Message-Id:Date;
	bh=F75J0kQXR5uGN4VrQ7EAXTx23GeAFZz81EajuusBrQs=;
	b=dmMOLlxz1k6m+hSCPkM1/NkEt0BWg74eUArrrawprlCNU8fs3g5HFyPOBnblmjzx
	QjffnfUBNd/chKcVLK+eo/kzWZjWIz5N+HrcF4KfUfeNuHdzTEdtnaMm7qvBk3AiUYK
	oJg/ocO9UsDB7ZWVvE4roMajbWbk9/KIHzbPQ5rM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660678252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F75J0kQXR5uGN4VrQ7EAXTx23GeAFZz81EajuusBrQs=;
	b=Z3vZmGXM3Mp1nvdQsSYqNvK8hDbv23kiijJwO6WRnP3gB1OP/ZLRe9CC6OOZpWBU
	saG6emV1Sc9h0jMx9GWSgk9OcEJsl49EZOpLvXHvus2c4ZOeLjOgisR8W+DQbzllRwy
	s2k93cF62ASn8oKJ9wMKat6sHmBkOAHoP0ZKsNHk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a823282f-9e7f8c32-0824-4021-ad62-25f845ff5937-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf5ad9579d319084343579690c1a0ff35823271aace68816a07d4d2c94153c6f
Date: Tue, 16 Aug 2022 19:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660678252
