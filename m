Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F47D7C
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 00:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E031AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 00:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690332728;
	bh=dd/ip8A/vLqFpW3EUC/dXvim4Q4M8nO5Av/J2J1y7Tw=;
	h=To:Subject:From:Date:From;
	b=Z0cu8/hmOmF8geMBKgrinb8yDP2gQCKuiSpNZXuSnRLCIwCedAn2KD54oEiriZA6s
	 OpnxKCEEsdFaRFL4vixkOFJfzKy9aHwpAAjaU8U5+rNWVdfthaS6R1ezTweLIqCERh
	 l825BC+5DS1ibBuh3lesoxGnnTD2SpKFSYgiXiXDpab/oCp4bMMsG3EfJfLd7lTX3W
	 NxlCzH1fAkirHH8SE9kVK2pEtRbSwzqWFRStuyLYpWb3kI9sQXOI4R0AgzmkWHunCB
	 kwWvfuy7wEJIsbKbQUpdVAtJ23ACZs7Cy2muVrhZP1RREjYd8rKD/M2YO4lv3XMpzY
	 bMRGpuXj/612A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD89BC001DF
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 00:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169033272875.3131.12281826093960602273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3707149a52884af3e1188b3b5b8839da7277e4983b2f97086dc171afc5498fa2
Date: Wed, 26 Jul 2023 00:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690332728
