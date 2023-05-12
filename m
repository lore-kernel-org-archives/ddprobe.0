Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3BE2412F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECB0EC4339B
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683906906;
	bh=gSAq0K+4+IZ3jv99x7X+Spb2TAO27bF5BWN8rYCDRN8=;
	h=To:Subject:From:Date:From;
	b=qRJo2b0oWTWRlaApEzJoy/WBLIfUfB8J5lwM3zue1fbL/eI/4OLgPy9UklnJ0375D
	 CVrSVi9QcSqciYzxRtmhpi+s0Ww5kWzVundMBmkmgN28Bh9hqMU5ERf3haGO2NB67b
	 QvLcUe4wJvYXeS1RLQQJfd7zybDNR8tIe+M73paxP4PMXMRl9j4AyY4Ka3xAIjbuyt
	 IzIpqrBvhWqS+MxQ+GvBF4hw5i4tb8N78UFJWrtMJ/ufJOWsguesWzKPMf4qTftwpD
	 T5KOt83n9cl3mSy7FB+uL7OXPFzF8FQ0XPJlT/ivLMyQGr6hg3swLs+UhIMHlITJIY
	 EFgNtqnwrQf1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDF3CC77B75
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 15:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168390690583.31834.12182612093790305749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afd132937e3060ef69cfd9a0f9945bceea4b72ad85e425497e81219dda15365b
Date: Fri, 12 May 2023 15:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683906905
