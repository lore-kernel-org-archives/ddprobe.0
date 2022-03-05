Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1E647C
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 13:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646485584;
	h=To:Subject:From:Message-Id:Date;
	bh=hiRd0O6hAfJmj4JXMEYznVhAiuIGyvENpWuk/iTunYU=;
	b=ictLEBlsJ76j1loz2QQdBjae+6+QnMEZe2fnC+rasbEdwgzCr6bt4sMJO0MuKf6R
	ilKqS1RqsTeluF9Kj1BnGPv/cr2btRsgmTj5EuTsipFMV77jr+87EIsfm37S1U1+20W
	QvfpMapjSdkBw43s9GqciCIAG9G+hM6CGTFqv9ck=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646485584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hiRd0O6hAfJmj4JXMEYznVhAiuIGyvENpWuk/iTunYU=;
	b=lGNhdb0LTW/Q0pDNbuz+kAgAvpjuy9xJhZbJ6ppvRs+Gl3rYHzO1lGEQa+zYP6Iz
	lr96m1to/2Lp7wSq31N3HaJdeW/Pn24mwWkbUPfNy/fJ8O9nogvoY1U+SJYRf4m9Z+B
	+vfyy1zrMVZEvf6yER2ycy4IAXUji2eGkZXJHvUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5a303b84-d6a1b77f-f5a0-4500-b2fc-0324cefa03d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1c155d78db6fa77b62728b7ac6b8f1fa876f541a5e6366187f6ea9a9a040d147
Date: Sat, 5 Mar 2022 13:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646485584
