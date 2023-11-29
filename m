Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1638F5398
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6+bxfKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E9D3C433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701236296;
	bh=ytLliwGoakw4UHYTVPa2cZkesrAH/W7617VYXil+SlE=;
	h=To:Subject:From:Date:From;
	b=l6+bxfKTtJklPEUtnjaSbWx0EPsvOiwoBhjj0hBsY5ZRO52k9r7BJSJwnvHrCSp7B
	 H3uee1wxK78D3gzPjhG8HYu0uoSGId3hkLzBkuVvv+wt7AxJuLQG3xH56kga7z83K8
	 QY2hLlK+pIF1HIgXGiTJrz9syyJMT4mbqjusBrGG8zwRNGtiKgGjwvnHeR9OjaMw4d
	 xC71Gij6Gm23HlqJHxXpwCuZKoHzmDdeDtWmgOlaAuKxEUCKWKlP66zo73Qv6o/Tn3
	 j8GMIkdbq9TSvW3IWPLvlTOJUgedmJvY1r8wNuAccqLIXTFPeay6AKObgPaxTETJ1w
	 0eQwG3BT4X33g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67BF6C4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170123629641.16991.12574158212036261231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6949dcc77585a9670a653e495bba643e0810b378ec0c34f58578f07a5a59a96a
Date: Wed, 29 Nov 2023 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701236296
