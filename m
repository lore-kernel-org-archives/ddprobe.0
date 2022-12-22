Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 146533209
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 963F9C433EF
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671728487;
	bh=bWVx+CnN5UQzYMCZS4PdjH5g4tcz33pbWW9H0jD8Kaw=;
	h=To:Subject:From:Date:From;
	b=NDglBD2sy1z4NCj2jYYvsPoSeWIOAuwFXRlHAAQaBcV9F5enCGHjq2bq9+T4rDoED
	 7cB3vHhrZCijrJW3BH8Ucs5vB2iQRtdzRaqW2y3ZmQ9HBw5+uEF3wfPjA3FLaFNYLi
	 a1HTe4vvlc+pHkViH7YKyhD1YGi9/aSUTscYR4634SZN5+my/y6F7BOMGlI4kEV5LA
	 ppdGmVruNzD3fQsH1cka9y/A/T5cAMpuBtQzPk6OGM9m/PCvvMrOxLSl+E+CwF1LKk
	 mH+C9/QRYt+qplIrLlfDXYMkSRXPnQpweou56r1URc3fETVm5A+FOLys1KgHQnK+t+
	 xCbiIVoj+M+zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7467CC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 17:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167172848740.14923.6063420613974100191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de0e40c683e008cdb32fd5ad562633e33af1e9aad6325dd721d84fa06ba09a2
Date: Thu, 22 Dec 2022 17:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671728487
