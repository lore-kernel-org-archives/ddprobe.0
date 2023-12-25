Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235D04A2A
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 07:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/1U8xor"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97E00C433C8
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 07:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703488696;
	bh=GwZIQAAAViN1mD3i98P2Fz8yK8xXuQXm3t9jZDdiktQ=;
	h=To:Subject:From:Date:From;
	b=s/1U8xorqtwCDH4hmhVm2k7M5ij9CO2zXH+K/UFN4LctWD50bjCqMtMf4c4kTEoOx
	 kKK+WNdVKjQD1/+zESzxlW25CQ1s4zMzRkcpx+xEtPtcVeIEYo3BE+UUJiGQsr7yAF
	 8mLZP5hAu4z3tSrzt1eyW3JfQHmp3bG7d8798dxzgk/v5pq0Lh3LwcTchwH3AU/h5f
	 DlFkK3+CInk1yV3IPj7+FN/TSmge0SRoaI3Jy2yA6lgKXLioIz7Ok/EHTyLAhwZMad
	 MeQbrXCspzglLP/vrwkaKDdA0grdIV3WH6+ENeUuf+AdgfPMVmbW6iLKk1sy0TjP7r
	 q0Zeoh13OKzVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7C202C3DA6E
	for <ddprobe@lists.linux.dev>; Mon, 25 Dec 2023 07:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170348869648.6981.8964940722590945153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d76c9bca9a93720118ff0ad54224cd0dc4f66097db60b787853ddde7d4e5cb76
Date: Mon, 25 Dec 2023 07:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703488696
