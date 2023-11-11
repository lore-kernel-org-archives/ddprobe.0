Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CAFF63AD
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHiv1iV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AD66C433C7
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699675096;
	bh=7sA2YXVkP2lPPBgpG1h6L94888fre67anbu6YGe1F/c=;
	h=To:Subject:From:Date:From;
	b=IHiv1iV6ReAinNG6HVB0pI9IbcNlOqesf3j+NzhXYT/N7OD/X7K8KKmom2T/qXKKl
	 4hQl07QJitpowQBjPaGH5qIh7eqRkUI4S2VuN+hqZxxTucAmJyNqvcuLn8LYHVHWZX
	 K7Yq4UOeXJA6QocjHzLS+QWzVXcXoZ5VCC5TjpJ6RyUVbiZ6HKDvfAVyX3PBrGmGre
	 HjnT3P9g8aAnpa/w0P9S1r7GaTQdAUJgGy8xgOUS5gOVrdQ0xeXhwmCd62+d0qsIhf
	 Mq97nPhILV0n2xdCKnMfMCdfkVjcw/F3NQadR8die+H+NgqJtmLdzSVaJrnwWiW7P0
	 PtkZ4NRIhD2NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AF41C4332F
	for <ddprobe@lists.linux.dev>; Sat, 11 Nov 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169967509640.29765.17902097927471273247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09c02916b9542276ed7dab8fc9e4272a147df20fe86d032b03e00d0e25872da7
Date: Sat, 11 Nov 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699675096
