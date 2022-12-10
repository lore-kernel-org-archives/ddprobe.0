Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5B4A42
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E2E4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670634687;
	bh=DE1t4zZXe/Ue/R0LgzJWTN09uGQd/+DiV9gZOet7zDs=;
	h=To:Subject:From:Date:From;
	b=qzLga4gDQmry4GS3MHRj/sMnkynQCncQIV1QcUa4EJ2D7N4lQfq683wY1zHeTn7EM
	 FWyt5NI/VuaQV6Nuw1H1P2a7MUlJsHWABylsBY8NRsoYYBU6RHZ6pEhzd9VKd4gJje
	 w7DxQIsKo9/O5digKmt+5zrSBeVbhoonPlnVFETcU7RbeTxeNMYQTpj4bRSgTA6lDe
	 jAAu5zW5jALmYzR4LR50+DeYvl++mwQF/oypvcPdvx+xhVl4Tr9pUXHnqC81FGWzgP
	 ZELWUEij6LnQqAKxZaA9Anrhk3GzCruRPnOiWAurL8fWuMh9LWHrNarrUwbIa/Jlz7
	 +gWVQm+ey2ykg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 637CEC4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 01:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063468740.8874.17568342292199812232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d633ce7befb30cddd8971018bc60d726d25656701544cc14b5578c8bdeb8144
Date: Sat, 10 Dec 2022 01:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670634687
