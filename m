Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606981851
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C753EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688835428;
	bh=AIn9afrWSvC7VsxBv/KE2r5cbVGFJMc8g6fe1EkR9bY=;
	h=To:Subject:From:Date:From;
	b=sX+QOmTMq7378Q+jU+m28TokCV2vnPdfeknCEdsqn+amX6bT4lLLGv96i4xP50EW4
	 EOP1ry2NCTF4Q5ekH0BrbKKc5BS6xzwq/TQsJMAbULpUaXhi5u2E9LQLmFf7QBQRv6
	 eJdg8+6VH2SooCqPUXb592h7FYa7pAooR8GtWSB3/SUQf7RIaSAg+HhkYawTBH2w/l
	 tWSIORKYbQGHixBWphUfz5i7ORWTPwaipxUdvWvh2m5m4MvTOPrV1wR0kASgG4G4Go
	 nz0Rm9Hc6v9YPQspaqAtfTQ1ma4dsu6ylcwq/+vvAZic6pzHo/9iyX7l/vN7RHdjrK
	 Nk6HXWHjqw9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC253EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 16:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168883542869.21372.5244384808909097709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e36fb43896dd09302e134e15e1436968dec15d7ba10fc60ee664e6a53f87494b
Date: Sat, 08 Jul 2023 16:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688835428
