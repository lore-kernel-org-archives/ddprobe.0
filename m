Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3D21BA3A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A7B5C433D2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673644887;
	bh=H3d++wTZCb1nKm/hpSnWuL4f13Bajnjks8dosIdOJoU=;
	h=To:Subject:From:Date:From;
	b=Qdy0eUt4Xn5aQ5UcJShrujh8MNXESU9GYlbHbmm0u2lnOceN3rbiKNCPo4RTJEEyG
	 YmC5SdFf6Og/DfNivqmAC28MtjXNi/9nhNbMj4oi1Hwn9dYjARKJS/4zRbHO9mJQal
	 S0uMcGu50Jsai+5rbiwbLt30OmJ5iNG46WHJbiF4uUHPnpJ8omplHwqst7BthVrjaT
	 FGAlG+ENZEYCfhUizapVxpmvWMujhvVyubq8ExQJhdYq8YdyBDEki2J8CxvDA+ruwL
	 O2jFLqsyUboy+KcpmB8Kvtt0xNhUZhwYjhv9RzKCLI/7Osrl3UzZKYycORVfBiYp4E
	 sbwZY4+6AgA5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63105C6379F
	for <ddprobe@lists.linux.dev>; Fri, 13 Jan 2023 21:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167364488739.20152.17499311839249639225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 674edda193389eb4c9835818f4bfe7faf51ee1884bb33fede3999c16194a27a2
Date: Fri, 13 Jan 2023 21:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673644887
