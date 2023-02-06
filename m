Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 331725251
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 13:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C90C4339B
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 13:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675691165;
	bh=zdPKqKtJm87+QmOw8vpegEIEhw1bxYSGRiJtOuHFLM0=;
	h=To:Subject:From:Date:From;
	b=i6/yEGBEPgo9Wj8a8HT6CzfT01LRTkVORgOZ7j8oRcUxy16dPndbV+efEgV5DdQGm
	 EtpQYC37Woh5zEVh6S7NlutpHPJ3eVoRno9AW4VGIrBRx+0CLRWEQzu7wwJzgTjnLh
	 ES8DMdQUsnUeDyt9AB3czLlPczdV6E5FUllkCmgIreR7NdzSKhnJG0eo24sNplAujk
	 3DimEpDJiJHFr5mksmyX3LOR6HrsxDpGmOtseXZRU2hK3wSyG9kdURmTQMWkc1D9AM
	 x1toe9x/LnAMWT7Z7LptbCaI5bQY9BgRQUAzhCuTFBl8n7zEozpzWE4TOlmYwbQ0ms
	 O9qccqKZPI26g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB56C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Feb 2023 13:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167569116576.29448.5364853297937395744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1de412b289b1a5197df36bf3d5b8451ef6e1627278c4f688b61dcdcce51f5ff
Date: Mon, 06 Feb 2023 13:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675691165
