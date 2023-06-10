Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77F64137B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9811C4339C
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686359885;
	bh=mhMG7nuKoLULsQVGCOWA7uWC6Bz4hT8oZnqhp8uo8mY=;
	h=To:Subject:From:Date:From;
	b=kvvi13/2e6pDbvzabGxgq0EAhXw7KlYfLdCFtGj+cuBl6UP9EvqolDxd407ysmytB
	 IhceSTmg0w77NsuRMP/SvChNKKmWFR7/+964IHwq6QGWonQR2h8w8L1FPB+QcPNYk1
	 bz1rsR12kCfqdl8tTKK6JZiNCN3nBaIxOGNrOs4vk10+XVHVFx8Pt8eB7zt9oTwMkT
	 X53nyKkq77pgz/IdlwuCCIB1Npat7yjNRJEimZgeBVMnFi8vjZNNvsPM5k0tFXpwNz
	 MdKHhwh7f8NEx/7e0n67FLEjH5/5kild7ZU1X8fwkdxuQo4zN39YL2wp7ShG7v1Yip
	 MS/ON53jfgvWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD274C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 01:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168635988576.24378.5072278431711853219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0dcf3b55276b497570d3f878cfdcea15e31a5fef266eba91f91e58c4eb501910
Date: Sat, 10 Jun 2023 01:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686359885
