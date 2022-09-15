Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAAF8184
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710FCC433D7
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663284653;
	bh=YBsLCGkx4KMNNpdRaV2M/D/cemW/0UxrnAXBa5dw9XA=;
	h=To:Subject:From:Date:From;
	b=Rjf0iTWHyYxLjnHcmb9RhBD24v0/SzXczRVT8Mcugrd2BiX2Nvc0mJtExGKK3bA3F
	 JwAQX7CJRqi4JtyJ9ybFqYDHCeiOBM7J4GU7HTSNlZUdplyL5PxzugFCvbyiAKEf2f
	 V0vvEMbLwn0UvyIsbicJiCXg1j61TTMqbR6bQtV9EHKkwJQ4Xw3NBWB10rr9ICOpSB
	 /dUEdED3P3NsDOWA8ubsErXPlADIjEu0ge9UzfCQOQ8wkZv10DzCKxMXYRCIPLwq9M
	 tXBnd2XWy+RaWIrewLf+1MX+l3dIkuoRm96m+91dfDN6xFvLgRciA5X1lqR+AKddnX
	 gPYYiFfkb6fpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5631CC32771
	for <ddprobe@lists.linux.dev>; Thu, 15 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166328465334.32428.4866908226316582180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 430c53a6f0e95f378c110606a0fcb51403db345f86540f16feb4ff2d06943f70
Date: Thu, 15 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663284653
