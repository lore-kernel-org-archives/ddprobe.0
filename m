Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2427120F8
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 13:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51F6C433EF
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 13:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679837525;
	bh=5Fog+LOTQbWH08TW4BqWixxL4lbZsrglt58e/dr/I8w=;
	h=To:Subject:From:Date:From;
	b=J/bjbRGMkPE2ZSver3QoK1s4vUGihcT4iLvwBDe5TGBgWzQJVjVg9sKJ2Voky/Qau
	 UUwA8dUuF2lA35MnQpeUbDP4cp8pUNvNGIRtY/6TITgLFLsoWcqwubPGWyfDzRSwXc
	 jGIV5GbiU2ptRT8tyoIk9gVcfa+1R76dyWTPy7EGYl+dJ86p5ARMRf9hWM3RXWVH9U
	 PIlnLR9rEUSCPDnFAnLuz3Bb1nrj73r9UPXf2sAMGWQZURX9uc7lJC5kiaOumf9SEs
	 XhbYJeoRR9aHt/QfP/CaWd3uOjBKEhmz0mdoAo+aqCzb0HT3R57td3eWFbJoPIQJot
	 lfGh/O6pum0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9ED2C6FD1C
	for <ddprobe@lists.linux.dev>; Sun, 26 Mar 2023 13:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167983752573.30034.15754644919489942266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73477228f6e9b150cc86cf368b70cc80b2f69cb367606107c061182359d7e2ff
Date: Sun, 26 Mar 2023 13:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679837525
