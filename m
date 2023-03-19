Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497D010EC
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 10:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EE1E9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 10:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679220306;
	bh=j20/Qi4gdOw/O3hFxREkaYjW4AKtU+CBFNdBwdp0Rzk=;
	h=To:Subject:From:Date:From;
	b=bDyo17ixjMlko1tgSdpSni+y0kmADDZ19ydkLVcXDRBZl1RoJp1Tr9Km746MpypDr
	 qSFOaN1BgrD7Vo6FbSKU7z5qBmh50jvvuyJ8ZzfNuoMHMxlarDxBLlS2sTe31Hyzs/
	 44640ENjUn/tZNJ7o+mAB6X7XF/JJnjvPtli8wmpRehwDmwmCCcG7jagGqUK27bWUE
	 BN7rxD/HlLerXI0u8Q/1alkMbaYZi8aBaLovaKI0BBLGrIyurrm1qMDgy4y9hVnkW3
	 sNw1WIbIQc8WbFVlnSXZ4FZV8YMIG91X61Z654SvZgOLs2c+KzkYpqP/xTHaRDotfF
	 V59b4UbHeu6ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE93C6FD1F
	for <ddprobe@lists.linux.dev>; Sun, 19 Mar 2023 10:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167922030575.19525.2962238765292799977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42f2fd665e020d8cfbc28a39f06dd6a4166a523b0833a027a7dca87d963921a3
Date: Sun, 19 Mar 2023 10:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679220305
