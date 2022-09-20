Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C934510EB
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74D05C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663651853;
	bh=eza94tscC3TKY+5eR/CAbxHdH63NiVwtnv7BAhcwDg8=;
	h=To:Subject:From:Date:From;
	b=hhWxv8P7OPEwrr2eub+R5huCFC/Cu+gG7U6wFRDkEv3k2LKLvzgqIfe/6MrLPw+GT
	 BBFmBgho9R+5gTBYhryNmDzotG5jDDp9zWPh/CHMTAj7RAbVWvXrApPvMYUsGhXpn/
	 73p1AW170FV+GBtFE3flAKxMdlbJan7xWi3FVBJy/R8M4mDwa9BP8JH2RSGTqacgdG
	 8vIdy+DHA0Qu9AQx1Wfwu1SQqVpCYK6onAnyi3zkI7/B2opT1LWL51wye+hZsvZLKt
	 GWeCyj4quu8zNYuxfznqPUYKMvaXa5yagqwc2itRozcZrV0GfgOsOpReRPu8rEdWTY
	 DvtLxvP0A9Nhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5058FECAAD8
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166365185332.19487.14019791168448930059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c48c509399f273320513a4a3ae216172ff9b7606c0bc5c984a94933555921c2
Date: Tue, 20 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663651853
