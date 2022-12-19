Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE81A7E
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76CF2C433D2
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671421287;
	bh=ireyyrWSkq8ZphGGNzE7EdyTdx9PEC3/P0+f+A5OQdY=;
	h=To:Subject:From:Date:From;
	b=uXnZwCMhg+sc6FNYpQhRjqfxL1Y9ZeHKCZZqW+bhBKkMza4hGguXH1p5W4EtZGlrs
	 k5/iFoJL17En3Gg8j1sq998MPGQSBqkJGgEHPqREUYK+j9U74VVzZD3TzD4Jn+vk06
	 eFPeW2UCW+VbkaujgLkPbmdyrR2c5r8NsrmZFVsHO+yZ/iXAy3K4XhIsOADf/1kG7S
	 SxCPSLQL2SxPAp+eIrjsDAnN6S6iBIg2xLCRfIARrXrZzReG6jAo9V7LiUgMDvZZn2
	 bdEFePwkxn2OINP4LPlSywrnwFO+yvnhVeAZUvnZ6ENdC2CIr68bsNKA39i932SR80
	 90dNdjTS05C9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FFADC4332F
	for <ddprobe@lists.linux.dev>; Mon, 19 Dec 2022 03:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167142128738.7257.14030105463888046950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b0541151bfe68522336a878b452210e83d4f83fa505e45aaf1faa5d400767f
Date: Mon, 19 Dec 2022 03:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671421287
