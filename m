Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 739C92F21
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646330485;
	h=To:Subject:From:Message-Id:Date;
	bh=SAH/g5SK6INdo+wO/qrrjh6yE6b4hIudFCheJTGwLME=;
	b=ZtPqyjzutR1Zg/BuEyCfCDvq1gLPCLDSyi4PT1VMKuKqcBqEle6eq2MW+5zq7xKE
	xAmOBPQ3RjhMirzGlWz/0tV45RbEoWN8TSLaancKrl1DAZosGJntaISXZ9ownUMz1b9
	sTO911psZmx3vN4RebkhHdwyHNCf2mhftwHmSbOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646330484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SAH/g5SK6INdo+wO/qrrjh6yE6b4hIudFCheJTGwLME=;
	b=dXU9jl6ZZSNZcB1wT13y9iyUJ1tofmQ7OLYNmQHQ2+fSkACyqEOOZfRcxLB9jxlD
	sJvlSRr5W7Y9GESlByunJ35arItyJ5VoZBewed+PRQ3cCziC9+IdMR6geYDVwn6W+9m
	wvaqSuMbaMjd0iXUbptPKqEE+EAAS0BUbN5hxl2s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f50f19848-9e94ff86-8aee-40f2-843c-4afd0b942edb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fa620648eef635080e83fc9b2f66aa486f3c093502cf574962fdc4ef15b06741
Date: Thu, 3 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646330484
