Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0553D64
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 18:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D27AAC433C7
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 18:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692384248;
	bh=btxEdyaYV55jViwzgUnJ8TbdYImQomJnZ/IBtkP+gdM=;
	h=To:Subject:From:Date:From;
	b=WH64oHjIuhDN5L9V1eu5LPXXoFmhjpBunE5CHts5SefX/Fmw86Dlj9f54mQySRF24
	 PQCIClKOSjTC+0dmXjwRDIYWanKqmTw3YlXS5zj1koPYxH5AnvIFbasSuoNC9Jr+oR
	 s7VVcJTeYeKDWe+SRAYwCGynz/enCi9tih2S67PlekC9d+zTavXvrGylQVQZ1XN4HZ
	 lH3jmnYXnLK7tOkifW8tZZdmdAErYSq7yZ6x8oiBHQ3Wo6UZkeivffG7RX7Lq7hd8O
	 u7w9C46NeXE9+Z42bARBA/nd8aq+OcpRivRS4XI9uUClFKwskJzpUp7eKBsJMukNPp
	 VlkEM2ozMRCQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D30EE498B
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 18:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169238424872.14145.11460000344496437095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96fda42009885376ae2779291b793d1611cdff029355201cdefb09e75dff4045
Date: Fri, 18 Aug 2023 18:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692384248
