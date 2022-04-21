Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 054D77A
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 13:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650547798;
	h=To:Subject:From:Message-Id:Date;
	bh=m3cGRcM6IJgy5JgSzwdfMH9arsttmz40I7nI2iElvyQ=;
	b=Qp27yVZ/9rrCOX9YnVYC8K939KNyQS0ZDCHJrAiiUpGZV9OtM+9hlVfWhQXnKek2
	8Xe2YDz4Km1J2WJaWSZBA7RU0WliJYgicGGF6BDSaU+BjpPWdtL5qhmIMmSBhf33q6E
	8R17MmaD4nLU/1xWVhlT/BOE7RG3zUZBr+DM3IWs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650547798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m3cGRcM6IJgy5JgSzwdfMH9arsttmz40I7nI2iElvyQ=;
	b=U+rxOaarC+Ao4ukWYh/OvFtYkcwyT173FbfXn7lnDmTQsmhoi1uudNjfTjsnu50L
	5Yd/LM9+lSmoYAIxlaMijFJsnGbxliGIhi4OlFZKzDL3qsL0/4flsLd8rghYlzd7LR/
	MLpg1K1w9i/27836HPOOQSaj2cI29Y9neKStl56I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804c50b0f1-b797f051-f615-4695-91cc-72435ef2fe0f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a4c2104f6fb79b31d90ef711c35975e2959d18e5eca969eed773b048ea8f0fe
Date: Thu, 21 Apr 2022 13:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650547798
