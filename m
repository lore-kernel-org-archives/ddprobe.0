Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC3D3D74
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DD2C433C0
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687939388;
	bh=7fHBI5Xm3aIpp1BqVpPH1XtHshUXcTlxGXXwiOu0Ay0=;
	h=To:Subject:From:Date:From;
	b=jwhoPb8PYsOc/saE/tNcq5zKOhOv6aDucD3YjKLqEp34uxT8lhaLJEZSHHLDzgA8V
	 FGeMd0eqzB/CiHIPO+81n3tOmHIiCh+5huUgEHp/MEugoolJ8BJgSOofFTomtvHKRH
	 fhXrsA7bQe2mM8TxUE4MP3ZPdLLAYFln4i1nQgS5zxoZCsnYRQeLLDRUAwuh/Q1g65
	 D2WqUhyKtQ4Lyi3yn5U0MAyPwwmAsEoJnOy1dBaYMoVGQYasM8BnJZJ12PPaMPHYUd
	 sv6pJfYONXu0JpAFqx9FXTDNs2YT38Y5joHSEcfaukH4k4Ohl+8QDDYNHAO4qXNhp0
	 RzR+cfqANZcsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3CC0EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 08:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168793938872.1189.12930702297262571058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7ff3f4687e99ee172520fd908f436be5c6d3a2736081383ab0f18588a33d76
Date: Wed, 28 Jun 2023 08:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687939388
