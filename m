Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B853336E
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750E3C433D7
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665718853;
	bh=Ow+ba1Rw5JEP3Hx7IYqXU3xsJdRgLJX/qgej8LZbQo0=;
	h=To:Subject:From:Date:From;
	b=sNFKP59UsKB2p+XH4Vb+wiSQxrol0opRuQiZflAixZbOv3BF4buj7mj4MytorfZ1Q
	 yybsTitqrDoHdJY8TYBMU00eQzDpcbPvfIM1FDK3JT++rbpOAyGmZmLDBD5+m6lFzv
	 1wQintEFiYM34d6JI6AVBB/byxQMqU6lH+z+LqY+fQ4twgGMO6BnIyg6LMr0/1aPt+
	 TT7yxFW07Dq69r1ZnwcN2BqoN+PKWCytASW0wTfMVOlNYkseRdU1QOg8fsY0egz632
	 dji6JRT/foM9RrW1363oiyzOgDGXLGjywFhoukUG4/0tQJC5d6hZs+uTc7zUr6zaH3
	 idN6vyrXdo1Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52389C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 03:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571885333.12901.8880334797717339510.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d4471a0bc137f2d89fa80a4d9d404081b4701166830712cf66afc0d0346b12
Date: Fri, 14 Oct 2022 03:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665718853
