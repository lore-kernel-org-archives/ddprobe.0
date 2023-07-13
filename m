Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5716FB1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 14:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D57C433C7
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 14:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689257348;
	bh=iYQLSpGkf14n1DF4M0XI4r2Hs6fLkscg0iKnnyLv8Ps=;
	h=To:Subject:From:Date:From;
	b=muLcSLLXlgECzKSjk7GcpZmeUhdDuU3C6cgiyGbaRIMe/6SnKc40N4KzEtaUdaHmq
	 6BCpZycP+Ydl7dNuKj9CDYHUUXB6ru0ROQHDiu4EbKJgcK9vuLQY6mkHuZRHVT4MPC
	 mK9RA96WYm+RD14Eb8d0oP1RAt9PpLT2h+X+SAelOev8X1ndUATtMSj/44QA4k2jQH
	 0cakP9xP9q4qqUcXtD27P8mWJ+P5Fb8jSxkWH1QKJ46j0iofZhZJjkhKauLIK0N82m
	 IF9l7dN/ViO6qJz9dpKux9cYaEuRbGsG+ywWA6YK+7e4an4WLxx7TB3D4kmzAmqXkd
	 21N3sWh4R426Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BD3C001DD
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 14:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168925734873.2305.1603276163266970520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3960198d67766d441611c5a0d93b97c132722c6c1328ed37a2036ffc8e7baeb
Date: Thu, 13 Jul 2023 14:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689257348
