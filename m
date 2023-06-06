Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FEA8FBED
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:42:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE48FC433EF
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:42:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686087725;
	bh=zrwq9CZkE5ihzA5YbJQk5vtUA6mMGfLASHePnFibrR4=;
	h=To:Subject:From:Date:From;
	b=sUtcAm0WGRDtag9XGFJncoLI4WDzk2an0/U9gfovX/ghwIyggjmtoZhyIgmlIMzUI
	 ZsECOlPOsGZKjkv8cBxklD0M2CvE75eTEGIYgnwP2BWcjhYrrRZiwteOloEA4a0SOt
	 G1gwctxWDKVx3Bc4bH5Vx13XssGSkqyJtR6RMAxhMcX7Xo7MmXvqxfscn0NoQDvWlv
	 bS2UrS0K+q0cUcJ7G96prhi6D3eq/QbkYhFCmuiyQENBrBY7sYFCbwRNNOTYcNBRQs
	 NMMCac/04JKSqypr1Wh+UOM9yJZX7MXI9EST2TeoDABuZk7sxBp64RVerQx0AV1zeU
	 DGiBY1hOKwflg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B5FC7EE2F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jun 2023 21:42:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168608772574.9735.3845667573133191783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf82ca5cf404ecbdc474209664d0ce7172e2895de46531eb4dda47bb822d6ff0
Date: Tue, 06 Jun 2023 21:42:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686087725
