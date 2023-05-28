Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A555683
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D90CDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685297345;
	bh=PBKIXA+t8nZPBL/8bF6q4Lq4h9dW1gPT8o5IWj7AzAA=;
	h=To:Subject:From:Date:From;
	b=cstVOgAhQFUp0hj+xMvpcr+lWWFA0nLsgpowukPPslgQxZkPyJKaaOePGtCVppNEC
	 AeuphcG7sYJZvFTeJdvXBcHJQGFQIH9wJU8J97SX8XkbT46G3HeQQ9BBu3MbopZcn6
	 VimQ2AP2FHIrtjwkWrOqEGeLnrmO5sp7PqL9h3Hg66P/HoNYhqIzvoI/RuQADhsnZn
	 xa/o+Lie2Gemf8cNDVsKihrTgyPTqkTX2S8QVPyy82und7bN5+uiG5VYmac2FTRCx8
	 A7RFiIDIu5fZLaVKz6Ji3Bm2VfGVBY+dX5YkCO5ILYVhbqCxp174RSMjFMxh/KI+rD
	 GfWRyUZQU4t7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEA4FC77B7E
	for <ddprobe@lists.linux.dev>; Sun, 28 May 2023 18:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168529734575.2644.1749098201814411742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0252df89e2cd9e45f183768330bd0326816031e70f29038d079be6780582bdf
Date: Sun, 28 May 2023 18:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685297345
