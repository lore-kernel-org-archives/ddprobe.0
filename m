Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C06C47B
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 07:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6944BC433C1
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 07:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662189653;
	bh=3zNN73cSEJpu9yhGaIeH+Y0xivhcJCEg6GoXYZwz/FU=;
	h=To:Subject:From:Date:From;
	b=oowGWWnR5jp7s+auQsdgvpLO6996lGC3s5UFoa49YbNMgI348uUhKHJ58WOfmwhsq
	 +BLEpMCBQ1CFcGVtNQVbOpnKXLH6K5ezZTsRSFeuVaX9AbQxDhOewR851DhUrtg1js
	 fV0crtzVMreu4N+SN9W7nS5PkdgNrKRE7B/y1Li5famY5xbfay/iO2m9wChq/7+82O
	 V/SkY0reNVWKDfbJP35iLGPESWSp73Twq7E0DIkoRyT7sd4tfbKNy7s91UHPT2Ma9A
	 +gPl+tWHmYSOEWTzFi+yRtgnCtTArKfp1tdyrfiQZS8EkR1fZQW+iEzGNWk735q5s8
	 PeBxsL7hfq6Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5004CC6FA82
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 07:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166218965332.12322.5754475416548481464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba82569071f96ff070c518d8de1056993c091afe91b80d4baccdf439712a5be3
Date: Sat, 03 Sep 2022 07:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662189653
