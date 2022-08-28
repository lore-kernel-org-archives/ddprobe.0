Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8C237C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7432EC433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661656252;
	bh=1QOrzVyRU/fnLx6mBrS1K9jYkjXaK6m+pH3PYPOTirY=;
	h=To:Subject:From:Date:From;
	b=WRvA/X3H8E0Zj2L5Sq/HbZYMNn+lVnKWJlf35P2yDu3fln7qqIPiTvcsHfE4JnLBH
	 QxamjHNKj4GPQruT0gSdlOwhZswjpRQKGgcIXEv1oNHJzoyp/CYUIylsAxWTXfSveU
	 tOTpEGAclkhkB3UXH8a1bf41VJmCTEf1pfL2eC6nXPo6lfv6yNEhbh6sy2qwDyaxcf
	 bOizBN0Wd55LZqez9q4krp/pe8q0yADk9ClXIUG/uov1rrantFcpcfTGkTzq0jM1sz
	 AXxleLGWJvHsgxaG26Rb9MPzzzCONby7KkT0M2txxvRv4fntvnlo2dfixvYuYtdgoD
	 VRWONWa4dlf9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 570EAECAAD1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 03:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166165625233.12282.9636068969990604600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b19f7fe52aa3c3a1bdd4768b685d27a4b2bf8ea5d514003b0e345150a013142
Date: Sun, 28 Aug 2022 03:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661656252
