Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA2C79C3
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95374C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672330287;
	bh=TgOlZna5R3En9J/f3z9w4H+t552uOlk9AxhMEFO2Ixg=;
	h=To:Subject:From:Date:From;
	b=hi+jW0h20+7SFNBMCzc6dqunKHQkLERjKs6gbczjCLAkGSOAX6SbSg3Wu1zymqHrA
	 alVFcPjCAbjL9Klf4e1u1ocRuOoP/sEzyuS0mRlE57sWQQaNkXUwktkcCzqfLnOULD
	 ouzXfPvsHGmd65kuqVtjbpN3qxRtr9uh+qP+QBZQgRO4+McFJ8sLAxQ9hQaaQQwI4p
	 1rzahKZL4kwehnQDddrmgiMk5sxUyoFfqXlZQ/DHC03xnKi6jZOvGvWglr4HjK0ItV
	 walRaMIoeyARk1ZMMuXwMfgyAWmjCTDTGAW2eAbIfp4kUueYdWpHA2dEmtAwoOLget
	 e5jJ6floguFQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76491C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167233028747.16466.10840969230732796707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c36d880a3bab2e50146053d1b1c9383e17d03a66b196cb6a969a2fd02810c42f
Date: Thu, 29 Dec 2022 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672330287
