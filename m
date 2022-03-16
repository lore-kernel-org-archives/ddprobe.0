Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 983DB46AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647400884;
	h=To:Subject:From:Message-Id:Date;
	bh=j/4fu8uxXzhl6QQDUBTYJWY2oIViAD7tR7wxuAHYPp8=;
	b=QkgjB92+VlCgHGl46e6pr4DjirZV1UtcPVIGGjJ/s6YbfRPGgtS+C8om8MQczD2J
	r8PxgHNwRM0c4MmNSbVyKjPq6R+dI3ihFo1KDP/1b8hwYvFXcJRlpRcyYsZDvWoM7qd
	BXmsZviROHuPTghVt+jDaAVpfFNqsJPBq8603buY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647400884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j/4fu8uxXzhl6QQDUBTYJWY2oIViAD7tR7wxuAHYPp8=;
	b=dTZTdT71QrvyK7w9ZRHsjmxf5CMW/9AQ/0hfclI2t+evUtPUujmEoe19Y/xoc9cc
	vUFejxJMYZs3Ekx+S0Ej77IkcuMsGpLtKPpPBt2ioNvvdbaqVlfa5gJMUELY8LMZ8DS
	6pCdoaScv8Sk3iK9aHs4DjWMLsOyOT3H0oZQjia8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f90be9a16-94b084e6-5818-41f8-a36e-66bb1564ee65-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 80965e00c73964f5f5f0934a949d66b76c429c3e7d6e6b063ea77b0fdb228280
Date: Wed, 16 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647400884
