Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AE37E
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 23:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646953584;
	h=To:Subject:From:Message-Id:Date;
	bh=6qlGyCs9FXOL/0/p2RgfhLf5WfLxYxp2h2hl9YObEO4=;
	b=I66nD2bvQN/V0InfnWk7JXJRU4jmOtPgcwSqUb3xj3dIu3u3HGkMcJKZDe8f94DU
	BJF1dvQLmoe/mTGHFi7eGBTf6ySHiQ04OPJgMEPeYSoe1OG/IxI+1gx1cZErRrD2HVO
	vT+kXaLIxkKvyFott+di/U3+bls82vrOQjkhRSn8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646953584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6qlGyCs9FXOL/0/p2RgfhLf5WfLxYxp2h2hl9YObEO4=;
	b=cOn7uFT+XlSJGlN5MGyzH2c5RhyuxwFnqQxXG6ayosQBZWRC9MEmnoqauNBmpzBg
	nICxqxGsbd7v1YHvFaLGYLw7PPKrZv8MqyA1QOl7KPgPpj/cGKILSBim2O7C0Lo4gTv
	A+ErnAsrLimSgiF+UmCEk+XRV04+AZ2nuJQ+5Ct0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7615585c-0c0b30fe-290e-4575-8647-8426196f3d4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f9db14efe65cd84bdc0dbac7bdc7d4aef038b0a5c352fa24671d95fa8bca6bab
Date: Thu, 10 Mar 2022 23:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646953584
