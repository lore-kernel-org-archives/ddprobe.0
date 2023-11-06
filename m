Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0DB8208BD
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 13:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AxYvu139"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FEC4C433CA
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 13:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699276696;
	bh=9Dl3X/HDwzy4fa665LWM+mHGMRPlRStl32voG9mJg+Y=;
	h=To:Subject:From:Date:From;
	b=AxYvu139P5YsYyztQ/rEfWTX4qB7kb7swX05TEBfw3VdeanSxZptw9WR3SnbjmrgX
	 dbebk6RvoyOPMoUgkN1/Gx/mvXgU4zqPix84IRcbqxoLNAVmlYNSNln4yX9JptbLo1
	 v5fWS1R+PmtwUIXuj8ELOuFaQxE+PHQVQMad6J3/7RzudLQx/ffT+Ez4IY03RpwtH/
	 mdc9V9tK4KYiAMPhwttdR627uaQqO5sbk/aNwgR/isO4botrudiDKsyqgj0mj0E+Ju
	 5gYA3z+CPf4G56JvCtIPzcKoXFCW7Lolq997E+uarhyBFrlEIdt59TdXUrKxBK3tAL
	 +INbVjJRx04uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75A57C0018A
	for <ddprobe@lists.linux.dev>; Mon,  6 Nov 2023 13:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169927669647.3428.16952758479995041888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4efb1267cfaa9537f63f22e0c865e5f57b0be9d6054452c77c37bafd43f8571
Date: Mon, 06 Nov 2023 13:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699276696
