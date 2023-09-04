Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85AE237E
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 03:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E645BC433C8
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 03:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693798448;
	bh=8TDGR63hpHUsPOJmotZu4pj35Nf+e6qenJ+61JGodMQ=;
	h=To:Subject:From:Date:From;
	b=VZMsC2A3B3CbNXdpDlho1tjUIy/jIYv7ht9iMY9TtB7gYyeHk9kqoNTOfvTvjgK9r
	 Ud//jKXh579DUDbsRgWHPD5y6YsIUy7JTiLJ5f6N2rZF44wXcbK7hmj8fEpPfuVkT+
	 2a7wRRGdI7HSHBwqe8u0khjkI1N2zQl7ZXOVG7wJ78OlcomwYGtqXP1eafFu6EDiU5
	 JeRD+n/zppYrViI2l3Ii3LyClIkqba6KoL+yowEsBeAu3aIWtJMFv6bhOKrsACktz0
	 PD7rZ/LGH95UwgnDGSuDBYdx5V4byuhlAEGDZXahraPPsSLarvCoMnrsXY9182Len1
	 YqxaRoBhXoFKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C155CC71153
	for <ddprobe@lists.linux.dev>; Mon,  4 Sep 2023 03:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169379844875.4074.13344922667293338358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6ffbce0b2b8b11f5ada65be84fa3a32be9559e415c9c1d3aea027e3e145781
Date: Mon, 04 Sep 2023 03:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693798448
