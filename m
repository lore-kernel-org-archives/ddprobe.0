Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E4E3222
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645997784;
	h=To:Subject:From:Message-Id:Date;
	bh=K9gqWkU2KlbK1C1DIcYbyVl86ye6evRDgg3UtCQxscE=;
	b=F548UyYJJShiNCxNhOOdoBVUSLbKLN2FTOSiaX8DmPWIfqWN1ewCMXQBT1GZj88q
	ltpAyCkbnE95emv/lemXBdKVSa3Ag/Dur69QDL9l/0l6mFBbsrjAQenoSIMYGNPQlWc
	YCvVmOBmOQZ61Z7GtIJtMLm/CNTKCpKjddDJX2X8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645997784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=K9gqWkU2KlbK1C1DIcYbyVl86ye6evRDgg3UtCQxscE=;
	b=c/Lnd7jYnNH3y7vHzEl+q8dM8MHvdURi5m+3QwCMySzDtvuBrql8ec2U+1MGX+pY
	g840VipCrVozxxWbi5lniFYcadg1Ttc/Ic2Zhtmu+yPl1YDSCcR+sXbEAFHIEuGDtID
	reWVzUj+pgwrh8m6soolVCh2tpsOz3hl8JDJAbBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3d1cfeb0-a46d66c5-411a-48f7-a022-20ec8c6026b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 86fc55f798c151154a4d079324cd7bde035d9aa8ef67ae457190f2c2c4f6f190
Date: Sun, 27 Feb 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645997784
