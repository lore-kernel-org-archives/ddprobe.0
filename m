Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4534A2578
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB23DC433D2
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681660026;
	bh=NsXrZCGTAHuheRXVtz5iiHAn5zPLCjerb6mE33g976I=;
	h=To:Subject:From:Date:From;
	b=NA7hQK9+z1yfwRHzpDeDHesAz8UzdAfk7f1fbsVnZd8lw0utShg9r3oqzV1HKuKyP
	 FFepxXBIcyVehoBzdecCfEuPbcMW1ftRHpCsWlZ/5LLZbpC3BZwKAEnXXNhjsmPIPH
	 lV6/A8vYWOsoxHTUSA5KGb9Xs2KVj30yQesttBmxmxMJ4A+A+QLzBBlcMEgbE9v9+C
	 seBO+S74s1JQJYoQ0qkxMBWNuflKi9wo3DrHyI+iWUBaYndSB6w8w4nibc7H3lSDb6
	 cvNYYk8KY2uBikont7FAUD5+/wb0LeTQCh/6hCloeWGTjCBsDy5/urMPmEkkkhlWP3
	 CmvLkFdFCeteA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC386C77B73
	for <ddprobe@lists.linux.dev>; Sun, 16 Apr 2023 15:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168166002582.8586.12421016479633101163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1d63aaf4f1b4784c0c2b431ac85f83cc635eab87ca9f2d5d1f7be0d8ac769bb
Date: Sun, 16 Apr 2023 15:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681660025
