Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4706361
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647101785;
	h=To:Subject:From:Message-Id:Date;
	bh=9izfR3+m1MbCBjW3myjHLewayTIwB9eCBc29ea21sSw=;
	b=B5tKoCGoIQPEZmvXgiVE2rYIdPKCHyg7SvUWi3quT6/qNRLM2KYXUJVGO99GyZVg
	U18x4VniIFmlMeW53kNp8UefEtDE/om01lQXpxQ7YdKF+24HuBWKtRAQlFWwxS3UBZ+
	kBmCnGVqML9MxxBjgrH4ohXpqm/j5LJg5w34h6PQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647101785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9izfR3+m1MbCBjW3myjHLewayTIwB9eCBc29ea21sSw=;
	b=ZQVUtwT+us0LNcXnyIPuhiewCvHHYTMEN+IYhX2CeqD7DTQ9GDGzl7Z00zxqR2Ie
	3voiFuY3fZpzXJP17kprNSGvEfeylB9QUDjGDVKGDmY32ldDkFPUy5lc7yP7Vs9N0Qb
	buAAWmGcf4fWkuZEHOMg+RkXu45hUh+sCq2QRCQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7eeab2a0-0287104d-46a5-4e47-91e3-7e5e234489b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d62ea5858cd4dc9df97ce4bfaec9729f0f2dcbcc1e2e62cb992208a2fcb2dd0
Date: Sat, 12 Mar 2022 16:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647101784
