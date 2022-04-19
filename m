Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3F001364
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 15:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650380698;
	h=To:Subject:From:Message-Id:Date;
	bh=ZCi/KGU83w8SEFzYGeu2q/l6ksQNBmpP5YBalTvAkH4=;
	b=kPZHEnZHwcLng+/RCB9F91xZiqzt8WeEiSh1MlET8JqAYrrFDeYz+lPmFTuvv/Qg
	MUwOHnI60UkwDRsD/facEqqR9MYQzltz4losC8zKqFD4NSRr4QdOWKR1jbL8SRXlUtC
	t3/4NAJz44A09FfpIKkvs4MjTCwmQvNI6Lj/lJs8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650380698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZCi/KGU83w8SEFzYGeu2q/l6ksQNBmpP5YBalTvAkH4=;
	b=kwgYkEh4HM5ZMhuY87EcGhFPsI6axQMC9XIb+0GwSfMJUwff4jfWR4XGCs8v9wHh
	oNrs8ISwkxSrHpsxDt7pHsQHY5cr0h/dtKLrQScho4vjG5ihS7OJBDR8IpC7qscTQCy
	J2x0F9gTciOfi9EA9rA34ANllQOYnaJyeH4V4lgE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180425af290-eff445f5-ec11-4a50-88e4-ebcaa41a7d12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 482eaa229414df673b4b986957a09c6b537a70216922af68fc0b9813e4a5b70f
Date: Tue, 19 Apr 2022 15:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650380698
