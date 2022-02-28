Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EE587A
	for <ddprobe@lists.linux.dev>; Mon, 28 Feb 2022 16:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646066485;
	h=To:Subject:From:Message-Id:Date;
	bh=vD18CuBw46yrYoxxmq9n6aJRjxEwhZ9gVAIUL8CFMlM=;
	b=NigKmqDVDKOX0+Aj7+8ackkuhQ+LgDX6/8+E+Br7jxAOAx7xnTrskKSE+z5NFjsI
	g3hzYK8gsetUxxKMv0GAnxEnWbnMXS2rlC7F1P6T5oboI9GyYhXrEIXUTJ3ZwU5aGvR
	HcQhs0MtVCMP3QR5Ah+DxFqUgcsfU9glOMISLNk4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646066485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vD18CuBw46yrYoxxmq9n6aJRjxEwhZ9gVAIUL8CFMlM=;
	b=VDZP506/njK/vu54RqRtgnEVRubVsn447lzinIg9JGiM25GijWdYTGt9EA4+jM/l
	U7Kii0JjBZnzGz0xFVSa6zipoOUdL/plgchCBCJ7O17kNUsejnEsi2l5cMtyYqBMoYT
	s5s+sM7fYo4BSrsWswl0U6DZ7hiRNorVNsEeOURA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f41354601-912ad5df-5319-4e04-80dc-3f2572fbf851-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 436c65a3a86947085b9797a051b9d6e3a0cf8a4509bdc16619d36bd28036095e
Date: Mon, 28 Feb 2022 16:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646066484
