Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5372015AE
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 02:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0A68EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 02:13:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674871986;
	bh=Xgnh6kZUiyC/wSwNATEVmvbi2pQrDT3jBwZ3bMoYL5Y=;
	h=To:Subject:From:Date:From;
	b=g0mY56kdafmVgKXF1RROHOU+hAGkRGdpzMJTua5cwv04fpiG7fx6X/bC8HOLuqXzS
	 R8UXSK0o0m/QkYbVioHKcpLY8na1xiUzR1FyvEkvKt1qyE5yJ6O69l2yuY/J4Az1ud
	 RMdxWpXYwrTf2K4t46UtBwNl8+5aBY1U4Tw2FHvFceQhInv3Y/Vo5TjX8GY7eYoQWO
	 nBnq3I3w6K7Ijt+iGtfksO4ujXNyh0cmRskJSs/y+StVly5U6bsi8yc1rOLLZ+UQKF
	 6TZlImtv36kY1FPZcebr8ZI2X0obtDNVQxqboacaYLLGm9oRy54LGjtw6joW2jI5H/
	 eqoFoxbSD1/YA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1FB2C38142
	for <ddprobe@lists.linux.dev>; Sat, 28 Jan 2023 02:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167487198582.4933.15749159162272378674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e0b98c4cb1e4e91d76151938c4debbad53975833ec6fda4b0f96d88998d6b0
Date: Sat, 28 Jan 2023 02:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674871985
