Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84B5F1865
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 08:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2AF58C433EF
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 08:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680079506;
	bh=vMSouNB6WWxVvp6v/MFJ8iLGy75jNnn055Y30A2hZVs=;
	h=To:Subject:From:Date:From;
	b=ZCdyhBF6EhlYmTy4T3XaLoyel28x4B6vb67RpOq5M2p72un7RTRBYwfj1z/ZKAuRx
	 ZbS8ip4eLtn2k1U7CpyKdQw+NqHWtFWF3kzp1ttD8VNp2jkRU5AquIFo3pxLIANRyx
	 ZNhvUdMptukX26nemoQA4Nz5w+5SShF50O0M/0a6+jwqujmx6EjMq+T4cuCFao+0tk
	 /p4bAqh8NBFb0ghZgGcqmrH7Yty9yAaf5bzbQ73gIQyLm7s8scWM+d0rDjI7H12/7A
	 P05gSTp6MSA3o+vY8YpD0HjBUlsdKueQPlKqVqgGFuR6rGdrvm7YpnLvc9pgp9a8cu
	 n7jBrhHHzYc4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 01CB2C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 29 Mar 2023 08:45:06 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168007950598.25685.9829738479862239752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cccf16b471c08c211ea86fa62b334af5ba1ffdd93bfa93e5ca4e63cd1ed1433
Date: Wed, 29 Mar 2023 08:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680079505
