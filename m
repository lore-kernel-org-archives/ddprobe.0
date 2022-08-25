Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD0694C74
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 65542C433D7
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661464252;
	bh=EXeuiuEdrOT8j28gkZDAPTtnkIjSrYbwOrCtPnvFKGQ=;
	h=To:Subject:From:Date:From;
	b=bN79MZb+hd3DfZ2TTzv4A1fxhu9JVdZbxdIXx2kdpUp3OvShGk7jEaKMTJ+W6RlmN
	 XhKEGDMKrWtEemSqWLxatCiEGentiArUJSeo0CDtlW6iyjqh64bwLRwp8WJlKkQL6Z
	 kQVvE6LVsHgnpXF7LztMu+ofHU5bfMPAzcmAO1mlITUbuwQi7qtlPOJUgqeOHIvgEu
	 /Ig1K2C0kShF+nN/2CWhaRA/lLilcdnJODPt81M1G105MCeg1TpdXB1pvuEmnHjoGm
	 NFT7gAkWTInkFP1013q+P7UlxE14FwO+bFFCJh7SPY3abQmhT4C2X86ykiENBHmhgL
	 rwg+8+TtIEVYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FB08ECAAA3
	for <ddprobe@lists.linux.dev>; Thu, 25 Aug 2022 21:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166146425231.23664.8317260950732071219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c8b8f20bbf2dc7c5898c2fc4ba0dc0f39f3ac861e9dc4cec400eccd48f5dc5
Date: Thu, 25 Aug 2022 21:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661464252
