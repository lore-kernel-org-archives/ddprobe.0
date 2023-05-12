Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CCD523D4D
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1E9AC433D2
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683918905;
	bh=N+HLUBbVRLC4V9jhZuuKcC2LFPnz9hrfPx8LM6pwpkU=;
	h=To:Subject:From:Date:From;
	b=omdwxdB7i/TQPArUvEmrsjS2aAXWomQ++QFpYdOhQYlwd54UQvXn3A5n44NPNmVse
	 XC0g4OJvw0rKxbK7/rS4xK7yu8+x9ei0oupfCFREgpQlmRYhHicKZGAji8OWzAR+up
	 eVBeeTSoBWFPhP7yHZarVrrfhyKgpqhIRVj+Fys9KtBnhrVpA6kK7iEo77WHQkROtn
	 bm3AWlu8Pe/k/0p3lvxMcpVGi+WYxttUGmBh0LjQ1/A+DiYS1EEmrK7b8X11TKRx0Y
	 nPRouQ8HI/Iih7LRDx1JaSQvnWdFTdTgw62Fr1NSM5G+tbqvODya4DPCsXIx9vOdXP
	 UrTg5+SDFMvEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1495C77B7F
	for <ddprobe@lists.linux.dev>; Fri, 12 May 2023 19:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168391890576.31299.13065631322580287477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad943a06063435cf895c6b0c3a98ef94958e1df7902c72388a968d604756f524
Date: Fri, 12 May 2023 19:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683918905
