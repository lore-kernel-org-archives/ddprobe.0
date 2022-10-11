Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D47B16120
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79C3EC433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665532253;
	bh=5K10wX9l1aFQDsmHmuqJ8S7Mmrsb8+QVMNIWcri+ESU=;
	h=To:Subject:From:Date:From;
	b=g/c6oCXQw+3H8zLoeenUDvcycqBFuGFNRL5ZGbZiwtvdigBtmkJZ6zQeYeQXQT9QH
	 2nteoLR4856aVnYuJJs7iY1W58VSktO+Bgu2wJ7+Ga3s9cnMP48qOF2Ro2Ae6r2VEO
	 Oje2UsUveO+sXjefOSAA6N5ifL9I2fWBzyVfrdxpfeLZ+9zXDRBwcN4J4YI95ebsXz
	 AXSnxgo/wU2x+xwEygyH5IdjO3rlGDpUDsPgHRqNx52yxpqBHvu+jiy5uAFuWiV7dM
	 oRhsqQw4mrs1ESJnKrUGWB3piTiHZ7NgnQdB6PcUdAQ8zhfDStTQsYGdJwW0c1DK/t
	 kc+Y6NToqCh2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5923AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 23:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166553225334.7857.15637145812498199699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0b34459bb00e6e8d1d361b378c38e5fbd52dad03dc7155d00f2d0b64effe100
Date: Tue, 11 Oct 2022 23:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665532253
