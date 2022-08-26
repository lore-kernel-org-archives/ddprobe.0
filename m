Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA90023A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A52FC433D7
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661494852;
	bh=IG59p/KvT/MZwhZiOJezmyhaa+V55e6UgUOVlwwB2so=;
	h=To:Subject:From:Date:From;
	b=IN+8PNID2MiTWD1WCg/QpOiZSKydhmREnHT/7AoJSnuMfqGvEtnCTZGw49W5a0+rg
	 Xl0y9eAh0p0GF0E07xwhQnK8zT1hbXCkSaJWIay5+xqlzrd1gShuZ0F8SYCf0TEJOV
	 jo5UOU97ncyQ/Whhb3cGw7ffh7YiR1/Q1wzt7p+31SbKYzVEexS9m9AYcEX+xtM/Ul
	 kmPH5WLGhEUgaK4KAwGKgFKRUg/lSGerMDbPyimiFbYvS1Izsly0geXcNH1221Dngv
	 yTLJUc7yaNayymwXGgd5XqZwW1gmg1V2cu+9BxZkNb4qIm+SqQZ4cFqWQEdTcM54+Z
	 mZ8ZXc0Deb+Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53AC5ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 06:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166149485233.722.4724043440863179151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8417ce333a5e9f7bd5d1807c3931c432d283d0873cf117f6e0a671bd6c85947
Date: Fri, 26 Aug 2022 06:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661494852
