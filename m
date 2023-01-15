Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEEE610E3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89DC8C433EF
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673807487;
	bh=ubDAEJoKt2nNfc/Gz3FA6Xr6SogxRkhkjt6gULO3uDY=;
	h=To:Subject:From:Date:From;
	b=ur01e9/d+wK8K42hCd325vViPMjws60fUv6t9CjaUhVf7lWUtNjLsVgu3F/vaK5bZ
	 euI95rdekCh7Rlz/iSoWwBEuoINlh3OMiOsuaZzIG40v0/zTv6pJXay3SkcoCpJQrm
	 fPq8M5hgxwCqEPg3kUio75oddsmBR/V9hDMKdybdMbH8b4M5Y3trbPklWv6P/PuYYP
	 uIgGC884o0hneyMiPI0TS53fXkHX5xxyhIeInLwOtMlN9eg6I7wiGxLBQBXA0LX/in
	 Vpl8jBwFCooGT4oZQfAvirppwlbprEVyktAsvRT5HkVv3EpcWZN7kMyKTZYTwNzCDJ
	 dD2nMLxskF38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73AF2C3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 18:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167380748739.26887.14618259792318695977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 078bd5096dc25cc917c29fb5253205a18b687ecbe318d6907f914a39825c5404
Date: Sun, 15 Jan 2023 18:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673807487
