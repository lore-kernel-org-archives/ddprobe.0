Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B1D63C0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 07:29:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46A2C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 07:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686986948;
	bh=W/wJGHG0JpeqzYEnZ6eC/woKdCzCfQ5CxDULcKBYY8Y=;
	h=To:Subject:From:Date:From;
	b=Svb3+ysuetplY6yjFLVCw3K1s/Of4nHtS29ku8l1KmuXMkZPZq3OYHei8e/yhi8O1
	 sQbnMC/Qex0mhgo0mHtZq9yRY/TXmBCim3EiAf37rAS7KoIAYVVl2xo5Hf1BrRm+WJ
	 SMaOGx8hp27lH+uqQdS84UAW3ur/qN3HaFS4OSoOOZwYb5au+p3KnUO6wzejPaMhL6
	 xT0BpYrCKRtdYh6QdfjCPM6EDUfGJ0sTu9EOIgfqBSNqbWTMuhgbE9JtMl1AE/LwbO
	 zBfW7mJjJ6n3g/ALWbIUl/ZOCfb+KJKgVpWmVUp0Dv1RSEUjcaqZb7ml4uPPwrsRpq
	 XwYhh9r8lcn9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B68EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 07:29:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168698694871.19192.4210657834913845205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69dcda7cd8279913fb15290f50a5250216d71b2efb3226ba878e8270b5a62ec1
Date: Sat, 17 Jun 2023 07:29:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686986948
