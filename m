Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4687F1308A
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C40EEC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687888988;
	bh=ChCZnRCX++ZSaUyVdsqDA08kt42LLf0RG3LZ9flYepk=;
	h=To:Subject:From:Date:From;
	b=Sq13dSEFNiCVVnKMQ+S6h8fVTUz4TFpd4ZC51B94I+QF4TNaV7t40IMZRpghKSDR3
	 moHC4UXevoLJDe9kco1xsHAmHaEx9EqG6sDPJJ1AShK4VhCgwhU+FtDkRy8vNSv2fJ
	 Lobi3d6PD8SuOYTdKa4wQo5LY4hmUzSBGAPXC8+whXiQr1c3JVS/gecTEs493sO5Hn
	 AH9OmnB+68CCXRo6XrYkXcb7lfCQZZARttdKUoZhn/ia6iJy8ZlSf+ggeEARrveiSq
	 puk2IVOw2oOJyd6caCO8QVJsO/DoRXxajStlLW7GZVYUN2FzhRzuycizrakzKOIqs/
	 fSyhcbsG1E2AA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB06EEB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 18:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168788898868.8405.16975761126369968859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74326a909301b3b95b29365f63abc31badeeea0780b588acda0e22f54c144dca
Date: Tue, 27 Jun 2023 18:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687888988
