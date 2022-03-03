Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B8E7A
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 08:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646296284;
	h=To:Subject:From:Message-Id:Date;
	bh=lbDOsCU4/U8VZ1oLnJQbLwf2+HOJ+NRUrmRI43kDfts=;
	b=b/4Xatx6w9CUSdL6/xa54c2p1Uu4KZAIu8d46cW3TMNfee/EuR0AAH+dvYqD/jpu
	9ovJvttFne7hYSghVt1/JbzibGwGawIQDcL1ZwE6t5qeQZHTRuLxQhoFx2kU/dS+8Ox
	BNGUYk2AylPPMj1zln70nzp4WdCY2SsuuZpZ5uBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646296284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lbDOsCU4/U8VZ1oLnJQbLwf2+HOJ+NRUrmRI43kDfts=;
	b=Zn0dJZSqFuoR99k8t6DSU8Kr2L+KxehsodjPUWQEtIdudjYKu5S2pUiVh4Sf5OkU
	IaUm6Bz2ep0GNjg0gYT/Ys1z8M/KgZ2IHYNzZ2ATy3pg/OfxB+/solAd7a4lc5IMuB9
	7R3rm1BOxZy580Zu24XD3FvlGMsjOvo8v9MKGSnw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ee7be69-6733ab13-394f-46f0-b9fa-e172d737ad1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ae8ee596b19b4c56c07fa7ad476aea58e89c10bc374d16e6f09ef7ee0680a8d
Date: Thu, 3 Mar 2022 08:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646296284
