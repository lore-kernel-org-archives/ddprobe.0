Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCE7F2F43
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD65C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661715052;
	bh=USB9XdtXY+/1uNjaHb2ZT8tOGaNmSrODQONXUsK1cM4=;
	h=To:Subject:From:Date:From;
	b=qCdW6gRwZpRSjG6h94UeTPNjLMU8ySsOvACMyVPxcndVLBhkRJyTFDPQJNtsuY4V5
	 6xwlRiKSZZAKUjD1XKQO82u3rHqrs1isp0+eims7wa9Ywg0LW5fhJIA94mUd02dI9f
	 slxeRqrsFQrlVX8vVp4w9pjSia3kVbwMZ8sm/MC80uXGr/JMYAOR4u01Lqu6f0vpEL
	 CZ3qCiwZNOvRpfNc5aLgvlGAG8spHyXH37R2jW7KFC3RptJRvEiis5tIGSfDw78b/s
	 Yrsy/w56AoEKdyffEBkX9/IWsAd5V+d2bVS+E0b27au/N9g+dUKZ3yNNsaO6VrXnPL
	 VErqrJqL7ZW8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54A9AECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 19:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166171505233.9201.3616167023497648741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fe90b1362a28e2e726ee0deeed645fc2d987b839149a63c1524ddaa0ac2b3ec
Date: Sun, 28 Aug 2022 19:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661715052
