Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5342DAD5E
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 18:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0707C433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 18:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688669828;
	bh=J1L8yqbwf66jYoe3hLXItp5MhuRGk/pxpUsQJ7CGYKo=;
	h=To:Subject:From:Date:From;
	b=a/oirh+VPkR2XdqLtcLjGBk6N8UJ6zNXjjVvETfzx+Zu+IzbN4hWC3VmzRu0i+6g3
	 yVVSfkqLBuWXRGjKmMdBBYuUAk/ULC0GmeN8q74C/n8Q3a4yUvB7tY+BuhkVwMTzbe
	 m1xpO21K6ywgjq3nK4SufTeXHsq6h/drhklqLy9Znn7lmGzteYGreKa1/GpDK7p0k/
	 /qT/yLpG6z1KiH7/ZtUuLAU51cl0j8QVJiufHzrkRhFMOLa1E+V8wywBb0WX3R/dFV
	 6OmNTAu6PWB8UKGid3Pqedcmf/D8yw25mkDXw3THibQV978BC4voUO918CyJDtlFeX
	 Dc35ziA4+EcDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE917EB64D9
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 18:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168866982870.19934.12392894554848755584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ce8430b1094403c444bbc39a4f8178ae9ade50c10c72d0a5b178db5b1f53bdf
Date: Thu, 06 Jul 2023 18:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688669828
