Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CD47E
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83D9CC433EF
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672537287;
	bh=gzH6wIqySHcb/fHP0nltsyIFMqvgsHO+D7LCYW9ljq0=;
	h=To:Subject:From:Date:From;
	b=dBWtA3j+MZOUt1Af0FUGQwlELFrMvehzzn8bNoCyRObebKGvONBAQ4rqDpXytZ9M+
	 ei1BDzK6r5DEv/xuKpPcr6wfdoyG18it5GCDxJO36/rHmpvVovN3YqAK2gp3ZDBVAS
	 A9qZVoQtvPhHQEUP1H37CSikuwG7vE4kAyvWbINQmPEqk4sKE2PnxmPgoBg8RTtedu
	 HLPYJvnr38PTfHFSapM85uQJIxM96eCN1pOlEo+hwlqRrYYk51VqN1EgPx/2b8pJs3
	 X2A+MZBaxnIOYi7wlHdmMpVDSNQGP7MIukZbLq3uS7nAm1ASyHgoPm/pjGZQFP2/Xz
	 mlrwSpotMkKrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67FDCC4332F
	for <ddprobe@lists.linux.dev>; Sun,  1 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167253728741.3672.9827099961730159976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7ad076a6fac542173c11bf14045da64866517b81a4eab056d569dbf4add6df
Date: Sun, 01 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672537287
