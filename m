Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D156929A8
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F465C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664304053;
	bh=tUTbLbQ4yHGi2rvXsAZlLnSdQwWWQQmLt4ioVUWKkj4=;
	h=To:Subject:From:Date:From;
	b=CApY9cp7fSP9V5tRiKSSpTkk/1j4GGmKOuVt5aDcnD/ikuyJRcvLxUbZzcTDY6XCh
	 rf6s0mKNJ89p+wTVVT+7L451zdxJFrxR8ulzcuPF+30kVTelWNx4nx4Re2XfQB5cyS
	 RQY+Rx+dR0a6wM48Vu7SPVzUlRAu8Sfwivr1e2yI0li0lzAlftqwF/UbTQ69ssHAt3
	 OfcqOz2GNkseOR4MTjFXrjWLdmnvGjzaraaE9g5rL/XnQ5LuujZsHrds3AxiSgESaU
	 SD8pIGigf6bwsx7NC4j3qy3Lml9sN0D+iAgdp1kiygpEp4ctf5aGh3qbBrYHYZJMA1
	 sOQrqOcHHE/3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539E6C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166430405333.8198.6677800341333708619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9014dee82ad72bd784d9d7fe85f7fdef5984044ade7339165e3c6d3aa07542e5
Date: Tue, 27 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664304053
