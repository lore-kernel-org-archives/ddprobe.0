Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D97381A612
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D073C433C1
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668175254;
	bh=IjlITx281/kgUg1YmuaJ8xa/CHUiql/8CR/UvOpKRj0=;
	h=To:Subject:From:Date:From;
	b=A1b8vodB7GuTwXF+SjijIfvtyZmj0LP0VFPTS3HSp4gd0s+vEabpVqfH2S6Qd3U+I
	 xp6rTEQHrIZMflz1g1RE30zQ0xHoxqz0gOT5UFsE+pZSxE/JWO0BSIvTNgIpmIP0nI
	 65oOcOUUR95FhbTWKOHfTA9LyM9ssPRczsjswGKbXz48GwcxuJYfqv+jPQ0d+oG/y9
	 RTeFs+ZCWVu0tBX333ePIQ5ln2GZz5SXQNQNlvO8Zf7hzljnbnWXjeZBVW28pdh0AO
	 65QUzK0zvqq9SVQkW2NSCP9S85rlJn6J7B+OolMyeZtx9WlMB5HxX36lhAUTInbMxe
	 fR2YKzy4XuNig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65907C4332F
	for <ddprobe@lists.linux.dev>; Fri, 11 Nov 2022 14:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166817525440.2959.6268203844913004156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bb3ce77dccaf2efb4742fa4207cc9fd24d83016937ab41c64986f206c5b8a4d
Date: Fri, 11 Nov 2022 14:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668175254
