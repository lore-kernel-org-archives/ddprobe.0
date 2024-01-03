Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAD41DA22
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHLPzz4R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96323C433C7
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704317896;
	bh=02Prmibk7A/47IsbtvWS+wjPdVGqxsoVb9R0OeXAhcg=;
	h=To:Subject:From:Date:From;
	b=qHLPzz4R5gBiFgC2ThHJq7YnYF/vyLZYUk+WDPXTftZBUgIGJ5VlxmXzpYNNCwqok
	 fbkhGcz0Z8WYSAty2OTHOTdqF5X++TXEiocrYMzai6pichrmaLaVsrXU/1cnryq6Op
	 irINqPHgf9susHRqEBV/UXGSsAMvcCRiOBycFfp8Uu+RVC5bvxLOO+BJF1aHvFkSS3
	 0Zeza1cnXfPZ+EHSTu13X9j2eJ9/TcenoXW1AWG/7iTcsp86nZxV/xkABEBZJVrgo5
	 RH8JAIFKynNQNw+inUYYDG963kQJpFYdtV9kACFoe9Wb7PNK8qEiLK677JWiAuUb5O
	 jLzxS73dEHtDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 74E8AC3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170431789641.17483.1394903358240337752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bec84246506f7954bb3d5122b4e54510bc4b691991f00fc50ca4d10bc4931c42
Date: Wed, 03 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704317896
