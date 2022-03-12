Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7449B4296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647091584;
	h=To:Subject:From:Message-Id:Date;
	bh=lI3UaHy9OA4nF0I6eJcPArI2h/BMpDdKMH1qrkU82zg=;
	b=XfSKHi1dZgSU/Vrrpd2tvmIVgrrSzgY1icI/KUo+ZgK+FpXtszR1pokJNe3OAMfX
	hVag7qhzlU4BW8Y4GIR88xLBC/XanMeut0UkmM7YhYiNw5V62CEjBZC14FFIDYK6s0h
	Bf3XCD53BEn3b6nO2ztxOMZMcNPJIkEuYkERRVdk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647091584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lI3UaHy9OA4nF0I6eJcPArI2h/BMpDdKMH1qrkU82zg=;
	b=kaDPRWJf00b2r8Lyp6DV4d2XiEaFSQdGZVJevaU/rjrqo3UQuGwFtk60+ex9T6za
	ZBc6mIEVU1v4JezM4sZfADAOM81Lg//9gz8Wx+yA9y4oTMlm+MlbEAWynwgKQ5PL/P6
	PGkUWa9UXYZafWkoSQgFOIEfcvvT15rR05FlG+j0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e4f0f05-138d467c-b5cb-4156-8fa6-5a5084b51bf6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbe28fbf7ac98884dbcab2c4c9adddb2e1c56bd13fb80dc0efcd46329e6ef5b8
Date: Sat, 12 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647091584
