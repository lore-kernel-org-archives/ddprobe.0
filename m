Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634F311C8B
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 17:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC46CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 17:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689011828;
	bh=kwWG/LWK3YeEUw9clhP9lgLGZQaUyJOxCFYfO38Zivc=;
	h=To:Subject:From:Date:From;
	b=KlKnJJNnR+35DN+siSmoh1E69iwZpwxJ6NwDr0eEMApeaqtow61bW+O9c1T88OTdQ
	 l9o1MnGO3fINEjqVr8Z3FQUzIAnko51VvLGeJS+TvOopBGGHyYux0AGyMaYC2jqhzJ
	 gbk0Y6bjRwm835YYKADOP1jA/4pVmHBPdxYBsxfCct9gRVTx9jQlOOGB2ZtETF/SID
	 yxvAmnx4aNX8XAQcLn1Vn1Cwg4sLZhmRDHFhIs6bjpt6xbGmS4xq61Jr8wA9jYfmQw
	 oKKMCkaHWyDA4JbPooZTyRb4JQ5xSwErXFMjSwri2ZDq6yQLnfqcvVG0xSFZvrr25u
	 mPGuz+TQp02/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B179AEB64DA
	for <ddprobe@lists.linux.dev>; Mon, 10 Jul 2023 17:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168901182871.16624.15707427666280274762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e0daa592ccea0b7624e92650414c5dcc9b67599992370f6ce4c4c18deadc6ba
Date: Mon, 10 Jul 2023 17:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689011828
