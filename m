Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220CF4415
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iiee8tbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CD62C433C8
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704022696;
	bh=4Ky6ZyO8szFQ3Mtlfl5DIjM6I5S0lavQnBvyt+C1TF8=;
	h=To:Subject:From:Date:From;
	b=Iiee8tbSDdJcW4+rsYD5RgRrU779TqjMWwxSW113py5nRp42vi3EspZnmqrTWvkLE
	 nLlN0iacjNT+ufNT2rJCyWJA+JTlyPqLFmIE4AxQeIc9nWvex9n1riCVpynsNcuhm7
	 a48a1Ok+T+SF45oaqfkalJGUGfRciKYdlwlEa6Vt7x8cOilNU3kQ1wY4q1A46OKiaZ
	 9jabnmTLNZ1GidPfiBOaOEHwuiOHmys7lClTTyCeEyNIh0IoI8/5CtG+FmIw1kc5wT
	 H3Kx0Ek90swo8Nqzxs5VL7ZhYFvYGhLTTuYMbb9o3nUllTklMXJZnxBYIFaPuMfJxI
	 zucfh9wLrxubw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BD56C3DA6E
	for <ddprobe@lists.linux.dev>; Sun, 31 Dec 2023 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170402269645.29965.266141735095868075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbdbe729054d5bcdcbcd4807cf23c566148b4a95f0772ce74e05f20963e580ca
Date: Sun, 31 Dec 2023 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704022696
