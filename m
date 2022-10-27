Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0DC186A
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71B79C433D6
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666863054;
	bh=YbohWVSzWTTbOgswJ6ILsvh68o/mRwjlnZGxVjw968w=;
	h=To:Subject:From:Date:From;
	b=BjygjgalZCRdXAB9mZWZM21SClEcpLA5JJpij6Zm7u7ITSOTsIjL+181l5R9+lz0q
	 lverjbnPj9Pqu75wiMZ+mmLgX/2LrVC8GHUCBmhL0CyeaI3u8chlvprAbHUjvFlJkT
	 h81qKsPzu0+m+QTzD+/3iRSs/ipxeJTJw9ikEaiDL/dvtegftSAydmglfgylSJTVfv
	 /eAQtW3tYkXmxUT0cYI4jSpxEQrWLcNdPbjGN54jtRFiuLWFbTffNXWw3mwH84A9e0
	 kjR3AgFnszXvrrX/00m4QBCbVTraT01Sg/+sIX/z9dB0zAaMbvh/VAdfAQtcWh9fX1
	 I9luPK71D+snw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53CA8C67871
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 09:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166686305433.26528.5676514332232036437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdc6a2e06e916de2629c8e3ada4ed37ba3f9b28aa811c6699ee6ed14eedde0d
Date: Thu, 27 Oct 2022 09:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666863054
