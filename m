Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA7AC256D
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6C0A8C433D6
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668421254;
	bh=YP6yG3WnwYR72UL7pM3YyzsasP4nULOuNtGTuc9f6Lc=;
	h=To:Subject:From:Date:From;
	b=iTLCSLdjGMNsd0OEk8lJi2MP+IhRCip5SLndHHfBWrLxnyo6C5oCWvb/8UH2qa1PR
	 vlMyUMxHGe6Pzf1JfrRkeZW/+5u8ZVfXBJOWuuZDeHQ0a5zTSJY9r/Ca6fAqAQXrJf
	 WYq5hCjOpnlQm1ZGZiMpY5OzP51Ae1qXZXbo+Tcdl3tuzjihCK6rzzOWQkrhvpy+QH
	 yI7XoF99+I6PYWTlrBju4TmcMkEQJvvAEsrDPzT9jggCV3drcHj9DzpNPrE+Y9yFah
	 sc5DJVTlm15Jk7fFrxJtFo9HahnzIFPADQyDP1N66OcIcIOlsn/pQj+urmQ18se0jn
	 coRG0TXJhbMsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54E2DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 14 Nov 2022 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166842125434.22027.10930666158460368100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0e89f4d6a01a0710327d9c1a6570afd3872cc7b2ad272897fea2baf5893d7cb
Date: Mon, 14 Nov 2022 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668421254
