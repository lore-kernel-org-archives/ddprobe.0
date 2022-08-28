Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D18797C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8109FC433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661723452;
	bh=fDDmTv0ysofVABonhIFKHbTLi6QhPUATHhH/5NFcfOc=;
	h=To:Subject:From:Date:From;
	b=JE+j8T7Ogdo7m+jkU5E3G0wHWQ0OWKwXqsKGZx4NVwxshCb/rqYGHgyiSso9XqGi7
	 axFEFXlnUmcZ/fLc+zN5IAQhxuZ9KLvH1qx2IK/EmhZHMA06uh7ALofiaZV6oEAtrJ
	 33eym3utyht8FnjrrLPSJyy70Ipn6P05Cj9uhE6O1oh5FhABRLzrFX1bF4GgfB9CJq
	 +rZLl/g/YDyCS6Os8Qzoo13KWmMNttV+towoPegDojncIchaUlQukp0RFQk9/ZsuJ/
	 Xxz+RZXwp7U01BCnWvYPdN3pq39FpHFl7h5cklOlZfPNzVAMtw3GNfJPnDPYNFQQ4K
	 13TOQwk3lTgEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67543ECAAD5
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 21:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172345237.10493.11584634220918629473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b847fc84ebc936107b996bac6245c3c3cfce0e9710998048cbfdfd27893246
Date: Sun, 28 Aug 2022 21:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661723452
