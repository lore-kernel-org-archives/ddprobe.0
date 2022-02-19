Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B525383
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 12:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645273584;
	h=To:Subject:From:Message-Id:Date;
	bh=MNfiKMTuR/cFpLciljH25/QwOQwSyzTBDgXRaMTZtb8=;
	b=jApShWi8ARFqKK/FkiBGnjpLmHZ9TT6qeAWMNU6lySARMCPNRlbxDBt2cUFWcegv
	BDWzTvtN4tEAOg6NOKO39TUqq8RL3ALaTduO4RQEV4gG7QKvMFXG/66/9OSviaP18h0
	l5EILs/ysIzM5/WLENJxmKOCw7lT5K957IVzOIbo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645273584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MNfiKMTuR/cFpLciljH25/QwOQwSyzTBDgXRaMTZtb8=;
	b=Ucj7gq2EngNIPcL3JZqZYXn7YuJFxmWVeo0Re++xPBC+ohh5KwM4ZKDOumIOtbSI
	wlmEiG7wlmG5n98K6bpju50S8rSjxS4mMaukvm2pakx6nGllVbWEgKZ3gyRKCSa7rUv
	ju7m1e6WFuNg86D0BKEfx1l56vpvoAhb/FuVdjlE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11f29477-e9728412-e005-4dc5-9f2a-d1eda760ca58-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd0eacec433a1807ad764c5cf7902ca32bb71898818f4ddbf6db3df9c2b93be9
Date: Sat, 19 Feb 2022 12:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645273584
