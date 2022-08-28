Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71CD538C
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88E06C433D6
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661728252;
	bh=M/oHazih2eGeKWFGaCCcQAw1G2+DNf5qKsoqPOuGmKU=;
	h=To:Subject:From:Date:From;
	b=uiNE4XlZj3kABFJuJ6XV2TZcTFE9lGhVIfixooeAiD9MCGDz3iv6Y3YMOEsT2tO+0
	 OkNWXnvMjpZi1CAKpAT+aTSsKDGvzmrT5TXoXDSHyqAV5vSmSPdjb8NFQIwOzK3ZGC
	 GG9uGIhSfY9MmLZERnKxmfuc/d058EKou/gTDddYGDYV7KaR1qg8NoIGaUs0mGqn17
	 kgzTSmNc3ofRU7cbtRUVT9qhYwYUNta22p0fBcLnO7sMHeP9KYR5jRSCJipqNGN7Bk
	 CgYQkkfpjZ5DO0U7ZUZjLMF0ysVPN1IDSo3Ld3yqUcRAZcI058fwT/1nZP9qXTwPEL
	 O2i3tYJcOdmfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69324ECAAA2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 23:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166172825237.32421.936617935851799724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 132aa209bb2d386e432a087246f8edeb350caa37ce2e90659e64ba33d8865035
Date: Sun, 28 Aug 2022 23:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661728252
