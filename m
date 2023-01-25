Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33CB8A20
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE38C433D2
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674621185;
	bh=NhieGYKVcwmWDu4B4lglV23UQNRXLBWKvt39ZZLyPcs=;
	h=To:Subject:From:Date:From;
	b=nyJK9+6N5IJJomkLcrM24J8oGHbUHYUOQJWX2leklwvbcq5HZk9rxtDzPac1Y4Kg0
	 cXbAVQNpxj11FG5nxy4UrI/2D0i8lzHpSrqQNLwwdxj09sDkq95oZITXyRQOK5Kvi4
	 eR46t1cdL9cWLiBWEwcTXlSARClg94xNJ3SWkgE/0IS7Y6MJsveXSIN48YIfZWIte6
	 lb3nm5TjMvjO/G2kJJC6TVHqYlsmWb8J/MNYTzNJ+nGiCZLYzL54xYoFijw6FEEywx
	 WC/2Flha82/jQdlrRZtn8UKaQjFNkGj/NuY4ypepFKtpDdCCAH2jBRWph47ofSR45r
	 hFvimXUVkt9iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B382FC27C76
	for <ddprobe@lists.linux.dev>; Wed, 25 Jan 2023 04:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167462118572.28229.4918800076897778965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714231b922ce65620266b09b803aa8cf5e781a6090e3d8225d3cedf9cb695c0e
Date: Wed, 25 Jan 2023 04:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674621185
