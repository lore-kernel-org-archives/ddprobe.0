Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10261112
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A385FC433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673145087;
	bh=7EUl9NDZRlUr1YRQeDfVqEr6QNLx1krj2BjD+CG2YRM=;
	h=To:Subject:From:Date:From;
	b=YKMP86bbwr8pHv5WRxFcp/1dyy93Mi6VnhTLBm8QrG7sNGs9dL4Og+1upu9eRiHvU
	 KEd8RimoiwBnytJYyzvFcW2vlbrNsL9lbH+Z7Qj8GjuUB0vnWJL7+bdy9cBuoq+Rzb
	 UzhdzH5iH0HFsMbtE5mDwqLiqzCv/uuA+kxFSSrnmXUT/yJnJ3cDQZzEmts7rWo9vK
	 KbbcApYPtXVYea4eZ0n/avK1PccoeB6VO8WdTUjbOnZZjJPXPC0LS0ARdr6zwreaqp
	 n62yC2+DC18mMSnaN9c8CESbw9KUzmh92yORfdJdRezghQECx1OkJJz1utsk46xP0P
	 l9hGBcrg92lsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D9B6C54EBC
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167314508749.7981.2437054787515058820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a097789ee870744623785749a96dc00b9c8dd73cb708af8bdc23204fe127eed1
Date: Sun, 08 Jan 2023 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673145087
