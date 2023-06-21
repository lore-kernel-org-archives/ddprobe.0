Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F2F15C97
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 08:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8521C433C8
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 08:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687337588;
	bh=oQwrj2p4ouzDrtRqQ1T50SHnL8razZp74f9X7Lh2qyY=;
	h=To:Subject:From:Date:From;
	b=T5J8BgIgfq7M+662+yp9T1TPIZXsltv40uEq18afxo0uuRBLQWwjGBF1VtHnpoMQD
	 0SptOnqCAoCi9nyLglW9AhplzsElOoZqN73GJPv9nzTZ5j3FMlaObKL1km9lkJPZEP
	 eUuCgtQJMfEGCjP9UUUuMP+ZnZLMwItaHgXWR0ZqhPXxHUDssFXEQE2eHN9PjCZvXK
	 ZJyr2R2lG7xWCTTxiXkSJDRsg0SHH6OwJ3ztWdKGjxJIbcpEtIXOtd9HEwUVQtx/yx
	 DaZlbG6AJN5PAGwZ9Nce4x3ii1MC189pMIVmr8Hj+6Z68OVXl6eu/BYoUfpHGbJbkj
	 FC/wHHjjnZiLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDEC0EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 08:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168733758876.6215.9929561911784715111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81175b0f9223be819f67e974af691460d4158e8305c444e3fb0fa37caf4285a2
Date: Wed, 21 Jun 2023 08:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687337588
