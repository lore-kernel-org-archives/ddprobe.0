Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8472E5583
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645306584;
	h=To:Subject:From:Message-Id:Date;
	bh=NIrq8U6lcU3rEQ529eIogUA92fUcH5ZVC+Tz67kwNOs=;
	b=auMEztL1tcquDomJ+1PRfO4C8o7aAdHofixh+Wly2oxccWvkwl2hBOxfr3qOloN2
	HpxEyiBif1StxzsdaQG/qUINh0aPzWy6HrpQETpIjqaTj0VOCa2Wfw7xxoocmDf9uJ2
	nYsOzjBO5kbJcdFf/SZGLqzCJX3XnypxBZuW7MsU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645306584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NIrq8U6lcU3rEQ529eIogUA92fUcH5ZVC+Tz67kwNOs=;
	b=BGDiaJ5d/6yqgL0Iy6zCSZKaNUahQ31qu6pnEtcFFzTP74ea9gacqPBkLpV5ijFI
	JJrOmRY4B/JabnD/nR4gd8QEIm7YAL/c2dok22dJmAIjhIefMr4tq4l8eV0XAYsVceZ
	cLPgI8VLKrQ3oHyPRXJMiRmqxG6bl2vX7bIvgtxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f13ea1efe-5f2a2dd2-66e0-4ffa-b403-ce3ae85a9887-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acaada7634fde8d88b27fa4c2caadb84d051b6f20ea996e240effbb303561689
Date: Sat, 19 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645306584
