Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98ED13B22
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645071085;
	h=To:Subject:From:Message-Id:Date;
	bh=pjudLR4kZ0zikhjMfmQz5jwkI2tOA/jhVLL6E5T4MCw=;
	b=Dcy9ri+iw1bAs4n/niUHYpcwkAxqElxYmkvB6CEYDBzPuyjbEAv1pTspyajPrBf4
	LnW6V1Le6IRlw62F7vFl2B0OJKjR4zle8JYsRom10m7o2rGVdjJzfWdTCT+1k8Z4wni
	u5bC8POgebwZ48ZBgn1ER3/LMCe6gEGqYun6tIUw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645071085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pjudLR4kZ0zikhjMfmQz5jwkI2tOA/jhVLL6E5T4MCw=;
	b=YlsPvAh+Kc01+MhPYPuOpm16EgLd4A9nb4FNjxxQlh3FJh+lK8+loCRKb6yAl9/d
	mRs2IdrtDMlWKzav9uRsPYvbxVU8LsQ432zYymIWukFAm/3Oyu6Q7xpxPUAN4gppVC3
	LvzOUJGyDoE0vg/rNVASjOOE6l4OhieaQwvV0PGU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f05e0ad07-6ab62acb-d729-4634-9600-7b5a54f7f51f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a7586f26b543402a3f9493d148f283a1a3192884fc560afbcdc62192f213827
Date: Thu, 17 Feb 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645071084
