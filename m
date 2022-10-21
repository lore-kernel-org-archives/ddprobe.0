Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC98A8F56
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FED4C433D6
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666338053;
	bh=TOEfJ6mG3ABcPD7DDC5DoyyV1bXGffXIA4bJD5O/WlY=;
	h=To:Subject:From:Date:From;
	b=vGdz3SgSy8nEn0BA/rzZTRR95JlHrZ/8li5rE/kk8inaj3SCv+ARZfHab7SaKhnpt
	 8SnOQDA2kBM5O9mRautC7C/YyCKOX38Q9WOw+SaZgbEFMp5bpYZnuEOvHLj/M3wOTM
	 AYu/LmvmQi8zmIQmkZTeePW1Qc+Rrf+7EJZ6XOOnK/9xIJGeJSBWQ4cqCkYCU9ANkf
	 fmxaQFCgv9M5wb/2pOySZwM+SjY0o/mYnWwcbmVlPy+CLcLz+CLe4Bqj+ozzYu1GmI
	 OxDla2VkBcVXWs3bWTDhs+dJeWUbISsZaIs7pVX6jeUR9NmF0znrqmWRL1KMW71leW
	 GlCWI8BZ0D7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5380AC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 07:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166633805333.14696.5500469061725602533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f0bf26065a91ddee345933a9a09515e192d3f91c1fa15a49face3c47ce7ab4f
Date: Fri, 21 Oct 2022 07:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666338053
