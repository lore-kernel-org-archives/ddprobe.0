Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D69B715A8
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D8D8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672468287;
	bh=hDiJZMwiXvJCv28CcoSzhTu9N0diGFMt5dXu9hRvYeg=;
	h=To:Subject:From:Date:From;
	b=HQy4CziUZ3qXRqfOr9UuIHX/2CwGSOY11u4DgRjynjWkjo3nwxJIBpNFt+ft/Q0SH
	 3Gco8Uk6RcE9fGDgzso/MuYQMx2tITfu5x+1+EDp0PHqiRkcc+EoVDraZT3lgwW6sX
	 GzhdNYG/ZoZZDy5k/skq7P0+iz4kVwjtQ8AQkROFfFcIm6jfRrXMXE+0rEmkgsHLTV
	 sqctUUrlok5/Ul6i2QV0RHNJYPVxLmr92qOBdIRb9tUPSg9xMxHd8FGGpjy2lnWTbV
	 3KgtcioNcAVEEtfrLpMXKuk4rktqAmRyQ5se5mH5fLBaZjWs5R9Lv2XpwCmdyYXGxt
	 jFoFz8hVsym+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63ECCC4332F
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 06:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167246828738.26910.847142246192725167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16865fe9a5949be1a939f4448bbd5f63320d3378c0a2d6fad58a891ffcb15092
Date: Sat, 31 Dec 2022 06:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672468287
