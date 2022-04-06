Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B7133CB
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 11:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649246218;
	h=To:Subject:From:Message-Id:Date;
	bh=BHlGJvEBRl7AFER+LRih71sK4J7LUximqEqOnNEo5m0=;
	b=j6xS0X7zgEC+OUJ+LSnPHd/gzdwcV2AFb8nS8iI86N/89Hj5EUsN6ee9GLkZSVDR
	ZL1auyMobAg6q5L85xbqIkLNKsi6Au2r9+ajyl3B1uEdVfb7aOMmlJxuCyEUxNVoEVZ
	hUii2KDEeO0Dr3avEGcizBaKkiG0n71ODGNFxrlY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649246218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BHlGJvEBRl7AFER+LRih71sK4J7LUximqEqOnNEo5m0=;
	b=RYduuEvneSG0+l8/00Y8URqavV/k5/pPTSzQiIPNl3CxR+O02DSGF66UV/sZr9xe
	k/bc8we+7CFvh6NeCrqqE/OeyTgiFm0w+LoADLrrbObap9ed/5vQ1rGPfPrau1tSXGC
	7EmH0hbOrSgSC/xazNFTE3RnpttX7sPp4mfFCHXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ffebc2813-31f7e58e-991e-4a05-b7db-cc9ba83da4cb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2780a3c71e6ab9bc724d7e37401643b57ad1307d4d16353e0f5142c024107b59
Date: Wed, 6 Apr 2022 11:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649246218
