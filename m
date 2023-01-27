Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3B17B
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3BAAC433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674798785;
	bh=B4QmUqPWCYWIIEdzIIFBAK0c4DA4jIoDqNEzH5RQZSE=;
	h=To:Subject:From:Date:From;
	b=vHAt49dRvKlSuvuEX+FRyHK+Vk8rX5IgLlMgt/imYiv9EUkeF8KgxU+bsvPGn69Dg
	 cvGaycfKRnVZ+5qPZxPtD4elml+2rNXXrL8bzJ1mJ4+YNmHDeG560eDgZ5V5J0vXux
	 sMjodqM+DC8fAhL+go4rqvKBQLJs0/xdGoNpJZ9DKyFBNXYONFVSXNlGhPTRkQLtTV
	 yKFIRq0Jk/0/9SAjQqLZW/sWe4uTa2MB/tMT940TVfmfuZHQHakPl8w6tEr+TLqr7D
	 a9oq2+shFiZwbexGj1aZ1jENJpW8qrt9RCBE6sUIWdHd0xXczvkJ+vvNZcO0hLRdu8
	 gI0VSocc2/54A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C50B5C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 05:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167479878578.28779.13093634944123732018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7138158f7ec4f456bd59bfa8e03cd98a7bc1d58da48ec2fe3da33e2353725e4
Date: Fri, 27 Jan 2023 05:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674798785
