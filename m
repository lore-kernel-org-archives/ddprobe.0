Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E89053B8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouCc6Rxr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 94439C433C8
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699513096;
	bh=FdUfn+4D8Jl3z28hbsBiKXAyBQFJ0IrKqggfJ+L/b8I=;
	h=To:Subject:From:Date:From;
	b=ouCc6RxrpUO33pkA2+gLrZffOsN5X7InTDxj4C+XbuYPIv7E0C/JEVvs31XgnyOyY
	 wT79QiTnROqY69vovri+3hLKQ5pJ4JUnDHsbrydszCzefyvYdM4YP5Hr2uLRqgGgBo
	 klvUKhvGskdVw5xDUbdA0CBgu9uBetBkJWdhb1ZVRsAaj0t6r8WglvkeaQxtLXKcej
	 GLKHDO8/RTkYuf2b+fh1ojeykPaC8L+LgFTpxK1s0kOTkFBoub44iNG/34SfZoDDCD
	 k9w23Cq/Bg494rRgb8rDrdhIyDsdvS+tQDVaNvNO5QEgOSwF8bdg8XLHXy7OdocYzO
	 cfYw+4HEbvK/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 76937C4332F
	for <ddprobe@lists.linux.dev>; Thu,  9 Nov 2023 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169951309643.8393.13224983666982514527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090b39c6b75e8a25f0b696f71a3ddd755f1faa7004005fbf12d8f88008c936ef
Date: Thu, 09 Nov 2023 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699513096
