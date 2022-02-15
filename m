Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DD1B1561
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644932485;
	h=To:Subject:From:Message-Id:Date;
	bh=BmKdtTcDrkjwL0fm4eq1/R9PrOpfTULCNqzEGa9HQCc=;
	b=Xr5/U7dpDnwNEMJHzJJ6in+Bp5L1vCiBJnSSaDn2hm++7iYxSxPLvH0+ry+K2RAY
	6EEiHFEtHsFRGMVecwP06ovhvzDkFjFsO8nx/Smw0IcEGWowA2BREshF68jlhlU3xfp
	+jBm7UhnbP2Il+ZhEbnzxCe3MfQFSdOzoXkAhXoc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644932485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BmKdtTcDrkjwL0fm4eq1/R9PrOpfTULCNqzEGa9HQCc=;
	b=chM8Rb2tfGgGFaT1IzGF2nlgcVRsoxpZwtLdEj+q5RQyFcJLM7HU4utNZGH09FGl
	mNWloJ8ykJ8gsSsSNxbCPjU9PUlFsQ8Rt2PJpvW3lY/TD12hnWr28D1FQomlXv2C7UL
	PRez+rM/NSCxSNt9bikMjy6/9E8CJ/MRuzqynfJc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efd9dce7a-de485bf4-dabd-4351-bb82-78b100ba8b48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e303c183f0811e86e7cf0f4470f0d77ff92dd90227f42e23b9e2468a5e0da5b
Date: Tue, 15 Feb 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644932484
