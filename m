Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01AED807
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 18:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649529778;
	h=To:Subject:From:Message-Id:Date;
	bh=mwRVaAepph4JZPJU7G62F6mgPM1sgwCZL9Yaj8DUTFM=;
	b=HmaA43eATaWpGCeKWsdCNEn07UoLp4nGAyE91Pd09OZxd+3cuWJQ5bUQkM91hdYL
	CtyciW13aME1o0G3UyJMBUCTnFbhmrznUPgEAJgF0UWuL7VMf7tZZj2jy/6qLfcCHef
	DPb5aIHE5FEoRNCkjrPVpDWjFI7jy3x41RPBI2O4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649529778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mwRVaAepph4JZPJU7G62F6mgPM1sgwCZL9Yaj8DUTFM=;
	b=LO/W9e8ubnM41sFIDh6JmxVok4KUDupaP/8SC7krGUiC4pyyUbR5zCWXnO8CMKCr
	PBCz/yiiSYaMAi4EbEb0NWY3T7AwI09n7LQ+J9DES8Zj1Fr9VXffl0PZWzDjxirkjev
	hg1pWnllw8Gkd8L4oMbBuDHuKpLNoPLSeaVPSvz8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800fa2f066-b4299573-d55f-443b-ab7b-9812c8257caa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4eb2b7f79ea416f70f73073b3ed6fcfe245ec3b3621d24da478ca83daba934bf
Date: Sat, 9 Apr 2022 18:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649529778
