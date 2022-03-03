Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95A3B66A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646313985;
	h=To:Subject:From:Message-Id:Date;
	bh=N+5ppduQBZIMnN9m0acBgZ+kw8nRM0w4zFx0lcQOJaQ=;
	b=AEB2pWMV8cvWKx6d+3HRScnjTa8Xsy7vJRKDsTur8nbbRjBr6yK1AbDaz94Aye78
	ihESjo8GdUXD/a7MzZHA/Adw97whn4jEJnfZw/DlFiEBiC/zn9yT2CJixDfPQ/IUXr0
	YTuPStWvlv9sA11Z8XsMCemjM5O4bN0gMViB9b/c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646313985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N+5ppduQBZIMnN9m0acBgZ+kw8nRM0w4zFx0lcQOJaQ=;
	b=RlxFO8dDSlD08SJ/L9cdmqb30bTbkPoX0yL7pGUkmDY4gwMVRCAEsDw8BVGQUatu
	ODIcOQ+qpySIOgez7q0wN8i7PFdOcD5FIWedqos3kIw5ZanUkyU3CFFEjV4UUtvi5wz
	3NWP3zzpx2ObunJjqr0WVfcCnerRByleoGwSPC0c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4ff5d32b-156e4213-7dfd-49a9-a7f5-cdb5f85a511b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df4806e10852bf0ed726489900d6b6ab6e59c8a5419fb25f5bac81cc90220de5
Date: Thu, 3 Mar 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646313984
