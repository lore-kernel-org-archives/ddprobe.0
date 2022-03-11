Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89F6B5EBA
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 23:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647041784;
	h=To:Subject:From:Message-Id:Date;
	bh=d8RYN/TjGAD79qpa/UUSUOY4kEcjx0Q9MIT3sTz9KU4=;
	b=Ii1nwBgqsYCVyae3nD7XiwIBkpwmnKMlfbo6nE1D4U//463M8qA9NW1+p4QoGu9y
	ugWglXUwywSKrrRFGbut72VXEC38TcrmsE2ZMeSZcTfeihbg9Z6dOXs8QRE3fJHeR4W
	BHftTtssGVeNEYEmGs0zJ5H+Q5FT0qIvC8+3KynE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647041784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d8RYN/TjGAD79qpa/UUSUOY4kEcjx0Q9MIT3sTz9KU4=;
	b=NKOBOXMjBMpPQaiIRu2g/aJtbpv4sp41NY1HJqtkZBg+f7iwPQhQeWmZYUAJBxBN
	VyEKvi6mfezwkyOXc1XW17oO5UtiQRe8G/saee2zYwFZAPi1/QTeiX58th0Cq++4ky9
	5e/46doZLcayHpEHKmKdu0mdFvkx18VfESDidX9Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b572c09-c3e954ae-3d9d-4162-a445-4016da33c80f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 022943d4afb36eed5a8f5d946829bd247981176cbd3b21f4d7453ee6fad3b8e5
Date: Fri, 11 Mar 2022 23:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647041784
