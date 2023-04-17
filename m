Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C2FF1848
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE80BC433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681716485;
	bh=wBn9o4IfBQUQofyhY57t9i92EXWBYm96Ce5985G1lJ4=;
	h=To:Subject:From:Date:From;
	b=cf0WVhwzW6AxxPW8VIzfVYYEAxd/ED58tDwlmPLSlVL+E7O3Pv9xBFYPLvruF4LQW
	 ALRstqHIuESUs+u/owbd5pB+s++IqZEt5YrUUwZYjVK9FkLCQlzH/dXTS6D6P7Tttb
	 2/t4Wm/qdprFjHE750AiNysdxp7JPP92/slDOt0TpiaKf25JN6JIACAfTxqoSvr9W7
	 pavu7ICn6W2pnzxXPBca2m/L6Nitlstap/hJID3I4thmGDSDEXw7m3XizrYjT4KP+Z
	 saG0ggeEgkN9Zkvyj9GpxijTZZa0Gz3j7YTineFNebtu5A4leGmFQ3SWewLkRxdTOo
	 SdgX5B3D2zvww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3716C77B72
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 07:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168171648572.24700.13434190590629580107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450bfa24ce9d3a912ad0cff49a606ddbb72fcd1f0d6b42af0ff795f30b398087
Date: Mon, 17 Apr 2023 07:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681716485
