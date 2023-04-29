Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4316A3229
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 21:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B9EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 21:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682802965;
	bh=9Zyz24kceZZ8Q/GCeArATG9+mJ6/ig7LFMb+UYviv8w=;
	h=To:Subject:From:Date:From;
	b=lGe0fSf8llWOjsDAsi8/LBPAAUpQg9zQUxEYuB1igf7qqC//f+yT1ppKGF6h4WV2G
	 6votawgw6HROMc2Yxi0PFM/o0XMoEqoPA4GksGhf0OlYegnuH603dR5CuTTyqAgEmF
	 wFvr2yRbVjpi03mJT9zsNDRoHkV38T+z/iLEkyuYrYk7qBdknRUScY8ixjStGtC0sU
	 H1GHYGa/ya3aKyQ+w01uA1BeH3lBRWysj4UrwTntet7DrnAtZyMzyi+N4DqUfmxiQz
	 mCNDTrQnP1XBEvAl0DMDRVfap7ntfm5YmTPSw/zxu8SO0q69M2OhLYspsIBECfPGIB
	 SzSwYirN0FkTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB5F1C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 21:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168280296582.24764.8016586150277278301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb60b4df4ae708630aab6fe8b8d2e6c56cdb57848e7d60bc56766e93e4c7a599
Date: Sat, 29 Apr 2023 21:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682802965
