Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354601383
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 08:47:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D44E8C4339E
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 08:47:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679302025;
	bh=UfqEp/kuwfL4UYuHnC+ZCWiJXBGs4Ss53w82XdsPuo4=;
	h=To:Subject:From:Date:From;
	b=WMrFG2is+QJy+Ty9bFL/R8kAyDsMrtILKJnEunQyOkw9wqdj+YiYSDrYahtn86JBX
	 uTwK47qDtXyfrhmOW3KLSyAKr3ODgtSg8FUCpnYYWWaGC5B0xkA6V/F0GfAt+NsQYn
	 CXlwmcfITUPSbHaduDOvcDWV2NnNCGIBRSZ9rsKWnjK314aqNIl4d53emD8KgDVngW
	 vYimhHym5oW4b7OdpNfPP62Ac/zT7K+q+AD5ym5m2szANFwXTMyLMQdZMI9ToFEu0Y
	 Mp9f54GT/GHkIOjrqTdcg/RTX3yYMzQTVMfSneDLmyJLvYz4O/b8wEQ6fyykqIJ399
	 1dfDhzWKcQm8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA319C6FD1D
	for <ddprobe@lists.linux.dev>; Mon, 20 Mar 2023 08:47:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167930202575.10091.8731802453082318279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3906ee3c00bb3527fee878e05a9f8a67dd85a10b96ce76c8c5d63dfa13b434a7
Date: Mon, 20 Mar 2023 08:47:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679302025
