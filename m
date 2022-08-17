Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 658F323A6
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 03:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660705252;
	h=To:Subject:From:Message-Id:Date;
	bh=4ppkfCUr9wdpKnQV38pcL9G/pOow95nQ2i1MRzGMaLU=;
	b=jJBVss/eRl9phOgWKgnBGVKHfGf9mFABBvpYjeFAJfxwhU+RUDAIW9kzizDlDzyi
	2oGd22Yk5pRUhUQYiAlpqUV8Lj0yVL4JPoM0ASRfn2KcFg5nPCDM6OwE9SY1O/JbSHB
	kfxPznHyQCK/AR6gOC8/LXV1VHxPj4oTLowXJ4AA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660705252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4ppkfCUr9wdpKnQV38pcL9G/pOow95nQ2i1MRzGMaLU=;
	b=ZIeLPwj6gTlFXavHiER9cUHfUx2UiwDZ1E6o0h0Rk7eg1vpVZg5Jd54+xDdJeaz1
	YeMNmqaDrmLuCJ5L5RjBYvliAd/nzULL+zMH75TfrUI3fsQ366FjvR/kyPHas7IsDfH
	XDtiW8FX9GOsw4O8n5p1u1yHgDPxBBoWbvuXUqEI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a9bf250a-706a1e86-9d32-41cb-ba61-a0f3c6b0f2f5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96b2a4beb275df0296512c1910af41686eaa874508e13c2b589a1854d87b02b7
Date: Wed, 17 Aug 2022 03:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660705252
