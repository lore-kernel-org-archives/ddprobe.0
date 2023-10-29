Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C8137A
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sqoiCezz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92068C433C7
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698553096;
	bh=4RyewgN7eSqIcb538PAaOczT/n5W8K7E6JwZqvh+Mrg=;
	h=To:Subject:From:Date:From;
	b=sqoiCezzxYjnKP8PwGj/Uj75RuawjCJPBVcget3C2jf6qK8nbTn0J2kQ0zT49g0gF
	 irK+Cal+U10DegwAe2kt6vhVWAp7Wv6bL0yUVzJF2fNdRe0e+yVZYpJBoJ3tcARgsD
	 g3asAEJfuACnu2ZJzvDPvZ9dL7FMbLAP55J87BgM6E6xCL8zWEqDKcybCwd2RGBcw7
	 FYphaN/OHq3a0rSgEmDi9Kh/+rTO9pBsuq49u/aemTdXpq+501M9009YlZ5DnTihhR
	 rFEhmUV7Nn5ht8HM90qIuV6q6BWuOcakLdhWETfQS+dFoFMHzviLUtzqnrfIAH5s+Y
	 rNjeKL9/01e0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 70E56C4332F
	for <ddprobe@lists.linux.dev>; Sun, 29 Oct 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169855309644.19346.2295427923470938718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1973e2b1372894d9aa546696869686874ccf1f48ddfd770b8beb1037156bf07
Date: Sun, 29 Oct 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698553096
