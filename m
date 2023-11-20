Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F4135F51C
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 12:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9fgoLJ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8853FC433C8
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 12:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700485096;
	bh=UsAaBg/fuuUc1mcmnDLmARf5CaBWQ9qNudz+C7Hf5oc=;
	h=To:Subject:From:Date:From;
	b=l9fgoLJ9ev1tn7/BHoRuV/Vm6QR6EIqzaIcor5gx5XGhO6ED4eNYlMtGGoMFk97lq
	 1N6WZbosVzIPwg7XRtPLIA0cLF119nsP57/fG5u3/Gq6Mm6JlJR6ALVmVCuvV7dmtS
	 dY68zcYeUVTOxvc6y36Ukwzghx+J73wc5oQrIjkCORh9KCOsIKpnx/LuyPAhvBNJEM
	 vpYPMkHbSsq5NoG71c8MH3Uedx04k1EEmeBuHNadiwWv1aCufkUpryUH6LccxS8uGn
	 Ns/AA1+IiKipZW6Hm5cEPrY05zj2clatw2/ATOmhtTBLKeMgwu74MfM2u2S8ycm7Bu
	 83HF3bsDRvOqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A6AAC197A0
	for <ddprobe@lists.linux.dev>; Mon, 20 Nov 2023 12:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170048509642.12986.8530158068839983697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0de23315fd275b7c7e63161cd1004163a2620c2f15d15a5e5bba49df862a8a90
Date: Mon, 20 Nov 2023 12:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700485096
