Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77608F42
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6BF16C433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669648854;
	bh=dA2HHvAa/gxPbGaD496r2z79hvxNddIKvSYmpUhGVQ0=;
	h=To:Subject:From:Date:From;
	b=PhEzPFoEFg5mlrDV5II+0ChlIxwo7vXujQHApS0U2/JSAHmVWj+PRDMoOIf815UrL
	 u44wacRt7HUYT6yK+wgIg71P0c1rPTLCk2dNMYNGjdhzifwEZ3rLahyEeipGi31jtc
	 BLCq5zddCm3UTTQK7lhFCsf7iV8EBaqtujqqMqq7g/al2hUlU9VxHcsI4DX/Pv+e94
	 tqYVb3MURaDHQXLtu9X4JUbZhBMxsyJ3MngW20qoo38fC9rYwcCTsGsVcXYevmXmc1
	 E6Sz2nGdp6r5CAy77fYQgmc/19LrIGN0+OY/toA03AgRhhI4yjsraebw/qxaOR61fY
	 7M3U0EqoNPwIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D8AC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 15:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166964885432.14630.11935606937642100693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9f48b36bfed5617ad5616c6e68d427f3a0781b16d9a84c2df3e6a835cbe9749
Date: Mon, 28 Nov 2022 15:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669648854
