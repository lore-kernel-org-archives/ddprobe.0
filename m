Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B728A3205
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D8D6C433C1
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665670253;
	bh=UVRYfUFvukJWFo2YqtHMNgQiISKtfX6U0R7bz8ooqXI=;
	h=To:Subject:From:Date:From;
	b=hHAPnqS0ICTcZ4R+IvHLPeQHlvjjbPHnFTAamN3dNNCmdAq6AFoyO8vZGVm68dr6W
	 3brSQ9gAKM1x6u6e0649eQxHRBQjMCVlM1M9CaTJGHceanNk1YIM0Csk7QpsmlM4oa
	 tqw6U0nIP9gdRmCyeWldG/6dZZ6B09yfESpEZe96Q51eDdUdCb+mBFgxifWrpQMrRw
	 ybUIP2JDoAUHiMHM7veLPZGd7N/irL1egc2KD3eCYl5GoFbsmLYV1xmWwMXkoNlevs
	 ELTDKQMXrdQCCxuTW7t4b5qLrby3el1VFDRefs2WwfFQNW7l/FNo42o04yXsGx4ax4
	 SBto3dJ184qyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 535A1C433FE
	for <ddprobe@lists.linux.dev>; Thu, 13 Oct 2022 14:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166567025333.5301.3924647920015078727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2244ee60412468c10d34e21f47ebd791751b75475e4d5c77a3bc283607d89818
Date: Thu, 13 Oct 2022 14:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665670253
