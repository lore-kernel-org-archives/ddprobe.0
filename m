Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDECA7F
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646871085;
	h=To:Subject:From:Message-Id:Date;
	bh=BICM/mCpPqwMaSTCv6Ep81GyKWdFllPDVKfzKxHGbmc=;
	b=ith9rf/MxjxPgw01N5V3rRfphr846G6osghsqEjdhWm+y240zLS/5wRINCG0rktU
	Ve3rr48ectWsfCzAzftSKWe4FxMB+RCj20ACPf5+u/ZDMRs2lK7ZbwHNd6UfxEJacEB
	AeQEEAD4Z6sHCUO8tyxzfOgxi2DhHfZnuLJ2XZRk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646871085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BICM/mCpPqwMaSTCv6Ep81GyKWdFllPDVKfzKxHGbmc=;
	b=HODQWzLu0B5e6CnCDnGWW3zVJWI46GEW4d7wm+aKAt3yW91B/686PhkQU03xSkG5
	hFSOiMUhP2oU6Q9eA9Kw5QVjvOvn7+GasCtSini3V5Y677hyrxB7yKXrrcmcS1wU9EE
	w/0qRbwW/l0SqzdhtAR7ngPtOr3wC8v5kHNY4RzY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f712a7f41-3a13b594-4e6d-4777-b04e-2c3425d148d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ffc1bd32bf5ef8840ba362077274c565dd35be345d42b6289df464270717134
Date: Thu, 10 Mar 2022 00:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646871084
