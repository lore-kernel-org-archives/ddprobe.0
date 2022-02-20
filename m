Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF6665A22
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 08:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645346785;
	h=To:Subject:From:Message-Id:Date;
	bh=MwZ3/wEqmlooEzvBMoPYoyvBPMrutiDBrlML4+InTlI=;
	b=Pt3tLGKVPW5jfvUVKlPN38qPjN4GQXUSBI7mYR8C80yN3ZZJf23g2jenDN/65viR
	NY23/QbteHYL+redJ/Biz/QvStupgijTgdHMZbA8TUGeA/T259f9vGsbyNxa9mZW7sO
	kiseYHibI50FigDMTYZEdnDL5ZNjw98YxFdskgr4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645346785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MwZ3/wEqmlooEzvBMoPYoyvBPMrutiDBrlML4+InTlI=;
	b=BwADL8iXm8CfEOWabHvKHiJKkVQbupMH3oz2hwaGc18ZYvOw8rN5uGdRCq+hlXOo
	pFozQmr8C3hYUJAI4BbinWLHW/EONFrs+5k/C8EmlQV3DHXDede/Umdre/NfxZLCd8h
	dLDdye89FLNuEuI++r+4c8mhcPx1Xxa76YsqAc5U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f164f8641-f3dc3824-1dce-46ca-a19c-2bf0752feef9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc5dc4e64792e6d3fdf7901571afaa209e0408f1cc693f3c57e76f197c1e077f
Date: Sun, 20 Feb 2022 08:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645346784
