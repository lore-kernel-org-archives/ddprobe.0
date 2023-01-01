Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E753423AA
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AC8CC433D2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672603287;
	bh=uaiZPHKKGY7Zaf4a93EUo12Q4Gnmo2F7QL43d2AIU9Y=;
	h=To:Subject:From:Date:From;
	b=LoL9KMfpWQkR/cC3GXH0viicngV39kB53xwkaTa1v1Svm91Akuy2WXIbxi/d6GudB
	 28hVN9iLhbKjRTT4H1txnuDsvHMJ0L3DYPEYqLNcx94+abFR5OzBD5P3enmM59RUF8
	 ItJaWPPG0IXAhH7gmXYyLsnzCVVCCBDQNvux4lX2CijkaNM8oGvo5RjQrY7gkock7Q
	 kS599iAp5vugq02ee5eK+39nfg5fAmR3cYD3wV0HcaAgK0J72Ds2nRKhOeo28ac2mc
	 KmSh0cJHc5atYM5EL8S3XefTk2dTq9ndvqH6cnUqkiY8CAD8HuMi3kHeN3/2edWGkC
	 8k6tj9Gfh1bWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DBCFC4167B
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 20:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167260328739.4634.12954483660138418488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef9cd6f37190514fe2f91a951749bb7eff92abbce7e308d7f9de24756d87d99f
Date: Sun, 01 Jan 2023 20:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672603287
