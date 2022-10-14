Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F3D3205
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C131C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665759053;
	bh=WehzcKFJSI6ZU/F543ilu2FTgmM81ui1Kdydukf6y5I=;
	h=To:Subject:From:Date:From;
	b=Jz37yI8S7iDpkV0D8jPAwu/c9uw/7xZVEUOJfT48FAq25pnS8C+hzUAfOc7hn7ijL
	 ZgEtGaKHJQi3Lq5YqxKWfvoDoDu67zqWJYqV195rcIHq6zYTH72a3YEpguR7mipfHH
	 GAv05b3mvrRWMFUklu0s5d2eAmsmVqykGdmLEo/zPj5pN+wqRJwFyhLfqNRvIgDs7F
	 Uc1PdpFyRmwDxfvKISXLOFGQZ3XEcn/DUJBHV/jhu9neTI0T66riXPcV4EF//5bp2a
	 WocIHrfhnLL3lTSMbhAd2kuCsuKg/q/yyckj+/N4ySW7KaCyUR09YqCiHLebW5hcry
	 z3kPKy7bmuNyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 525AFC43219
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166575905332.25330.15111200524372794129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 344e50351d4d8631f03103f13adc92944c275e2efa4164747db55a65dedfbe73
Date: Fri, 14 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665759053
