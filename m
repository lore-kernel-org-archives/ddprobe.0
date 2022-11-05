Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C674C2584
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 747CAC433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667689254;
	bh=v6UzyWKqABrt5dBCcJ2TsKaBiQbE7jfOm1Ede5vOZdQ=;
	h=To:Subject:From:Date:From;
	b=GCCu2abvPy4GPsYRq4zTnN4HaS6zSilEJcWNLLtIFU5xmzPMm+t443L1jLSjsjcer
	 0QtPYxIMlBMxoez9wMR8ReGLUn5I6u1g+zpCcjTXKiZXJFVG7YvJMjGHb7Z6t5iUS2
	 Id2vHxo57AEo37/H8KPwQ5Q2pOUONn8Sm+a5Ds54kGaYz0DdEM2NVIrBXDNUMPiNTn
	 AyVP7Jw22VrTrwEcc8o1zj5CQCQL964+IlAP9D1fVM3kGVpH8Tp3nMJWYEZMVw1e9r
	 NB0CIw3ey2yLk6p/vf3oaQQlx+HBZl1dxFZl/q4g2k7mOHuin8qxt9/W1lgRWjzuwt
	 sFbaXz3vfLZAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58A04C433FE
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166768925433.17665.6095010212584832793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59c41523815c77305dfa8ca30c577548ee03b3a1e34767f3ddece90efe00a0a1
Date: Sat, 05 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667689254
