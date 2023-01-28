Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FE71849C
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8D25C433EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674942185;
	bh=jTfTcIYg4iKSTnaDY+BTx8uSXq4zbP9fHQheacPgnQs=;
	h=To:Subject:From:Date:From;
	b=iW8aRb83iPHIIvjj06A5OVdGGYUzjJI5IePhMKImcs1fR4n65anPQkqIMqLtzZl83
	 E9XxoP6zNnwrcAsahu1cqyRQ2oUqTLKN7QqH+xOd6c8hKIsJa2OAzAKK/92/nnA8Go
	 zoGLAYqpEBjPzkbtM4MkuelaoayX5e1Sf9rWo+Ejt5qigqpjseF80NLGSZHnQ/t4MM
	 0pVeWRrzw1W7atQAkHJebQOoXs9na3i7rVrreRMeV6CTDlHcf1GX8O05gmK/8XFPAP
	 9jldB8htxXNuGvUaI95lTxOmbaWKKpdKogOZo7e1hMtjitl0B4EW+Gvaxcq0XTsSOz
	 3MDARnORVAB2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADA2C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 21:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167494218574.9464.9824485566716227071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d79222618e361a4e79c2ad59df002dae3532910aaa604dd966ad3ed60492b7
Date: Sat, 28 Jan 2023 21:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674942185
