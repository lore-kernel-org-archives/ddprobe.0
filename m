Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AFFD10FB
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE7CC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687310588;
	bh=xP/JFpciW6zMG2t/50bwsnG33XAimG0diW+kwEdC+E0=;
	h=To:Subject:From:Date:From;
	b=osiTxnfi6NkzQ0koCBvO5XDmNqCcbK/lvvaDKA4+6W5sAaaQefijEosBTMKQk/LH1
	 TtA60TW3o1mQdpZdVzfEN3ON4q5788SoKviBmKtoFFgSOoRtdcJHwXP4gbn7JMEXZ3
	 LG2JQck3uXUTvzAquXvtJmtSUfPi1vlTxCfh2JgjEWTDWmyqeaiUxew/zAmWX93b3Z
	 Vf+8EdP/gzL5TwBlTEFE0er1PI7xe0DvLy7z8YjYQTFk/TqMKjH/1KoHImDNWoomd6
	 w8zQ0W+v9PR7K2xqeVw75Kx/fyOAElUqQOGlH5EmMk2GKL0v+9rmuoGhfTX855XcS1
	 hsCIVwDo0g3Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9F29EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 01:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168731058871.5038.13763166596082417372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81e41df4d292c3a8d1294821c927661afda7c2e25e7c64a0bf03520dce9f421f
Date: Wed, 21 Jun 2023 01:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687310588
