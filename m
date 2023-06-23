Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 725B6134C4
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:53:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDC3BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687557189;
	bh=rSmN/FOSz50whFmGFpZKWhjJi1d8fUAJwvoNOeYQcG0=;
	h=To:Subject:From:Date:From;
	b=lncDaZMKRpliYclk9Bi0/bery+T0fsrXpfDKMVizRAvkQ9MBokRcX1Uqf4XzuVcCe
	 7ItqjTpj1yerres3onmi/3CWby4uxRWz4zzc6Bph8ZpnJeAQerfRYMBlY8ZOGiGxb0
	 9rBxlorGViNz4KZJzVopszSRlUcoQr+xmXRmgJToJfOdiNDw2VzQZizjHYDrvuvSzb
	 X58hXQ40aNCzBQytk0ezmSuIuxqTS/GY8eKvv+POFz1lPOS5SAR6YG1z2XnLXfSUja
	 X9n84wdnwcN3/d1dm30Ro1bfstVJ5mon8T+OcLtPFi9xHaAK4fOLNI1M6fb4wgurzi
	 Jf0gLx8IvKX6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0C3AEB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 21:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168755718881.7924.17369852044378332486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a16324c722b4b625c29e4829ab7bb0d94c6ab09e214fb6b5836aebe81d6e7a2
Date: Fri, 23 Jun 2023 21:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687557188
